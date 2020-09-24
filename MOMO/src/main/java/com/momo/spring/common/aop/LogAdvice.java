package com.momo.spring.common.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
@Component
@Aspect

public class LogAdvice {
	
	/*
	 * @Pointcut("execution(* com.kh.spring..*Impl.*(..))") public void
	 * allPointcut() {}
	 */
	
	//@Before("CommonPointcut.allPointcut()")
	public void printLog() {
		System.out.println("[공통 Log] : 비즈니스 로직 수행 전 동작");
	}
	
	//@After("allPointcut()")
	public void finallyLog() {
		System.out.println("[공통 Log] : 비즈니스 로직 종료");
	}

}
