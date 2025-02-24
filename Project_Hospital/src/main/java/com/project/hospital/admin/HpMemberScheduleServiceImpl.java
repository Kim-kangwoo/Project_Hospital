package com.project.hospital.admin;

import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.hospital.admin.dto.ChangeDateListDTO;
import com.project.hospital.admin.dto.HpMemberScheduleDTO;
import com.project.hospital.reserve.ReservationService;
import com.project.hospital.reserve.opening.OpeningTimeService;
import com.project.hospital.reserve.timetable.TimetableService;
import com.project.hospital.vo.OpeningTimeVO;
import com.project.hospital.vo.ReservationVO;
import com.project.hospital.vo.TimetableVO;

@Service
@Transactional(readOnly = true)
public class HpMemberScheduleServiceImpl implements HpMemberScheduleService {

	
	private final ReservationService reservService;
	private final TimetableService timeService;
	private final OpeningTimeService openTimeService;
	
	@Autowired
	public HpMemberScheduleServiceImpl(ReservationService reservService, TimetableService timeService,
			OpeningTimeService openTimeService) {
		super();
		this.reservService = reservService;
		this.timeService = timeService;
		this.openTimeService = openTimeService;
	}
	
	/*
	 *  선택한 의료진 스케줄 반환
	 */
	@Override
	public List<HpMemberScheduleDTO> findSchedule(String drId, String date) {
		// 입력받은 date 파싱
		String[] dates = date.split("-");
		
		LocalDate thisMonth = LocalDate.of(Integer.parseInt(dates[0]), Integer.parseInt(dates[1]), 1); // 선택된 월 
		LocalDate nextMonth = thisMonth.plusMonths(1); // 선택된 월 다음달
		
		// 선택된 월 과 다음 달의 일수
		long between = ChronoUnit.DAYS.between(thisMonth, nextMonth);
		
		// 전송할 리스트 객체 생성 
		List<HpMemberScheduleDTO> resultList = new ArrayList<HpMemberScheduleDTO>();
		
		// 시간 출력 => 오전, 오후 나누기 위해 추출
		List<TimetableVO> timeList = timeService.getList();
		List<TimetableVO> amTimeList = new ArrayList<TimetableVO>();
		List<TimetableVO> pmTimeList = new ArrayList<TimetableVO>();
		createAmPmList(timeList, amTimeList, pmTimeList);
		
		// 의료진id, 검색조건의 date에 해당하는 진료시간표 추출
		List<OpeningTimeVO> openTimeList = openTimeService.getListByDrIdAndDate(drId, date);
        
        // 선택월과 다음달 사이의 일수를 통해 1 ~ 마지막일 까지 객체 생성
        for (int i = 0; i < between; i++){
            LocalDate localDate = thisMonth.plusDays(i); // 반복문 진행하며 하루씩 증가
            
            HpMemberScheduleDTO resultDto = new HpMemberScheduleDTO(); // 빈 객체 생성
            
            // 해당 날짜의 정원초과가 모두 일 경우 바꿔 주기 위한 셋팅
            Set<String> amCheck = new HashSet<String>();
            Set<String> pmCheck = new HashSet<String>();
            
            // 해당 의료진의 진료시간표
    		for (OpeningTimeVO otVO : openTimeList) {
    			
    			// 날짜가 같은 경우에는 가지고 있는 시간표 추출 
    			if (otVO.getYearDate().equals(localDate.toString())) {
					// 오전 시간대 추출
					if(otVO.getTimeType().equals("오전")) {
						resultDto.setAmOtId(otVO.getOtId());
						resultDto.setAmStatus(otVO.getOtState());
						amCheck.add(otVO.getOtState());
						
					} else if (otVO.getTimeType().equals("오후")){ 
						// 오후 시간대 추출
						resultDto.setPmOtId(otVO.getOtId());
						resultDto.setPmStatus(otVO.getOtState());
						pmCheck.add(otVO.getOtState());
					} 
    			} // 날짜가 같은 경우 추출 
    		} // 해당 의료진의 진료시간표 반복문
    		
    		/**
    		 *  해당 날짜의 모든 상태가 정원초과이면 정원초과 표시 아닐 경우 정상진료
    		 *  휴진이 포함되어있으면 그냥 진행
    		 */
    		if (amCheck.size() == 2) {
    			
    			if(amCheck.contains("정원초과")) {    				
    				resultDto.setAmStatus("정상진료");
    			}
    		}
    		
    		if (pmCheck.size() == 2) {
    			
    			if(pmCheck.contains("정원초과")) {    				
    				resultDto.setPmStatus("정상진료");
    			}
    		}
    		
    		resultDto.setDate(localDate.toString()); // 날짜 셋팅
    		resultList.add(resultDto); // 반환할 리스트에 dto 담기
    		
        }// 선택월과 다음달 사이의 일수를 통해 1 ~ 마지막일 까지 객체 생성 반복문
        
        // drId, date를 이용해 예약  otID 리스트 추출
        List<ReservationVO> reserveList = reservService.getOtIdTimeIdListBy(drId, date);
        
        // 예약리스트에서 otId 추출해서 결과 리스트에 추가
        for (int i = 0; i < between; i++){
        	
        	HpMemberScheduleDTO resultDto = resultList.get(i);
        	String inputDate = resultDto.getDate().substring(5);
        	
        	// 해당일에 맞는 오전,오후 otId
        	String amOtId = resultDto.getAmOtId();
        	String pmOtId = resultDto.getPmOtId();
        	
        	// 중복 otId를 key값으로 잡아 timeIdList 매핑
        	Map<String, List<String>> reservMapper = createReservMapper(reserveList);
        	List<String> amTimeIdList = reservMapper.get(amOtId);
        	List<String> pmTimeIdList = reservMapper.get(pmOtId);
        	
        	// 예약이 없는 경우 고려해야 한다
        	for (TimetableVO vo : amTimeList) {
        		
        		String time = vo.getTime();
        		
        		// 예약이 있는 경우
        		if (amTimeIdList != null) {
        			if(amTimeIdList.contains(vo.getTimetableId())) {
            			time = inputDate + " " + time + " &#9675;";
            			resultDto.addAmReservList(time);
            		} else {
            			time = inputDate + " " + time + " &#9679;";
            			resultDto.addAmReservList(time);
            		}
        			// 예약이 없는 경우
        		} else {
        			time = inputDate + " " + time + " &#9679;";
        			resultDto.addAmReservList(time);
        		}
        		
        	}
        	
        	// 예약이 없는 경우 고려해야 한다
        	for (TimetableVO vo : pmTimeList) {
        		
        		String time = vo.getTime();
        		// 예약이 있는 경우
        		if (pmTimeIdList != null) {
        			if(pmTimeIdList.contains(vo.getTimetableId())) {
            			time = inputDate + " " + time + " &#9675;";
            			resultDto.addPmReservList(time);
            		} else {
            			time = inputDate + " " + time + " &#9679;";
            			resultDto.addPmReservList(time);
            		}
        			// 예약이 없는 경우
        		} else {
        			time = inputDate + " " + time + " &#9679;";
        			resultDto.addPmReservList(time);
        		}
        	}
        	
        } // 반복문 끝
		return resultList;
	} // 스케줄 호출 메서드 끝

