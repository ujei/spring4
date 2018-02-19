package com.ace.offline.service;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.ace.common.exception.ResponseException;
import com.ace.offline.util.CommonUtils;

import NiceID.Check.CPClient;

@Service
public class MobileAuthService {

	public String initMobileAuth(HttpServletRequest request) throws ResponseException {

		String domainName = CommonUtils.getHostUri(request);
		
		CPClient niceCheck = new NiceID.Check.CPClient();

		String sSiteCode = "BE740"; // NICE로부터 부여받은 사이트 코드
		String sSitePassword = "7JYMksZVnfk2"; // NICE로부터 부여받은 사이트 패스워드

		String sRequestNumber = "REQ0000000001"; // 요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로
													// 업체에서 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.
		sRequestNumber = niceCheck.getRequestNO(sSiteCode);

		String sAuthType = "M"; // 없으면 기본 선택화면, M: 핸드폰, C: 신용카드, X: 공인인증서

		String popgubun = "N"; // Y : 취소버튼 있음 / N : 취소버튼 없음
		String customize = ""; // 없으면 기본 웹페이지 / Mobile : 모바일페이지

		String sGender = ""; // 없으면 기본 선택 값, 0 : 여자, 1 : 남자

		// CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.
		// 리턴url은 인증 전 인증페이지를 호출하기 전 url과 동일해야 합니다. ex) 인증 전 url : http://www.~ 리턴 url :
		// http://www.~
		String sReturnUrl = domainName + "/auth/mobile/process"; // 성공시 이동될 URL
		String sErrorUrl = domainName + "/auth/mobile/process"; // 실패시 이동될 URL


		// 입력될 plain 데이타를 만든다.
		String sPlainData = "7:REQ_SEQ" + sRequestNumber.getBytes().length + ":" + sRequestNumber + "8:SITECODE"
				+ sSiteCode.getBytes().length + ":" + sSiteCode + "9:AUTH_TYPE" + sAuthType.getBytes().length + ":"
				+ sAuthType + "7:RTN_URL" + sReturnUrl.getBytes().length + ":" + sReturnUrl + "7:ERR_URL"
				+ sErrorUrl.getBytes().length + ":" + sErrorUrl + "11:POPUP_GUBUN" + popgubun.getBytes().length + ":"
				+ popgubun + "9:CUSTOMIZE" + customize.getBytes().length + ":" + customize + "6:GENDER"
				+ sGender.getBytes().length + ":" + sGender;

		String sEncData = "";

		int iReturn = niceCheck.fnEncode(sSiteCode, sSitePassword, sPlainData);
		
		if (iReturn == 0) {
			sEncData = niceCheck.getCipherData();
			return sEncData;
		} else if (iReturn == -1) {
			throw new ResponseException("암호화 시스템 에러입니다.");
		} else if (iReturn == -2) {
			throw new ResponseException("암호화 처리오류입니다.");
		} else if (iReturn == -3) {
			throw new ResponseException("암호화 데이터 오류입니다.");
		} else if (iReturn == -9) {
			throw new ResponseException("입력 데이터 오류입니다.");
		} else {
			throw new ResponseException("알수 없는 에러 입니다. iReturn : " + iReturn);
		}
	}

	@SuppressWarnings({ "rawtypes", "unused" })
	public ModelMap processMobileAuth(ModelMap model, String sEncodeData) throws ResponseException, UnsupportedEncodingException {
		NiceID.Check.CPClient niceCheck = new NiceID.Check.CPClient();

		String sSiteCode = "BE740"; // NICE로부터 부여받은 사이트 코드
		String sSitePassword = "7JYMksZVnfk2"; // NICE로부터 부여받은 사이트 패스워드

		String sCipherTime = ""; // 복호화한 시간
		String sRequestNumber = ""; // 요청 번호
		String sResponseNumber = ""; // 인증 고유번호
		String sAuthType = ""; // 인증 수단
		String sName = ""; // 성명
		String sDupInfo = ""; // 중복가입 확인값 (DI_64 byte)
		String sConnInfo = ""; // 연계정보 확인값 (CI_88 byte)
		String sBirthDate = ""; // 생년월일(YYYYMMDD)
		String sGender = ""; // 성별
		String sNationalInfo = ""; // 내/외국인정보 (개발가이드 참조)
		String sMobileNo = ""; // 휴대폰번호
		String sMobileCo = ""; // 통신사
		String sMessage = "";
		String sPlainData = "";

		int iReturn = niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

		if (iReturn == 0) {
			sPlainData = niceCheck.getPlainData();
			sCipherTime = niceCheck.getCipherDateTime();

			// 데이타를 추출합니다.
			HashMap mapresult = niceCheck.fnParse(sPlainData);

			sRequestNumber = (String) mapresult.get("REQ_SEQ");
			sResponseNumber = (String) mapresult.get("RES_SEQ");
			sAuthType = (String) mapresult.get("AUTH_TYPE");
			// sName = (String)mapresult.get("NAME");
			sName = (String) mapresult.get("UTF8_NAME"); // charset utf8 사용시 주석 해제 후 사용
			sBirthDate = (String) mapresult.get("BIRTHDATE");
			sGender = (String) mapresult.get("GENDER");
			sNationalInfo = (String) mapresult.get("NATIONALINFO");
			sDupInfo = (String) mapresult.get("DI");
			sConnInfo = (String) mapresult.get("CI");
			sMobileNo = (String) mapresult.get("MOBILE_NO");
			sMobileCo = (String) mapresult.get("MOBILE_CO");
			
			model.addAttribute("name", URLDecoder.decode(sName, "UTF-8"));
			model.addAttribute("di", sDupInfo);
			model.addAttribute("birthDay", sBirthDate);
			model.addAttribute("mobileNo", sMobileNo);
			model.addAttribute("gender", sGender);
			model.addAttribute("mobile", true);
		} else if (iReturn == -1) {
			throw new ResponseException("복호화 시스템 에러입니다.");
		} else if (iReturn == -4) {
			throw new ResponseException("복호화 처리오류입니다.");
		} else if (iReturn == -5) {
			throw new ResponseException("복호화 해쉬 오류입니다.");
		} else if (iReturn == -6) {
			throw new ResponseException("복호화 데이터 오류입니다.");
		} else if (iReturn == -9) {
			throw new ResponseException("입력 데이터 오류입니다.");
		} else if (iReturn == -12) {
			throw new ResponseException("사이트 패스워드 오류입니다.");
		} else {
			throw new ResponseException("알수 없는 에러 입니다. iReturn : " + iReturn);
		}
		return model;
	}
}
