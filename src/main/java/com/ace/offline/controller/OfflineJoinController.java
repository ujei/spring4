package com.ace.offline.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ace.common.exception.ResponseException;
import com.ace.offline.constant.DefaultConstants;
import com.ace.offline.domain.User;
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
	public String inputUserInfoMobile(ModelMap model, HttpServletRequest request, Device device, @RequestParam(required = false) String eData) throws UnsupportedEncodingException, ResponseException {
		
		if(eData != null && !eData.equals("")) {
			mobileAuthService.processMobileAuth(model, eData);
		}
		
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_INPUT_INFO;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_INPUT_INFO;
		}
	}
	
	@RequestMapping(value = "input/ipin", method = RequestMethod.GET)
	public String inputUserInfoIpin(ModelMap model, HttpServletRequest request, Device device, @RequestParam String eData) throws UnsupportedEncodingException, ResponseException {
		
		IPINAuthService.processIPINAuth(model, eData);
		
		if(device.isMobile()) {
			return DefaultConstants.DEFAULT_MOBILE_VIEW_INPUT_INFO;
		} else {
			return DefaultConstants.DEFAULT_PC_VIEW_INPUT_INFO;
		}
	}
	

	@RequestMapping(value = "/join/process", method = RequestMethod.POST)
	@ResponseBody
	public User joinProcess(@ModelAttribute("userInfo") User userInfo, ModelMap model, HttpServletRequest request, Device device) {
		model.addAttribute("name", request.getParameter("name"));
		model.addAttribute("mobileNo", request.getParameter("mobileNo"));
		model.addAttribute("birthDay", request.getParameter("birthDay"));
		model.addAttribute("postCode", request.getParameter("postCode"));
		model.addAttribute("address", request.getParameter("address"));
		model.addAttribute("address_jibeon", request.getParameter("address_jibeon"));
		model.addAttribute("addr_detail", request.getParameter("addr_detail"));
		
		return userInfo;
	}
	
	
	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String confirmUserInfo(@ModelAttribute("userInfo") User userInfo, ModelMap model, HttpServletRequest request, Device device) throws UnsupportedEncodingException {
		
		model.addAttribute("name", URLDecoder.decode(userInfo.getName(), "UTF-8"));
		model.addAttribute("mobileNo", userInfo.getMobileNo());
		model.addAttribute("birthDay", userInfo.getBirthDay());
		model.addAttribute("postCode", userInfo.getPostCode());
		model.addAttribute("addr1", URLDecoder.decode(userInfo.getAddress(), "UTF-8") + URLDecoder.decode(userInfo.getAddr_detail(), "UTF-8"));
		model.addAttribute("addr2", URLDecoder.decode(userInfo.getAddress_jibeon(), "UTF-8") + URLDecoder.decode(userInfo.getAddr_detail(), "UTF-8"));
		
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
		return mobileAuthService.initMobileAuth(request);
	}
	
	@RequestMapping(value = "/auth/mobile/process", method = RequestMethod.POST)
	public String mobileSuccess(ModelMap model, HttpServletRequest request, Device device, @RequestParam String EncodeData) throws ResponseException, UnsupportedEncodingException {
		model.addAttribute("edata", EncodeData);
		return "auth/mobile_auth";
	}
	
	@RequestMapping(value = "/auth/mobile/fail", method = RequestMethod.POST)
	public String mobileFail(HttpServletRequest request, Device device) {
		return "/auth/checkplus_fail";
	}

	@RequestMapping(value = "auth/ipin", method = RequestMethod.POST)
	@ResponseBody
	public String ipinAuth(HttpServletRequest request, Device device) throws ResponseException {
		return IPINAuthService.initIPINAuth(request);
	}
	
	@RequestMapping(value = "auth/ipin/process", method = RequestMethod.POST)
	public String ipinSuccess(ModelMap model, HttpServletRequest request, Device device, @RequestParam String EncodeData) {
		model.addAttribute("edata", EncodeData);
		return "auth/ipin_auth";
	}
	
	@RequestMapping(value = "ipinfail", method = RequestMethod.GET)
	public String ipinFail(HttpServletRequest request, Device device) {
		return "/ipin/ipin_result";
	}
}
