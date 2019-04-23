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
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact</a></li>
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
      <div class="item active">
      <div class="row featurette">
      <form  action="UserRegistration" method="post" name="register" id="register" onsubmit="return User_Registration()">
        <div class="col-md-7">
         		   <div class="title text-center brder">
					<h1 class="mb-10" style="color:#FF8500;"><i class="fa fa-user">&nbsp;REGISTRATION HERE</h1></i>
				</div>
				<br>
         		   <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="FirstName" class="form-control" id="FirstName" placeholder="Your First Name" data-rule="minlen:4" data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="MiddleName" class="form-control" id="MiddleName" placeholder="Your Middle Name" data-rule="minlen:4" data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-4">
                    <input type="text" name="LastName" class="form-control" id="LastName" placeholder="Your Last Name" data-rule="minlen:4" data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
                <div class="form-group col-lg-4">
                    <input type="text" name="Address" class="form-control" id="Address" placeholder="Your Address" data-rule="minlen:1"  data-msg="Please Enter Your Address" />
                    <div class="validation"></div>
                  </div>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Select Your Gender :</label>
                   <div class="form-group col-lg-6">
                    <input type="radio" name="Gender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="Gender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="Gender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                 </div>
                 <div class="form-row">
  				  <div class="form-group col-lg-6">
                    <input type="text" name="Contact" class="form-control" id="Contact" placeholder="Your Contact Number" data-rule="minlen:10,maxlen:10" pattern="[0-9]{1,63}$"  data-msg="Please Your Contact Number (Only Digit Allow)" />
                    <div class="validation"></div>
                  </div>
                   <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="Email" id="Email" placeholder="Your Email" data-rule="email" data-msg="Please Enter a Valid email" style=""/>
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="password" name="Password" class="form-control" id="Password" placeholder="Your Password" data-rule="minlen:4" data-msg="Please Enter Valid Password (at least 4 chars)" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="password" name="ConfirmPassword" class="form-control" id="ConfirmPassword" placeholder="Confirm Password" data-rule="minlen:4" data-msg="Please Re-Enter Password (at least 4 chars)" />
                    <div class="validation"></div>
                  </div>
               </div>
              
                <div class="text-center">
                <button type="submit">SUBMIT</button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				</div>
            <div class="form-row">
            <br></div>

        <div class="col-md-5">
          <img src="themes/assets/images/fish-and-chips.png" alt="Fish and Chips" style="margin-left: 258%;margin-top: -295px;">
         <img src="themes/assets/images/salate.png" alt="Generic placeholder image" style="margin-left: 350%;margin-top: -133px;">
         <img src="themes/assets/images/drinks_lussy.png" alt="Generic placeholder image" style="margin-left: 370%;margin-top: -370px;">
          <img class="img-circle" src="themes/assets/images/gorkha-special-chicken.png" alt="Lam Tikka" style="margin-left: 240%;margin-top: -115px;">
         
          
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