	/**
	 *  수정 스케줄 업데이트
	 */
	@Override
	@Transactional(rollbackForClassName = {"SQLException", "IllegalArgumentException", "NullPointerException"})
	public List<String> updateSchedule(ChangeDateListDTO changeDataDto) {
		
		/**
		 *  0. 예약 조회 
		 *  1. 해당하는 날짜에 status가 있으면 진행
		 *  2. insert인지 update인지에 따른 분기 구문 진행
		 *  3. am pm에 따른 otID 파싱 후 진행
		 */
		// 클라이언트에서 전달받은 데이터 추출
		List<Map<String, Object>> list = changeDataDto.getChangeDateList();
		
		// 전달받은 drId
		String drId = changeDataDto.getDrId();
		
		// 전달받은 선택 연도와 월
		String selectYearMonth = convertStringValue(list, 0, "date").substring(0, 7);
		
		// // 날짜 1 ~ 최대 31 리스트 생성
		List<String> days = createDays(list);
		
		// 진료시간표 테이블 데이터 추출 (drId, 선택월)
		List<OpeningTimeVO> openingList = openTimeService.getListByDrIdAndDate(drId, selectYearMonth);
		
		// key : 날짜 / value : otIdList Mapper 생성 [openingTime 테이블 기반]
		Map<String, String> amOtIdMap = createAmOtIdMapper(days, openingList);
		Map<String, String> pmOtIdMap = createPmOtIdMapper(days, openingList);
		
		// 예약테이블 OT_ID 리스트 추출
		List<String> reservOtIdList = reservService.getOtIdListByDrIdAndDate(drId, selectYearMonth);
		
		// 클라이언트에 반환할 일정 리스트, 중복값 X 
		Set<String> validateDateList = new LinkedHashSet<String>();
		
		
		// 메인 진행하기 전 예약 검증 
		for(int i = 0; i < list.size(); i++) {
			
			// 날짜 추출 
			String date = convertStringValue(list, i, "date");
			// am,pm flag 추출
			boolean amFlag = Boolean.valueOf(convertStringValue(list, i, "amFlag"));
			boolean pmFlag = Boolean.valueOf(convertStringValue(list, i, "pmFlag"));
			String timeTypeFlag = "";
			
			// 전달 받은 리스트의 해당하는 날짜의 OtId 리스트
			String amOtId = amOtIdMap.get(date);
			String pmOtId = pmOtIdMap.get(date);
			
			// 전체 리스트 돌며 예약 되어있는 리스트 날짜 반환, 오전/오후 구분
			if (amFlag) {
				
				timeTypeFlag = "AM";
				validateReserv(reservOtIdList, amOtId, validateDateList, date, timeTypeFlag);
			}
			
			if (pmFlag) {
				
				timeTypeFlag = "PM";
				validateReserv(reservOtIdList, pmOtId, validateDateList, date, timeTypeFlag);
			}
		}
		
		// validateDateList 비어있으면 검증 통과 아니면 실패
		if (!validateDateList.isEmpty()) {
			
			List<String> responseDataList = new ArrayList<String>(validateDateList);
			return responseDataList;
		}
		
		
		// [메인] insert, update 진행
		for(int i = 0; i < list.size(); i++) {
			
			// 날짜 추출 
			String date = convertStringValue(list, i, "date");
			// am, pm flag 추출
			boolean amFlag = Boolean.valueOf(convertStringValue(list, i, "amFlag"));
			boolean pmFlag = Boolean.valueOf(convertStringValue(list, i, "pmFlag"));
			
			// 오전
			String amInsert = convertStringValue(list, i, "amInsert"); 
			String amUpdate = convertStringValue(list, i, "amUpdate"); 
			
			// 오후
			String pmInsert = convertStringValue(list, i, "pmInsert"); 
			String pmUpdate = convertStringValue(list, i, "pmUpdate"); 

			// 오전 / 오후 구분 삽입, 업데이트 진행
			if (amFlag) {
				
				if (!amInsert.equals("null")) {
					
					openTimeService.insertSchedule("오전", amInsert, date, drId);
				}
				
				if (!amUpdate.equals("null")) {
					
					openTimeService.updateSchedule("오전", amUpdate, date, drId);
				}
			}
			
			if (pmFlag) {
				
				if (!pmInsert.equals("null")) {
					
					openTimeService.insertSchedule("오후", pmInsert, date, drId);
				}
				
				if (!pmUpdate.equals("null")) {
					
					openTimeService.updateSchedule("오후", pmUpdate, date, drId);
					
				}
			}
			
		} // [메인] 
		List<String> responseDataList = new ArrayList<String>(validateDateList);
		return responseDataList; // 빈 리스트 반환
	} // updateSchedule 메서드 끝
	
