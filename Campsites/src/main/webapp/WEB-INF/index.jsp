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
<style><%@include file="/WEB-INF/css/style.css"%></style>
<style><%@include file="/WEB-INF/js/main.js"%></style>



<meta charset="UTF-8">

</head>



<!-- Start Paste -->
<div class="topnav navbar-fixed-top" >
  <a href="index.do"><i class="fa fa-fw fa-home"></i> Home</a>
 <!--  <a href="#about">About</a>
  <a href="#contact">Contact</a> -->
  <div class="search-container">
    <form action="getCampsite.do" method="GET">
      <input type="number" placeholder="Search by Id.." name="cid" required>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<body> 




  <!-- ========== HEADER SECTION ========== -->
  <section id="home" name="home"></section>
  <div id="headerwrap">
    <div class="container">
      <div class="logo">
        <img >
      </div>
      <br>
      <div class="row">
        <h1>SAVE A SPOT</h1>
        <br>
        <h3>A webite designed to remember your campsite locations</h3>
        <br>
        <br>
        <div class="col-lg-6 col-lg-offset-3">
        </div>
      </div>
    </div>
    <!-- /container -->
  </div>
  <!-- /headerwrap -->




  <!-- ========== TABLE SECTION ========== -->
  <br>
  <br>
  <div style="background-color: white" class="row" >
    <table class="table table-hover table-responsive">


      <thead>
        <tr>
          <th></th>
          <th></th>
          <th>ID</th>
          <th>Description</th>
          <th>State</th>
          <th>Mountain range</th>
          <th>Coordinates</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${ campsiteList}" var="campsite">
        
        
        <c:choose>
    		<c:when test="${campsite.id == null }">
        		<strong style="padding-left:35em; color:red">Sorry, no campsite with this Id found</strong>
       		 	<br>
       		  	<br>
       		   <br>
    		</c:when>        
    	<c:otherwise>
          <tr id="d1">
          	<td></td>
          	<td></td>
            <td>${campsite.id }</td>
            <td id="f1">${ campsite.description}</td>
            <td id="l1">${ campsite.state}</td>
            <td id="m1">${ campsite.mountainRange}</td>
            <td id="m2"><a href="https://maps.google.com/?ll=" ${ campsite.latitude}, ${ campsite.longitude}">${ campsite.latitude},${ campsite.longitude}</a> </td>


            <td>
              <button type="submit" data-toggle="modal" value=${ campsite.id} name="campsite" data-target="#edit2" data-uid="2" class="update btn btn-warning btn-sm">
                <span class="glyphicon glyphicon-pencil"></span>
              </button>
            </td>
            <td>     
              <form action="deleteCampsite.do" method="GET" name="id" value=${ campsite.id}>

                <button data-target="#delete" type="submit" data-toggle="modal" data-uid="1" class="delete btn btn-danger btn-sm" name="id" value=${ campsite.id}>

                  <span class="glyphicon glyphicon-trash"></span>

                </button>
              </form>
            </td>
            

          </tr>
          
           </c:otherwise>
		</c:choose>
        </c:forEach>
        
        <tr id="d2">
     
          <td><input type="hidden" id="f2"></td>
          <td><input type="hidden" id="f2"></td>
          <td><input type="hidden" id="f2"></td>
          <td><input type="hidden" id="l2"></td>
          <td><input type="hidden" id="m1"></td>
          <td><input type="hidden" id="m2"></td>



          <td>
          <td><strong>Add</strong></td>
          <td><button type="submit" data-toggle="modal" data-target="#edit" data-uid="2" class="add btn btn-primary btn-sm">
              <span class="glyphicon glyphicon-plus" value="Submit Button"></span>
            </button></td>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  </div>
  
  
  <!--  ADD A  SITE POP_UP MENU-->
  <div id="edit" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"></button>
          <h4 class="modal-title">Add a Campsite </h4>
        </div>


        <form action="addCampsite.do" method="POST">
          <div class="modal-body">
            <input type="text" class="form-control" name="description" placeholder="Description" required>

            <input type="text" class="form-control" name="state" placeholder="State">

            <input type="text" class="form-control" name="mountainRange" placeholder="Moutain Range" required>

            <input type="number" step="0.000001" class="form-control" name="latitude" placeholder="Latitude in Decimal Degrees" required>

            <input type="number" step="0.000001" class="form-control" name="longitude" placeholder="Longitude in Decimal Degrees" required>
          </div>


          <div class="modal-footer">
            <button type="submit" class="btn btn-warning" class="form-control">Update</button>

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>

        </form>
      </div>
    </div>
  </div>

  <!-- Edit a site pop-up menu  -->

  <div id="edit2" class="modal fade" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"></button>
          <h4 class="modal-title">Edit a Campsite</h4>
        </div>


        <form action="editCampsite.do" method="GET">
          <div class="modal-body">
            <input type="number" class="form-control" name="id" placeholder="Id" required>

            <input type="text" class="form-control" name="description" placeholder="Description" required>

            <input type="text" class="form-control" name="state" placeholder="State">

            <input type="text" class="form-control" name="mountainRange" placeholder="Moutain Range" required>

            <!-- <input type="number" step="0.01" class="form-control" name="latitude"
  					placeholder="Latitude in Decimal Degrees" required>

  					<input  type="number" step="0.01" class="form-control" name="longitude"
  					placeholder="Longitude in Decimal Degrees" required> -->
          </div>


          <div class="modal-footer">
            <button type="submit" class="btn btn-warning" class="form-control">Update</button>

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










  <!-- ========== FOOTER ========== -->
  

  <div id="copyrights">
    <div class="container">
      <p>

      </p>
      <div class="credits">

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/easing/easing.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>























</html>