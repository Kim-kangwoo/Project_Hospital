package com.project.hospital.common;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class FailoverRoutingDataSource2 extends AbstractRoutingDataSource {


	private static final int MAX_FAILCOUNT = 2;
	private static final int RECHECK_TIME = 10;
	private final DataSource primaryDataSource;
	private final DataSource backupDataSource;
	
	private AtomicInteger failCount = new AtomicInteger(0);
	private AtomicBoolean backupFlag = new AtomicBoolean(false);
	
	@Autowired
	public FailoverRoutingDataSource2(DataSource primaryDataSource, DataSource backupDataSource) {
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
			System.out.println("[FailoverRoutingDataSource] failCount 증가");
			return "backup";
		}
		 
	}
	
	/*
	 * 1. 백업 커넥션 성공 시 LookupKey 메서드에서 어떻게 구분해서 backup으로 보내 줄 것인가 (삼항연산자?)
	 * 2. 백업 커넥션도 false 어떻게 처리 할 것인지 서버오류 500으로 처리 할 테지만 페이지 전환을 따로 만들 것인지 
	 * 3. 백업 커넥션으로 메인을 시작할 때 1000초 이후에 기존 failCount, backupFlag 초기화 (스레드 사용해야하나?)
	 */
	
	private boolean isPrimaryDbAvailable() {
		
		if (failCount.get() >= MAX_FAILCOUNT) {
			
			// 3번 이상 반복적으로 메인 서버에 접속이 되지 않을 시 백업 서버로 지속적인 요청
			try (Connection conn = backupDataSource.getConnection()){
				
				backupFlag.set(conn.isValid(2));
				
				return backupFlag.get();
						
			} catch (SQLException e) {
				System.out.println("[backupDataSource] 오류 : " + e.getMessage());
				return false;
			}
		} else {
			
			try (Connection conn = primaryDataSource.getConnection()){
				
				return conn.isValid(2);
				
			} catch (SQLException e) {
				
				System.out.println("[primaryDataSource] 오류 : " + e.getMessage());
				return false;
			}
		}
	}
	
	// 10초 지난 후 다시 시도
	private void PrimaryDataSourceCheck() {
		
		int coreCount = Runtime.getRuntime().availableProcessors();
		ScheduledExecutorService ses = Executors.newScheduledThreadPool(coreCount * 2);
		failCount.getAndIncrement();
		
		ses.schedule(() -> {
			
			failCount.set(0);
			backupFlag.set(false);
			System.out.println("스케줄러 실행 완료");
			
		}, RECHECK_TIME, TimeUnit.SECONDS);
		
		ses.shutdown();
	}
	
	
	// 커넥션 연결
	private boolean connectDb (DataSource datasource) {
		
		// 3번 이상 반복적으로 메인 서버에 접속이 되지 않을 시 백업 서버로 지속적인 요청
		try (Connection conn = datasource.getConnection()){
			
			backupFlag.set(conn.isValid(2));
			
			return conn.isValid(2);
					
		} catch (SQLException e) {
			System.out.println("오류 : " + e.getMessage());
			return false;
		}
	}
	
}
