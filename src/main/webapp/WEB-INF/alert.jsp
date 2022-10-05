<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		//var message = "${msg}";
		//var url = "${url}";
		alert("${msg}");
// 		history.go(-1);
		document.location.href = "${pageContext.request.contextPath}/subMain";

	</script>
</body>
</html>