	/**
	 * 편의 메서드
	 */
	private Map<String, List<String>> createReservMapper(List<ReservationVO> reserveList) {
	
		Map<String, List<String>> mapper = new HashMap<String, List<String>>();
		
		if (!reserveList.isEmpty()) {
			
			for (ReservationVO vo : reserveList) {
				List<String> timeIdList = new ArrayList<String>();
				
				// 첫 데이터 입력
				if (mapper.isEmpty()) {
					timeIdList.add(vo.getTimetableId());
					mapper.put(vo.getOtId(), timeIdList);
					
					// 기존과는 다른 OtId
				} else if (mapper.get(vo.getOtId()) == null) {
					timeIdList.add(vo.getTimetableId());
					mapper.put(vo.getOtId(), timeIdList);
				} else {
					// 기존 것 추가한 상태로 교체
					timeIdList = mapper.get(vo.getOtId());
					timeIdList.add(vo.getTimetableId());
					mapper.replace(vo.getOtId(), timeIdList);
				}
			}
		}
		
		return mapper;
	}
	
	
	// 오전, 오후 타임 나눠주는 메서드
	private void createAmPmList(List<TimetableVO> timeList, List<TimetableVO> amTimeList, List<TimetableVO> pmTimeList) {
		
		for (TimetableVO vo : timeList) {
			
			if (vo.getTimeType().equals("오전")) {
				amTimeList.add(vo);
			} else {
				pmTimeList.add(vo);
			}
		}
		
	}
	
	
	// 예약이 존재하는 지 검증
	private void validateReserv(List<String> reservOtIdList, String otId, Set<String> validateDateList, String date, String timeTypeFlag) {
		
		// 리스트에 인풋할 date
		String inputDate = "";
		
		// 예약이 있는 경우만 실행
		if (!reservOtIdList.isEmpty()) {
			
			if (reservOtIdList.contains(otId)) {
				
				if (timeTypeFlag.equals("AM")) {
					inputDate = date + " 오전";
				} else {
					inputDate = date + " 오후";
				}
				validateDateList.add(inputDate);
			}
		}
		
	}
	
