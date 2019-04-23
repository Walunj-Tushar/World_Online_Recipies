<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*,java.util.*" %>
<%@page import="com.DbConnection.*" %>
<%@page import ="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="themes/assets/ico/favicon.ico">
    <title>World Recipes</title>

    <!-- Bootstrap core CSS -->
    <link href="themes/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="themes/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="themes/assets/css/carousel.css" rel="stylesheet">
    
   
    <style type="text/css">
.box1
{
        padding-top: 160px;
    padding-left: 0px;
    margin-left: 60px;
    width: 90%;
}
.validation
{
	color:red;
}
 button[type="submit"]{
    background: #007bff;
    border: 0;
    border-radius: 20px;
    padding: 8px 30px;
    color: #fff;
    transition: 0.3s;
}   
 .cancelbtn {
    background: red;
    border: 0;
    border-radius: 20px;
    padding: 8px 30px;
    color: #fff;
    transition: 0.3s;
} 
.brder
{
    border-bottom: 1px solid black;
    margin-top: -17px;
}     
.container1	
{
       width: 90%;
    margin-left: 50px;
 }
   .close1
   {
		float: right;
	    font-size: 50px;
	    font-weight: 700;
	    line-height: 1;
	    color: #000;
	    text-shadow: 0 1px 0 #fff;
	    opacity: 0.2;   
   }
   .p1
   {
   		    margin: 0px 120px 10px;
    		font-size: large;
   }
    </style>
    <script type="text/javascript">
	function User_Registration()
	{
	var pattern=/[^a-z|^A-Z|^\s]/;
	
	var FirstName=document.register.FirstName.value;
	var MiddleName=document.register.MiddleName.value;
	var LastName=document.register.LastName.value;
	var Gender=document.register.Gender.value;
	var Contact=document.register.Contact.value;
	var Email=document.register.Email.value;
	var Address=document.register.Address.value;
	var Password=document.register.Password.value;
	var ConfirmPassword=document.register.ConfirmPassword.value;

		
	if(FirstName=="" || FirstName.length>15){
		 alert("Enter first name");
		  return false;
		}
		
	else if(document.getElementById("FirstName").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}

	else if(MiddleName=="" || MiddleName.length>15){
		 alert("Enter middle name , only allowed Character !");
		  return false;
		}
	else if(document.getElementById("MiddleName").value.match(pattern))
	{
	 alert("Not allowed space  Middle name , only allowed Character!");
	  return false;
	}
	else if(LastName=="" || LastName.length>15){
		 alert("Enter last name");
		  return false;
		}
	else if(document.getElementById("LastName").value.match(pattern))
	{
	 alert("not allowed space, only allowed Character !");
	  return false;
	}
	if(Address=="" || Address.length>15){
		 alert("Enter Address");
		  return false;
		}
		
	else if(document.getElementById("Address").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}

	else if(Gender=="" || Gender.length>6){
		 alert("Select Gender ");
		  return false;
		}
	
		else if(Contact=="" || Contact.length>10||Contact.length<10){
				 alert("Enter your Valid  Contact Number ");
				 return false;
		}
		
	var atpos = Email.indexOf("@");
	var dotpos = Email.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=Email.length){
		 alert("Enter Valid Email address!");
		  return false;
		}
	else if(Password.length<1 || Password.length>10){
		 alert("Enter Password  ");
		  return false;
		}
	else if(ConfirmPassword!=Password){
		 alert("Re-Enter Valid  password  ");
		  return false;
		}

	else{
		alert("Registration successfully...!");
	}
	return true;
	}

    
    </script>
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <%
  String Email;

  if(request.getParameter("na")!=null){

	  Email=(String)request.getParameter("na");

  }
  else{
	  Email=(String)request.getAttribute("na");
 }
  %>
    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.jsp">World Recipes</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
              <li class="active"><a href="">Home</a></li>
                <li><a href="AddRecipes.jsp?na=<%=Email%>">Add Your Recipes</a></li>
                <li><a href="UserRecipes.jsp?na=<%=Email%>">Your Recipes</a></li>
                <li><a href="UserProfile.jsp?na=<%=Email%>">Profile</a></li>
                <li><a href="UserAboutUs.jsp?na=<%=Email%>">About Us</a></li>
                <li><a href="UserContactUs.jsp?na=<%=Email%>">Contact</a></li>
                <li><a href="index.jsp" style="margin-left: 200%;width: 170px;">Logout</a></li>
                    </ul>
            </div>
          </div>
        </div>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="mainCarousel">
    <br><br><br><br>

	<div class="mainTitle">
	<div class="container">
	
	<h1>World Recipes</h1>
	<p>
	Welcome To World Recipes 
	</p>
	</div>
	</div>

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

   <div class="container marketing">
   <div id="myCarousel4" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
      <div class="box" style="margin-top: -140px;">
        <div class="row">
       			
          <div class="col-md-12" style="background-color: mintcream;">
           <div class="box box1" style="padding-top: 155px;">
           <div class="title text-center brder">
					<h1 class="mb-10" style="color:#FF8500;"><i class="fa fa-user">&nbsp;YOUR PROFILE</h1></i>
				</div>
				<br>
 		 <form role="form">
                          <sql:setDataSource
        					var="dbsource" 
        					driver="com.mysql.jdbc.Driver"
        					url="jdbc:mysql://localhost:3306/worldrecipes"
        					user="root"
        					password="" />
        
        <sql:query dataSource="${dbsource}" var="result">
        		Select * from usersregistration where Email="<%=Email %>"
        </sql:query>
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr>
       							 <th>ID</th>
                               <th>First Name</th>
                               <th>Middle Name</th>
                               <th>Last Name</th>
                               <th>Address</th>
                               <th>Gender</th>
                               <th>Email</th>
                               <th>Contact</th>
                                                        
                              									
                          </tr>
                  </thead>
                   <c:forEach var="rows" items="${result.rows}">
        	<tr  style="color: black">
        		<td><c:out value="${rows.id}" /></td>
        		<td><c:out value="${rows.FirstName}" /></td>
        		<td><c:out value="${rows.MiddleName}" /></td>
        		<td><c:out value="${rows.LastName}" /></td>
        		<td><c:out value="${rows.Address}" /></td>
        		<td><c:out value="${rows.Gender}" /></td>
        		<td><c:out value="${rows.Email}" /></td>
        		<td><c:out value="${rows.Contact}" /></td>	
 				
        	</tr>     
        </c:forEach>                             
                  <tbody>
                  
                  </tbody>
                </table>
                </form>
       </div>
            </div>
          </div>
        </div>
      </div>
       
      </div>
      </div>
   </div>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="themes/jquery-1.10.2.min.js"></script>
    <script src="themes/dist/js/bootstrap.min.js"></script>
    <script src="themes/assets/js/holder.js"></script>
	<script src="themes/contactform.js"></script>
	
 <!-- Javascripts-->
    <script src="Table/js/jquery-2.1.4.min.js"></script>
    <script src="Table/js/bootstrap.min.js"></script>
    <script src="Table/js/plugins/pace.min.js"></script>
    <script src="Table/js/main.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="Table/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="Table/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
  
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
var modal = document.getElementById('id02');

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}

</script>
  </body>
</html>

</body>
</html>