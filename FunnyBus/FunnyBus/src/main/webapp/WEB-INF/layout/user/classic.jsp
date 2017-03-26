<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/jquery-3.1.1.min.js"></script>

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<script src="/resources/js/bootstrap.min.js" ></script>
<link href="/resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/chosen.min.css">
<script src="/resources/js/chosen.jquery.min.js"></script>
<title>Funny Bus</title>
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<script>
	$(function() {
		$('select').chosen();
	});
</script>

<style type="text/css">

</style>
<!-- сюди буде підставлено атрибут з ім'ям title -->
<title><tiles:getAsString name="title" /></title>
</head>
<body>
<!-- 	а сюди jsp файл з ім'ям header -->
    <tiles:insertAttribute name="header" />
	<div class="container-fluid">
<!-- 	сюди jsp файл з ім'ям body -->
		<tiles:insertAttribute name="body" />
	</div>
<!-- 	сюди jsp файл з ім'ям footer -->
		<tiles:insertAttribute name="footer" />
<!-- 	зверніть увагу на те що в темплейт файлі (тут) -->
<!-- 	вже описано основний HTML код, в інших файлах -->
<!-- 	його писати не потрібно(я про <head><body><html>) -->
</body>
</html>