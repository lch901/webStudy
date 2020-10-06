package kr.co.korea.exception;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalException extends RuntimeException {
	
	//경로 지정을 해줘야 실행됨.	->	 ServletAppContext.java - @ComponentScan("kr.co.korea.exception")
	//에러페이지만 만드는 공간
	@ExceptionHandler(Exception.class)//java.lang.NullPointerException.class
	public String handleException() {
		return "error";
	}
	
//	//배열 인덱스 에러가 발생하면 error1.jsp로 이동
//	@ExceptionHandler(ArrayIndexOutOfBoundsException.class) /* Exception.class */
//	public String exception1() {
//		return "error1";
//	}
//
//	//널포인트 익셉션이 발생하면 error2.jsp로 이동
//	@ExceptionHandler(NullPointerException.class) /* Exception.class */
//	public String exception2() {
//		return "error2";
//	}
}
