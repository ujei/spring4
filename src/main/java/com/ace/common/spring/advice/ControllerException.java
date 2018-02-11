package com.ace.common.spring.advice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ace.common.exception.ResponseException;

@ControllerAdvice
public class ControllerException {

	@ExceptionHandler(value = Exception.class)
	@ResponseBody
	public String processException(HttpServletRequest request, ResponseException e) {
		return e.getMessage();
	}
}
