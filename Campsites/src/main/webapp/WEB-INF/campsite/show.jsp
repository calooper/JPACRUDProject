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



	<div>
		<h5>${campsite.id}</h5>
		<h5>${campsite.description}</h5>




		<form action="deleteCampsite.do" method="GET">
			<input type="hidden" name="id" value=${ campsite.id} /> <input
				type="submit" value="Delete this campsite" />
		</form>





	</div>



	<c:choose>
		<c:when test="${ not result}">
			<ul style="list-style: none;">
				<li><strong>deleted</strong></li>
		</c:when>
		<c:otherwise>
			<p>Not deleted</p>
		</c:otherwise>
	</c:choose>


</body>
</html>