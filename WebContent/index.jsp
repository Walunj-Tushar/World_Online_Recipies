<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DbConnection"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="java.io.File"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<!DOCTYPE html>
<html>
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
        padding-top: 60px;
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
    padding-top: 0px;
}     
.container1	
{
       width: 50%;
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
   .dropdown
   {
   	position: relative !important;
    display: inline-block !important;
   }
   .dropdown-menu
   {
   	    display: none;
    position: absolute;
   	}
   	.dropdown:hover .dropdown-menu
   	{
   		display:block;
   	}
    
   .dropdown1
   {
   	position: relative !important;
    display: inline-block !important;
   }
   .dropdown-menu1
   {
   	    display: none;
    position: absolute;
    color:black;
     top: 100%;
    left: 0;
    z-index: 1000;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    list-style: none;
    font-size: 14px;
    background-color: #fff;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
    background-clip: padding-box;

   	}
   	.dropdown1:hover .dropdown-menu1
   	{
   		display:block;
   	}
    </style>
    <script type="text/javascript">
	function User_Comment()
	{  
	var pattern=/[^a-z|^A-Z|^\s]/;
	
	var Name=document.comments.Name.value;
	var Message=document.comments.Message.value;
	var CommentEmail=document.comments.CommentEmail.value;
		
	if(Name=="" || Name.length>15){
		 alert("Enter Name");
		  return false;
		}
		
	
	var atpos = CommentEmail.indexOf("@");
	var dotpos = CommentEmail.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=CommentEmail.length){
		 alert("Enter Valid Email address!");
		  return false;
		}

	else if(Message==""){
		 alert("Enter Message");
		  return false;
		}

	else{
		alert("Comment Send successfully...!");
	}
	return true;
	}
</script>
<script type="text/javascript">
function User_Login()
{  
var pattern=/[^a-z|^A-Z|^\s]/;

var Email=document.login.Name.value;
var Password=document.login.Message.value;
	
var atpos = Email.indexOf("@");
var dotpos = Email.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=Email.length){
	 alert("Enter Valid Email address!");
	  return false;
	}

else if(Password==""){
	 alert("Enter Message");
	  return false;
	}

else{
	alert("Login successfully...!");
}
return true;
}
</script>    
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
                <li class="active"><a href="">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Indina <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="" class="dropdown-toggle" data-toggle="dropdown">VEG <b class="caret"></b></a>
               		 </li>
                    <li class="dropdown1">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Indina <b class="caret"></b></a>
                 	<ul class="dropdown-menu1">
                    <li><a href="" class="dropdown-toggle" data-toggle="dropdown">VEG <b class="caret"></b></a>
               		 </li>
                    <li><a href="#">NON-VEG</a></li>
                 	</ul></li>
                 </ul>
                </li>
  <li><a onclick="document.getElementById('id04').style.display='block'" style="margin-left: 210%;width: 170px;">Login</a></li>
            </ul>
              
            </div>
          </div>
        </div>

      </div>
    </div>

<div id="id04" class="modal">
  <div class="box box1" style="padding-top: 155px;">
  <form class="modal-content animate contactForm" action="Login" method="post" style="width: 374px;margin-left: 850px;margin-top: -70px;"  name="login" id="login" onsubmit="return User_Login()" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>

    <div class="container" style="width: 340px;">
 				<div class="title text-center brder">
					<h1 class="mb-10"><i class="fa fa-user">&nbsp;LOGIN HERE</h1></i>
				</div>
				<br>
  				 <div class="form-row">
  				 <div class="col-sm-2"></div>
                 <div class="form-group col-lg-8">
                    <input type="email" class="form-control" name="Email" id="Email" placeholder="Your Email" data-rule="email" data-msg="Please Enter a Valid email" style="width: 270px;margin-left: -56px;"/>
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
                <div class="col-sm-2"></div>
                  <div class="form-group col-lg-8">
                    <input type="password" name="Password" class="form-control" id="Password" placeholder="Your Password" style="width: 270px;margin-left:-5px;" data-rule="minlen:1" data-msg="Please Enter Valid Password" />
                    <div class="validation" style="width: 200px;margin-left: 47px;"></div>
                  </div>
               </div>
               
              
                <div class="text-center">
                <button type="submit">LOGIN</button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				<br><br><h6 class="title"><blink><a href="Registration.jsp" style="color:blue;">Click Here For New Registration</a></blink></h6>                
                </div>
            <div class="form-row">
            <br></div>
      
    </div>

  </form>
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
      <div class="item active">
      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Fish and Chips <span class="text-muted">It's very very testy</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img src="themes/assets/images/fish-and-chips.png" alt="Fish and Chips">
        </div>
      </div>
      </div>

      
	<div class="item">
      <div class="row featurette">
        <div class="col-md-5">
          <img src="themes/assets/images/burger.png" alt="Generic placeholder image">
        </div>
        <div class="col-md-7">
          <h2 class="featurette-heading">Oh yeah, very nice Burger. <span class="text-muted">Delicious.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
      </div>
      </div>


	<div class="item">
      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Try yourself <span class="text-muted">Testy</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
		  <img class="img-circle" src="themes/assets/images/drinks.png" alt="Generic placeholder image">
        </div>
      </div>
      </div>
	   </div>
    </div><!-- /.carousel -->	  
    </div><!-- /.container -->
	<div class="mainTitle">
	<div class="container">
	<h1>VEG / NON-VEG</h1>
	</div>
	</div>
	 
