package com.ace.common.exception;

public class ResponseException extends Exception {

	private static final long serialVersionUID = 962802581400889223L;
	
	private String message;
	
	public ResponseException(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