	// 날짜 리스트 생성 1 ~ 31
	private List<String> createDays(List<Map<String, Object>> list) {
		
		List<String> days = new ArrayList<String>();
		
		for(Map<String, Object> day : list) {
			
			String input = String.valueOf(day.get("date"));
			days.add(input);
		}
		
		return days;
	}
	
	// list 값 string 변환 메서드
	private String convertStringValue (List<Map<String, Object>> list, int index, String key) {
		
		return String.valueOf(list.get(index).get(key)); 
	}
	
	// 날짜에 따른 amOtIdMapper 생성
	private Map<String, String> createAmOtIdMapper(List<String> days, List<OpeningTimeVO> openingOtIdList) {

		Map<String, String> otIdMap = new HashMap<String, String>();
		
		for(String day : days) {
			
			for(OpeningTimeVO otVO : openingOtIdList) {
				// 날짜별 otID 그룹핑
				if(otVO.getYearDate().equals(day) && otVO.getTimeType().equals("오전")) {
					otIdMap.put(day, otVO.getOtId());
				}
			}
			
		}
		
		return otIdMap;
	}
	
	// 날짜에 따른 pmOtIdMapper 생성
	private Map<String, String> createPmOtIdMapper(List<String> days, List<OpeningTimeVO> openingOtIdList) {

		Map<String, String> otIdMap = new HashMap<String, String>();
		
		for(String day : days) {
			
			for(OpeningTimeVO otVO : openingOtIdList) {
				// 날짜별 otID 그룹핑
				if(otVO.getYearDate().equals(day) && otVO.getTimeType().equals("오후")) {
					otIdMap.put(day, otVO.getOtId());
				}
			}
		}
		
		return otIdMap;
	}

	
	
	
	
	
} // class 끝