<div id="id01" class="modal" value="">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close close1" title="Close Modal">&times;</span>
          </div>
<%
String driver1 = "com.mysql.jdbc.Driver";
String connectionUrl1 = "jdbc:mysql://localhost:3306/";
String database1 = "worldrecipes";
String userid1 = "root";
String password1 = "";
try {
Class.forName(driver1);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection1 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;
%>
<%
try{
connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
statement1=connection1.createStatement();
String sql1 ="select * from addrecipe where Status=1 and Id='1'";
resultSet1 = statement1.executeQuery(sql1);


while(resultSet1.next()){
	
	Blob image=resultSet1.getBlob("RecipeImage");
	byte[] imgData =image.getBytes(1,(int)image.length());
	String imgDataBase64 = new String(Base64.getEncoder().encode(imgData));							
%>

    <div class="container1">
 				<div class="title text-center brder">
 				<br>
 				<img src="data:image/jpg;base64,<%=imgDataBase64 %>" alt="no image"  width="150px" height="100px"/>
			<h1 class="mb-10" style="color:#FF8500;"><%=resultSet1.getString("RecipeName") %></h1>
				</div>
				<br><%=resultSet1.getString("Id") %>
						<h1 class="mb-10" style="color:red;">Recipe :</h1>
				      <p class="p1">
 						<%=resultSet1.getString("Procedure") %></td>
 						<br><br><br><br><br><br><br><br>
 				      </p>
    </div>
<%

}
connection1.close();
} catch (Exception e) {
e.printStackTrace();
}
%>        

  </form>
    <form class="modal-content animate contactForm"  style="width: 374px;margin-left: 735px;margin-top: -450px;margin-right: -38px;">
        <div class="container" style="width: 340px;">
 				<div class="title text-center brder">
					<h1 class="mb-10"><i class="fa fa-user">&nbsp;Comments</h1></i>
					<font color="aqua"><a onclick="document.getElementById('id02').style.display='block'" style="color: blue;" >Send Comment Click Here</a></font>
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
           <c:forEach var="rows" items="${result.rows}">
        
				 <div class="form-row">
                <div class="col-sm-"></div>
                  <div class="form-group col-lg-8">
                		<font color="red"><c:out value="${rows.Name}" /> :</font><c:out value="${rows.Message}" /> <br>
                   </div>
               </div>
        </c:forEach>      

            	 </div>
            <div class="form-row">
            <br></div>
      </form>
    </div>

  </form>
  <div id="id02" class="modal">
  <div class="box box1" style="padding-top: 155px;">
    <form class="modal-content animate contactForm" action="UserComments" method="post" name="comments" id="comments" onsubmit="return User_Comment()" style="width: 374px;margin-left: 735px;margin-top: -55px;margin-right: -38px;">
          <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close close1" title="Close Modal">&times;</span>
          </div>
        <div class="container" style="width: 340px;">
 				<div class="title text-center brder">
					<h1 class="mb-10"><i class="fa fa-user">&nbsp;Comments</h1></i>
				</div>
				<br>
				 <div class="form-row">
                <div class="col-sm-2"></div>
                  <div class="form-group col-lg-8">
                    <input type="Name" name="Name" class="form-control" id="Name" placeholder="Your Name" style="width: 310px;margin-left:-68px;" data-rule="minlen:1" data-msg="Please Enter Name" />
                   </div>
               </div>
               
  				 <div class="form-row">
  				 <div class="col-sm-2"></div>
                 <div class="form-group col-lg-8">
                    <input type="email" class="form-control" name="CommentEmail" id="CommentEmail" placeholder="Your Email" data-rule="email" data-msg="Please Enter a Valid email" style="width: 310px;margin-left: -16px;"/>
                  </div>
                  </div>
               
                <div class="form-group">
                  <textarea type="text" class="form-control" name="Message" id="Message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                </div>
              
                <div class="text-center">
                <button type="submit">Send Comment</button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				<br><br>
 				 <br><br>
            	 </div>
            <div class="form-row">
            <br></div>
      
    </div>

  </form>  </div>
</div>
  
   </div>
</div>

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
	
<div class="mainTitle"></div>
    <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      
      
      <%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "worldrecipes";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addrecipe where Status=1";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
	
	Blob image=resultSet.getBlob("RecipeImage");
	byte[] imgData =image.getBytes(1,(int)image.length());
	String imgDataBase64 = new String(Base64.getEncoder().encode(imgData));							
%>

      
      <div class="row">
        <div class="col-lg-4">
          <img src="data:image/jpg;base64,<%=imgDataBase64 %>" alt="no image"  width="150px" height="100px"/>
         <h2 class="mb-10" style="color:#FF8500;"><%=resultSet.getString("RecipeName") %></h2>
         <p><a class="btn btn-default" id="<%=resultSet.getString("Id") %>" onclick="document.getElementById('id01','<%=resultSet.getString("Id") %>').style.display='block'" role="button">VIEW &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        
        <%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>        
          </div><!-- /.row -->
	</div>
	

	
<br><br><br><br><br><br><br><br><br>	
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
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="themes/dist/js/bootstrap.min.js"></script>
    <script src="themes/assets/js/holder.js"></script>
	<script src="themes/contactform.js"></script>
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
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