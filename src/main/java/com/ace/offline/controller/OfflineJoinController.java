package com.ace.offline.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OfflineJoinController {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		return "";
	}
}
