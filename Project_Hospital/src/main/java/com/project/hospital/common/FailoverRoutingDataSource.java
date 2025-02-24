package com.project.hospital.common;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class FailoverRoutingDataSource extends AbstractRoutingDataSource {


	private static final int MAX_FAILCOUNT = 3;
	private static final int RECHECK_TIME = 2;
	private final DataSource primaryDataSource;
	private final DataSource backupDataSource;
	
	private AtomicInteger failCount = new AtomicInteger(0);
	private AtomicBoolean backupFlag = new AtomicBoolean(false);
	
	@Autowired
	public FailoverRoutingDataSource(DataSource primaryDataSource, DataSource backupDataSource) {
		super();
		this.primaryDataSource = primaryDataSource;
		this.backupDataSource = backupDataSource;
	}

	@Override
	protected Object determineCurrentLookupKey() {
		
		if (isPrimaryDbAvailable()) {
			
			if (backupFlag.get() && (failCount.get() == 2)) PrimaryDataSourceCheck();
			
			return (backupFlag.get()) ? "backup" : "primary";
			
		} else {
			
			failCount.getAndIncrement();
			backupFlag.set(true);
			System.out.println("[FailoverRoutingDataSource] failCount 증가");
			sendEmail();
			return "backup";
		}
	}
	
	/*
	 * 1. 백업 커넥션 성공 시 LookupKey 메서드에서 어떻게 구분해서 backup으로 보내 줄 것인가 (삼항연산자?)
	 * 2. 백업 커넥션도 false 어떻게 처리 할 것인지 서버오류 500으로 처리 할 테지만 페이지 전환을 따로 만들 것인지 
	 * 3. 백업 커넥션으로 메인을 시작할 때 1000초 이후에 기존 failCount, backupFlag 초기화 (스레드 사용해야하나?)
	 */
	private boolean isPrimaryDbAvailable() {
		
		// 3번 이상 반복적으로 메인 서버에 접속이 되지 않을 시 백업 서버로 지속적인 요청
		return (failCount.get() >= MAX_FAILCOUNT) ? connectDb(backupDataSource) : connectDb(primaryDataSource);
			
	}
	
	// 2시간 지난 후 분기문 Count 초기화
	private void PrimaryDataSourceCheck() {
		
		int coreCount = Runtime.getRuntime().availableProcessors();
		ScheduledExecutorService ses = Executors.newScheduledThreadPool(coreCount * 2);
		failCount.getAndIncrement();
		
		ses.schedule(() -> {
			
			failCount.set(0);
			backupFlag.set(false);
			System.out.println("스케줄러 실행 완료");
			
		}, RECHECK_TIME, TimeUnit.HOURS);
		
		ses.shutdown();
	}
	
	
	// 커넥션 연결
	private boolean connectDb (DataSource datasource) {
		
		// 3번 이상 반복적으로 메인 서버에 접속이 되지 않을 시 백업 서버로 지속적인 요청
		try (Connection conn = datasource.getConnection()){
			
			return conn.isValid(2);
					
		} catch (SQLException e) {
			System.out.println("오류 : " + e.getMessage());
			return false;
		}
	}
	
	// 백업서버 사용 시 관리자에게 메일 발송
	private void sendEmail() {
		
		String host = "smtp.gmail.com";
		String to = "dlduq5879@gmail.com";
		
		// ConfigLoader를 사용해서 이메일과 비밀번호 불러오기 (보안)
		String username = ConfigLoader.getProperty("smtp.email");
		String password = ConfigLoader.getProperty("smtp.password");
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
		    protected PasswordAuthentication getPasswordAuthentication() {
		        return new PasswordAuthentication(username, password);
		    }
		});

		try {
			
		  Message msg = new MimeMessage(session);
		  msg.setFrom(new InternetAddress(username));
		  msg.setRecipients(Message.RecipientType.TO,
		                   InternetAddress.parse(to));
		  msg.setSubject("Primary Server DBConnection Error!!");
		  msg.setText("Primary Server DBConnection Error Please check Primary Server From FailoverRoutingDataSource.class");
		  
		  Transport.send(msg);
		  
		} catch (AddressException e) {
			System.out.println("[AddressException] 오류 : " + e.getMessage());
		} catch (MessagingException e) {
			System.out.println("[MessagingException] 오류 : " + e.getMessage());
		} 
		
	}

}
