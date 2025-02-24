package com.project.hospital.reserve.opening;

import java.util.List;

import com.project.hospital.vo.OpeningTimeVO;

public interface OpeningTimeService {
	
	List<OpeningTimeVO> getListByDrIdAndDate(String drId, String date);

	void insertSchedule(String timeType, String insertStatus, String date, String drId);

	void updateSchedule(String timeType, String updateStatus, String date, String drId);
	
	// 통합 후 추가
	List<String> openingTimeList(OpeningTimeVO vo);
	void openingTimeImpossibleUpdate(String otId);
	void openingTimePossibleUpdate(String otId);
}
