package com.momo.spring.common;

public class Log4jAdvice {
	public void printLogging() {
		System.out.println("[공통로그 - LogAdvice] 비즈니스 로직 수행 전 동작");
	}
	
	public void printTransactionLog() {
		System.out.println("[트랜잭션 로그 - LogAdvice] 트랜잭션 처리 수행 전 동작");
	}
}
