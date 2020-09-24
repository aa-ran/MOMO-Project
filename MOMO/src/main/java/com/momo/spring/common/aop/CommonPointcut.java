package com.momo.spring.common.aop;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
public class CommonPointcut {

	@Pointcut("execution(* com.kh.spring..*Impl.*(..))")
	public void allPointcut() {}
}



