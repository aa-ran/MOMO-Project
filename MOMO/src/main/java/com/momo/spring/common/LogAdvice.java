package com.momo.spring.common;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogAdvice {
	public void printLog() {
		System.out.println("[공통로그 - LogAdvice] 비즈니스 로직 수행 전 동작");
	}
	
	public void printTransactionLog() {
		System.out.println("[트랜잭션 로그 - LogAdvice] 트랜잭션 처리 수행 전 동작");
	}
	
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable{
		System.out.println("[BEFORE] : 비즈니스 메소드 수행 전에 처리할 내용");
		Object returnObj = pjp.proceed();
		System.out.println("[AFTER] : 비즈니스 메소드 수행 후에 처리할 내용");
		return returnObj;

	}

}
