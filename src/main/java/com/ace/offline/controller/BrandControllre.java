package com.ace.offline.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/brand")
public class BrandControllre {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Device device) {
		return "/brand/index";
	}
	
	@RequestMapping(value = "join1", method = RequestMethod.GET)
	public String join1(HttpServletRequest request, Device device) {
		return "/brand/join_step01";
	}
	
	@RequestMapping(value = "join2", method = RequestMethod.GET)
	public String join2(HttpServletRequest request, Device device) {
		return "/brand/join_step02";
	}
	
	@RequestMapping(value = "join3", method = RequestMethod.GET)
	public String join3(HttpServletRequest request, Device device) {
		return "/brand/join_step03";
	}
	
	@RequestMapping(value = "join4", method = RequestMethod.GET)
	public String join4(HttpServletRequest request, Device device) {
		return "/brand/join_step04";
	}
}
