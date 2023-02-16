package kh.book.b29.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Service
@Aspect
public class AroundLog {
	@Pointcut("execution(public * kh.book.b29.*.controller.*.*(..))")
	public void commonControllerPointcut() {}
	@Pointcut("execution(public * kh.book.b29..*ServiceImpl.*(..))")
	public void commonServicePointcut() {}
	
	@Around("commonControllerPointcut()")
	public Object aroundCtrlLog(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("▶[" + pjp.getThis() + ", method:" + pjp.getSignature().getName() + "]");
		Object[] args = pjp.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.print("▶\targs[" + i + "]: " + args[i] + ",\n");
		}

		StopWatch sw = new StopWatch();
		sw.start();
		Object ro = pjp.proceed();  // 타겟메소드 호출하여 수행하고 그 결과(return value)를 ro에 담음.
		sw.stop();

		if (ro != null) {
			System.out.println("▶return: " + ro.toString());
		}
		System.out.println("\t[" + sw.getTotalTimeMillis() + "ms]");
		System.out.println();
		return ro;
	}
	@Around("commonServicePointcut()")
	public Object aroundSrvcLog(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("▶▶[" + pjp.getThis() + ", method:" + pjp.getSignature().getName() + "]");
		Object[] args = pjp.getArgs();
		for (int i = 0; i < args.length; i++) {
			System.out.print("▶▶\targs[" + i + "]: " + args[i] + ",\n");
		}

		StopWatch sw = new StopWatch();
		sw.start();
		Object ro = pjp.proceed();  // 타겟메소드 호출하여 수행하고 그 결과(return value)를 ro에 담음.
		sw.stop();

		if (ro != null) {
			System.out.println("▶▶return: " + ro.toString());
		}
		System.out.println("\t[" + sw.getTotalTimeMillis() + "ms]");
		return ro;
	}
}
