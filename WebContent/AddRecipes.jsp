<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	function User_Recipes()
	{
	var Name=document.addrecipes.Name.value;
	var RecipeName=document.addrecipes.RecipeName.value;
	var RecipeImage=document.addrecipes.RecipeImage.value;
	var Ingredients=document.addrecipes.Ingredients.value;
	var Procedure=document.addrecipes.Procedure.value;
	var RecipeType=document.addrecipes.RecipeType.value;
	var Type=document.addrecipes.Type.value;
	
	if(Name==""){
		 alert("Enter Your Name");
		  return false;
		}
	if(RecipeName==""){
		 alert("Enter Recipe Name");
		  return false;
		}
	
	else if(RecipeType==""){
		 alert("Select Recipe Type");
		  return false;
		}
	else if(Type==""){
		 alert("Select Recipe Sub Type");
		  return false;
		}
	else if(RecipeImage==""){
		 alert("Select Image");
		  return false;
		}
	
	else if(Ingredients==""){
		 alert("Enter Ingredients");
		  return false;
		}

	else if(Procedure==""){
		 alert("Enter Procedure ");
		  return false;
		}
	
			else{
		alert("Recipe Added successfully...!");
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
	</div>
	</div>

    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->
				 <%@  page  import="java.sql.*"  %>
			<%
      			String Id="", FirstName="", LastName="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/worldrecipes", "root", "");           
            		String query="select * from usersregistration where id= '"+ Email+"'";

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			Id=rs.getString("Id");
            			FirstName=rs.getString("FirstName");
            			LastName=rs.getString("LastName");
            			Email=rs.getString("Email");
            			
             		}
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        	   }
     		catch(Exception e)
        	{
          	System.out.println(e);
        	}
			%>

   <div class="container marketing">
   <div id="myCarousel4" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <div class="carousel-inner">
      <div class="item active">
      <div class="row featurette">
      <form  action="AddRecipes" method="post" name="addrecipes" id="addrecipes" onsubmit="return User_Recipes()">
        <div class="col-md-7">
         		   <div class="title text-center brder">
					<h1 class="mb-10" style="color:#FF8500;"><i class="fa fa-user">&nbsp;ADD YOUR RECIPES HERE</h1></i>
				</div>
				<br>
				 <div class="form-row">
  				  <div class="form-group col-lg-12">
                    <input type="text" name="Name" class="form-control" id="Name"  placeholder="Your Name" data-rule="minlen:2" />
                    <div class="validation"></div>
                  </div>
                  </div>
                   <div class="form-row">
  				  <div class="form-group col-lg-12">
                    <input type="email" name="Email" class="form-control" id="Email" value="<%=Email %>" placeholder="Email" data-rule="minlen:4" />
                    <div class="validation"></div>
                  </div>
                  </div>
         		   <div class="form-row">
  				  <div class="form-group col-lg-12">
                    <input type="text" name="RecipeName" class="form-control" id="RecipeName" placeholder="Recipe Name" data-rule="minlen:4" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  <div class="form-group col-lg-3">
                  Select Type :
                </div>
  				  <div class="form-group col-lg-9">
                    	<select name="RecipeType" id="RecipeType" style="width:70px;padding-left: 0px;padding-right: 0px;">
                    	     <option value="">Select</option>
                             <option value="VEG">VEG</option>
                             <option value="NON-VEG">NON-VEG</option>
                         </select>
                  </div>
                  </div>
                  <div class="form-row">
                  <div class="form-group col-lg-3">
                  Select Recipe Type :
                </div>
  				  <div class="form-group col-lg-9">
                    	<select name="Type" id="Type" style="width:70px;padding-left: 0px;padding-right: 0px;">
                    	     <option value="">Select</option>
                             <option value="Breakfast">Breakfast</option>
                             <option value="Lunch">Lunch</option>
                             <option value="Dinner">Dinner</option>
                         </select>
                  </div>
                  </div>
                  <div class="form-row">
                  <div class="form-group col-lg-3">
                  Select Image :
                </div>
                <div class="form-group col-lg-7">
                    <input name="RecipeImage" id="RecipeImage" type="file" placeholder="">
				</div>
                </div>
                <div class="form-row">
                  <div class="form-group col-lg-12">
                    <textarea type="text" name="Ingredients" class="form-control" id="Ingredients" placeholder="Ingredients" rows="" ></textarea>
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-12">
                    <textarea type="text" name="Procedure" class="form-control" id="Procedure" placeholder="Procedure" rows="5"></textarea>
                    <div class="validation"></div>
                  </div>
               </div>
              
                <div class="text-center">
                <button type="submit">SUBMIT</button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				</div>
            <div class="form-row">
            <br></div>
</form>
        <div class="col-md-5">
          <img src="themes/assets/images/fish-and-chips.png" alt="Fish and Chips" style="margin-left: 258%;margin-top: -525px;">
         <img src="themes/assets/images/salate.png" alt="Generic placeholder image" style="margin-left: 258%;margin-top: -280px;">
         <img src="themes/assets/images/drinks.png" alt="Generic placeholder image" style="margin-left: 370%;margin-top: -420px;width: 300px;height: 200px;">
          <img class="img-circle" src="themes/assets/images/gorkha-special-chicken.png" alt="Lam Tikka" style="margin-left: -14%;margin-top: -80px;">
         
          
         </div>
      </div>
      
      </div>
   </div>
    </div><!-- /.carousel -->	  
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="themes/jquery-1.10.2.min.js"></script>
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