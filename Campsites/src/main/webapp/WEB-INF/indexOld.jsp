<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="getCampsite.do" method="GET">
		Search for a Campsite <input name="cid" /> <input type="submit"
			value="Show Campsite" /> <br>
	</form>




	<ul>
		<li><a href="getAllCampsites.do">Get all campsites</a></li>
	</ul>


	<form action="addcampsite.do" method="GET">
		Add a Campsite <input type="hidden" /> <input type="submit"
			value="Add Campsite" /> <br>
	</form>














</body>
</html>