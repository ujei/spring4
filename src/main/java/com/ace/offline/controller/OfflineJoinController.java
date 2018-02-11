package com.ace.offline.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ace.common.exception.ResponseException;
import com.ace.offline.constant.DefaultConstants;
import com.ace.offline.service.IPINAuthService;
import com.ace.offline.service.MobileAuthService;

@Controller
@RequestMapping("/")
public class OfflineJoinController {

	@Autowired
	MobileAuthService mobileAuthService;
	
	@Autowired
	IPINAuthService IPINAuthService;
	
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
	
	@RequestMapping(value = "auth/phone", method = RequestMethod.POST)
	@ResponseBody
	public String mobileAuth(HttpServletRequest request, Device device) throws ResponseException {
		return mobileAuthService.initMobileAuth();
	}
	
	@RequestMapping(value = "/auth/mobile/process", method = RequestMethod.POST)
	public String mobileSuccess(ModelMap model, HttpServletRequest request, Device device, @RequestParam String EncodeData) throws ResponseException, UnsupportedEncodingException {
		mobileAuthService.processMobileAuth(model, EncodeData);
		
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_INPUT_INFO;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_INPUT_INFO;
		}
	}
	
	@RequestMapping(value = "/auth/mobile/fail", method = RequestMethod.POST)
	public String mobileFail(HttpServletRequest request, Device device) {
		return "/auth/checkplus_fail";
	}
	

	@RequestMapping(value = "auth/ipin", method = RequestMethod.POST)
	@ResponseBody
	public String ipinAuth(HttpServletRequest request, Device device) throws ResponseException {
		return IPINAuthService.initIPINAuth();
	}
	
	@RequestMapping(value = "auth/ipin/process", method = RequestMethod.POST)
	public String ipinSuccess(HttpServletRequest request, Device device) {
		return "/ipin/ipin_process";
	}
	
	@RequestMapping(value = "ipinfail", method = RequestMethod.GET)
	public String ipinFail(HttpServletRequest request, Device device) {
		return "/ipin/ipin_result";
	}
}
