<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<link type="text/css" rel="stylesheet" href="/main.css">
<link type="text/css" rel="stylesheet" href="css/animate.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap-theme.min.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="~/lib/Font-Awesome/css/fontawesome.min.css">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/regular.min.css">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/solid.min.css">


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>


<style><%@include file="/WEB-INF/css/main.css"%></style>



<meta charset="UTF-8">

</head>


<div class="topnav navbar-fixed-top" >

  <a href="index.do"><i class="fa fa-fw fa-home"></i> Home</a>
 <!--  <a href="#about">About</a>
  <a href="#contact">Contact</a> -->
  <div class="search-container">
    <form action="getCampsite.do">
      <input type="text" placeholder="Search by Id.." name="cid" method="GET">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>







<body> 
     <div class="bg"></div> 






<div style="background-color: rgba(255, 255, 255, .7)" class="container">


<br>
	<br>
	<div class="row">
		<table class="table table-hover table-responsive">
			

			<thead>
				<tr>
					<th>ID</th>
					<th>Description</th>
					<th>State</th>
					<th>Mountian range</th>
					<th>Latitude</th>
					<th>Longitude</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ campsiteList}" var="campsite">
					<tr id="d1">
						<td>${campsite.id }</td>
						<td id="f1">${ campsite.description}</td>
						<td id="l1">${ campsite.state}</td>
						<td id="m1">${ campsite.mountainRange}</td>
						<td id="m2">${ campsite.latitude}</td>
						<td id="m3">${ campsite.longitude}</td>


						<td><button type="button" data-toggle="modal"
								data-target="#edit" data-uid="1"
								class="update btn btn-warning btn-sm">
								<span class="glyphicon glyphicon-pencil"></span>
							</button></td>


						<td>
							<%-- <jsp:forward page="deleteCampsite.do" /> --%>
							<form action="deleteCampsite.do" method="GET" name="id"
								value=${ campsite.id}>
								
								<button type="submit" data-toggle="modal" data-uid="1"
									class="delete btn btn-danger btn-sm" name="id"
									value=${ campsite.id}>

									<span class="glyphicon glyphicon-trash"></span>

								</button>
							</form>
						</td>

					</tr>
				</c:forEach>

			<%-- 	<form action="addCampsite.do" method="GET"> <%--  --%>
					<tr id="d2"> 
						<td><strong>Add</strong></td>
						<!--  <td id="f2">Jane</td> --> 
						<td><input type="hidden" id="f2" ></td>
						<!-- <td id="l2">Wick</td> -->
						<td><input type="hidden" id="l2"></td>

						<!-- <td id="m1">Doe</td> -->
						<td><input type="hidden" id="m1"></td>
						<!-- <td id="m2">Map</td> -->
						<td><input type="hidden" id="m2"></td>
						
						<td><input type="hidden" id="m3"></td>  


						<td>
						<td><button type="submit" data-toggle="modal"
								data-target="#edit" data-uid="2"
								class="add btn btn-primary btn-sm">
								<span class="glyphicon glyphicon-plus" value="Submit Button"></span>
							</button></td>
						</td>


					</tr>

			<%-- 	</form> --%>

				
			</tbody>
		</table>
	</div>
</div>
<div id="edit" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
		
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"></button>
				<h4 class="modal-title">Add a Campsite</h4>
			</div>
			
			
			<form action="addCampsite.do" method="POST">
			<div class="modal-body">
				<input  type="text" class="form-control" name="description"
					placeholder="Description"> 
					
				<input  type="text"
					class="form-control" name="state" placeholder="State">
					
				<input  type="text" class="form-control" name="mountainRange"
					placeholder="Moutain Range">
					
					<input type="number" step="0.01" class="form-control" name="latitude"
					placeholder="Latitude in Decimal Degrees">
					
					<input  type="number" step="0.01" class="form-control" name="longitude"
					placeholder="Longitude in Decimal Degrees">
			</div>
			
			
			<div class="modal-footer">
				<button type="submit" class="btn btn-warning"  class="form-control">Update</button>
		
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
			
				</form>	
		</div>
	</div>
</div>
<div id="delete" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h4 class="modal-title">Delete Data</h4>
			</div>
			<div class="modal-body">
				<strong>Are you sure you want to delete this data?</strong>
			</div>
			<div class="modal-footer">
				<button type="button" id="del" class="btn btn-danger"
					data-dismiss="modal">Delete</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
</div>


<!-- Footer -->

<style>
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: grey;
  color: white;
  text-align: center;
   margin: 0;
   padding: 0px;

}
</style>

<div class="footer">
  <p></p>
</div>
   


</body>




</html>