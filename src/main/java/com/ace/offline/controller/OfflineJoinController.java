package com.ace.offline.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ace.offline.constant.DefaultConstants;

@Controller
@RequestMapping("/")
public class OfflineJoinController {

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Device device) {
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW;
		}
	}
	
	@RequestMapping(value = "input", method = RequestMethod.GET)
	public String inputUserInfo(HttpServletRequest request, Device device) {
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_INPUT_INFO;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_INPUT_INFO;
		}
	}
	
	@RequestMapping(value = "confirm", method = RequestMethod.GET)
	public String confirmUserInfo(HttpServletRequest request, Device device) {
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_CONFIRM_INFO;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_CONFIRM_INFO;
		}
	}
	
	@RequestMapping(value = "complete", method = RequestMethod.GET)
	public String completeJoin(HttpServletRequest request, Device device) {
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_JOIN_COMPLETE;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_JOIN_COMPLETE;
		}
	}
}
