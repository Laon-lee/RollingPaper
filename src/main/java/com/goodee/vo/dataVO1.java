package com.goodee.vo;

import javax.validation.constraints.Size;

public class dataVO1 {
	
	@Size(max=100,message="글자수가 부족해 퀴즈는 제출하실 수 없어요..ㅜㅜ")
	@Size(min=100,message="퀴즈를 제출하실 수 있어요!")
	private String data1;

	public String getData1() {
		return data1;
	}

	public void setData1(String data1) {
		this.data1 = data1;
	}
	
	
	
}
