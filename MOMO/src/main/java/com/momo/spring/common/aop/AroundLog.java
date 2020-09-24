package com.momo.spring.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

@Component
@Aspect
public class AroundLog {

	/*
	 * @Pointcut("execution(* com.kh.spring..*Impl.*(..))") public void
	 * allPointcut() { }
	 */

	
	// org.aspectj.lang.ProceedingJoinPoint 첫번째 파라비터로 전달, 아님 예외발생
	@Around("CommonPointcut.allPointcut()")
	public Object aroundLogs(ProceedingJoinPoint pp) throws Throwable {
		// proceedingJoinPoint 는 JoinPoint를 상속을 받아 구현된 인터페이스
		// getSignature() : 호출되는 메소드에 대한 정보
		// getName () : 메소드의 이름을 가져옴
		String methodName = pp.getSignature().getName();

		StopWatch stopWatch = new StopWatch();
		stopWatch.start();

		Object obj = pp.proceed();

		stopWatch.stop();

		System.out.println(methodName + "() 메소드" + "수행에 걸린 시간" + stopWatch.getTotalTimeMillis() + "(ms)");
		return obj;

	}

}
