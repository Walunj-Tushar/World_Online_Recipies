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

  </head>
<!-- NAVBAR
================================================== -->
  <body>
  
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
                <li class="active"><a href="AdminHome.jsp">Home</a></li>
                <li><a href="ViewUser.jsp">View User</a></li>
                <li><a href="ViewRecipes.jsp">View Recipes</a></li>
                <li><a href="ViewComment.jsp">Comments</a></li>
                <li><a href="AdminAboutUs.jsp">About Us</a></li>
              <li><a  style="margin-left: 250%;width: 170px;" href="index.jsp">Logout</a></li>
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
<div id="id01" class="modal">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close close1" title="Close Modal">&times;</span>
          </div>

    <div class="container1">
 				<div class="title text-center brder">
 				<img class="img-circle" src="themes/assets/images/nepali-momo.png" alt="Generic placeholder image">
					<h1 class="mb-10" style="color:#FF8500;">Nepalese MOMO</h1>
				</div>
				<br>
						<h1 class="mb-10" style="color:red;">Recipe :</h1>
				      <p class="p1">
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      </p>
    </div>

  </form>
  </div>
</div>
<div id="id02" class="modal">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="" method="POST" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close close1" title="Close Modal">&times;</span>
          </div>

    <div class="container1">
 				<div class="title text-center brder">
 					<h1 class="mb-10" style="color:#FF8500;">Burger</h1>
				</div>
				<br>
				<img class="img-circle" src="themes/assets/images/burger.png" alt="Generic placeholder image" style="height: 180px;width: 300px;">
 				
						<h1 class="mb-10" style="color:red;">Recipe :</h1>
				      <p class="p1">
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      </p>
    </div>

  </form>
  </div>
</div>
<div id="id03" class="modal">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close close1" title="Close Modal">&times;</span>
          </div>

    <div class="container1">
 				<div class="title text-center brder">
 				<img class="img-circle" src="themes/assets/images/gorkha-special-chicken.png" alt="Lam Tikka">
 					<h1 class="mb-10" style="color:#FF8500;">Gurkha Chicken</h1>
				</div>
				<br>
						<h1 class="mb-10" style="color:red;">Recipe :</h1>
				      <p class="p1">
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      </p>
    </div>

  </form>
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
					<h1 class="mb-10" style="color:#FF8500;"><i class="fa fa-user">&nbsp;COMMENTS</h1></i>
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
        		Select * from userscomments
        </sql:query>
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr>
        					<th>ID</th>
                               <th>Name</th>
                               <th>Email</th>
                               <th>Message</th>
                                                        
                              									
                          </tr>
                  </thead>
                   <c:forEach var="rows" items="${result.rows}">
        	<tr  style="color: black">
        		<td><c:out value="${rows.id}" /></td>
        		<td><c:out value="${rows.Name}" /></td>
        		<td><c:out value="${rows.CommentEmail}" /></td>
        		<td><c:out value="${rows.Message}" /></td>	

        	</tr>     
        </c:forEach>                             
                  <tbody>
                  
                  </tbody>
                </table>
       </div>
            </div>
          </div>
        </div>
      </div>
       
      </div>
      </form>
      </div>
   </div>
    </div><!-- /.carousel -->	  
    </div><!-- /.container -->
<div class="mainTitle"></div>
    <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="themes/assets/images/nepali-momo.png" alt="Generic placeholder image">
          <h2>Nepalese MOMO</h2>
          <p><a class="btn btn-default" onclick="document.getElementById('id01').style.display='block'" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="themes/assets/images/burger.png" alt="Generic placeholder image">
          <h2>Burger</h2>
          <p><a class="btn btn-default" onclick="document.getElementById('id02').style.display='block'" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
		  <img class="img-circle" src="themes/assets/images/gorkha-special-chicken.png" alt="Lam Tikka">
          <h2>Gurkha Chicken</h2>
          <p><a class="btn btn-default" onclick="document.getElementById('id03').style.display='block'" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
	</div>
	

	
	

	
	
	
	
	
	<div class="mainTitle">
	<div class="container">
	<h1>VEG</h1>
	</div>
	</div>
	
	 <div class="container marketing">
  
	<div id="myCarousel1" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
        <div class="item active">
         <div class="row">
        <div class="col-lg-4">
          <img src="themes/assets/images/salate.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/burger.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/drinks.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
         <div class="row">
        <div class="col-lg-4">
          <img src="themes/assets/images/salate.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/burger.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/drinks.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
          <div class="row">
        <div class="col-lg-4">
          <img  src="themes/assets/images/salate.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img  src="themes/assets/images/burger.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img  src="themes/assets/images/drinks.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel1" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel1" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
	</div>
	<div class="mainTitle">
	<div class="container">
	<h1>NON-VEG</h1>
	</div>
	</div>
	
	<div class="container marketing">
   
	<div id="myCarousel2" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
        <div class="item active">
         <div class="row">
        <div class="col-lg-4">
           <img src="themes/assets/images/salate.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
         <img src="themes/assets/images/chicken.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/drinks_lussy.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
         <div class="row">
        <div class="col-lg-4">
          <img src="themes/assets/images/chicken_fry.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/fish-and-chips.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img src="themes/assets/images/drinks.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
		 
        </div>
        <div class="item">
          <div class="row">
        <div class="col-lg-4">
          <img  src="themes/assets/images/salate.png" alt="Generic placeholder image">
          <h4>Salates</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img  src="themes/assets/images/burger.png" alt="Generic placeholder image">
          <h4>Meal</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img  src="themes/assets/images/drinks.png" alt="Generic placeholder image">
          <h4>Drink</h4>
          <p><a class="btn btn-default" href="#" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel2" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel2" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->
	</div>
	 <div class="mainTitle">
	

	<div class="highlightSection">
	<div class="container">
	<div class="row">
		<div class="col-lg-4">
		<div class="media">
			<a href="menu/"><img src="themes/assets/images/nepali-momo.png" alt="nepali-momo"> </a>
			<h3 class="media-heading text-primary-theme">NEPALESE LAMB MOMO</h3>
			<p>Steamed dumplings filled with slightly spiced minced meat served with special sauce.</p>
		</div>
		</div>
		<div class="col-lg-4">
		<div class="media"><a href="menu/"><img src="themes/assets/images/gorkha-special-chicken.png" alt="GURKHA SPECIAL CHICKEN"> </a>						
		<h3 class="media-heading text-danger-theme">GURKHA SPECIAL CHICKEN</h3>
		<p>Boneless chicken marinated in mustard, smoked chilli, herbs and spices slowly cooked in tandoor. </p>
		
		</div>
		</div>
		<div class="col-lg-4">
		<div class="media">
		<a href="menu/"><img src="themes/assets/images/lam-tikka.png" alt="Lam Tikka"> </a>
		<h3 class="media-heading">LAMB TIKKA SPECIAL</h3>
		<p>Tender pieces of lamb mixed with our own spices and gently cooked in clay oven. </p>
		</div>
		</div>
	</div>
	</div>
	</div>
	      

	
	<div class="introSection">
		<div class="container">
		<div class="row">
		<div class="col-lg-5">
		<h3>Welcome to restaurent</h3>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
		text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
		It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br><br>
		It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
		and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		</p>
		</div>
		
		<div class="col-lg-4">
		<h3>Welcome to restaurent</h3>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
		text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
		It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br><br>
		
		</p>
		
		</div>
		
		<div class="col-lg-3">
		<h3>Welcome to restaurent</h3>
		<p>
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy 
		text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
		
		</p>
		
		</div>
		
		</div>
		</div>
	</div>

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
		<div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
		</div>
      </footer>



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