<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
	<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
	<script type="text/javascript" src="/resources/js/lib/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/lib/jquery-fakeform-0.5.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		var doc = window.opener.document, 
			theForm = doc.getElementById("info"), 
			theField = doc.getElementById("eData");
			theField.value = document.getElementById("dt").value;
		window.close();
		theForm.submit();
	});
	</script>
	<title>에이스 홈센터 오프라인 가입</title>
</head>
<body>
<form name="data">
	<input type="hidden" name="dt" id="dt" value="${edata}" />
</form>
</body>
</html>