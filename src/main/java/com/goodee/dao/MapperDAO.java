package com.goodee.dao;

import java.beans.JavaBean;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.goodee.vo.LoginVO;

@Mapper 
@JavaBean
public interface MapperDAO {
	public void insertInfo(LoginVO vo);
	public void updateContent(LoginVO vo);
	public String userId(String id);
	public String userNick(LoginVO vo);
	public int userNum(LoginVO vo);
	public int userCheck(LoginVO vo);
	public List<LoginVO> Content(LoginVO vo);
	public LoginVO Content2(LoginVO vo);
}