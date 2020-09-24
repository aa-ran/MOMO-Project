package com.momo.spring.common.aop;

import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl {
	
	public boolean testMethod1() {
		System.out.println("test 진행중");
		return true;
	}

}
