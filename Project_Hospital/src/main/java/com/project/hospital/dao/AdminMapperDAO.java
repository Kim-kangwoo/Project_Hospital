package com.project.hospital.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.project.hospital.admindrMain.dto.LoginResultDTO;

@Mapper
public interface AdminMapperDAO {

	LoginResultDTO findByIdAndPw(Map<String, String> optionMap);

}
