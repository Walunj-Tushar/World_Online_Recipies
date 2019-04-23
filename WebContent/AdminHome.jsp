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
                <li><a href="ViewRequest.jsp">User Request</a></li>
                <li><a href="ViewComment.jsp">Comments</a></li>
                <li><a href="AdminAboutUs.jsp">About Us</a></li>
       <li><a style="margin-left: 150%;width: 170px;" href="#">Logout</a></li>
              </ul>
              
            </div>
          </div>
        </div>

      </div>
    </div>

<div id="id04" class="modal">
  <div class="box box1" style="padding-top: 155px;">
  <form class="modal-content animate contactForm" action="" method="get" style="width: 374px;margin-left: 850px;margin-top: -70px;">
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
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      Steamed dumplings filled with slightly spiced minced meat served with special sauce.
  				      </p>
    </div>

  </form>
    <form class="modal-content animate contactForm" action="" method="post" name="comments" id="comments" onsubmit="return User_Comment()" style="width: 374px;margin-left: 735px;margin-top: -435px;margin-right: -38px;">
        <div class="container" style="width: 340px;">
 				<div class="title text-center brder">
					<h1 class="mb-10"><i class="fa fa-user">&nbsp;Comments</h1></i>
				</div>
				<br>
				 <div class="form-row">
                <div class="col-sm-2"></div>
                  <div class="form-group col-lg-8">
                    <input type="Name" name="Password" class="form-control" id="Name" placeholder="Your Name" style="width: 310px;margin-left:-68px;" data-rule="minlen:1" data-msg="Please Enter Name" />
                   </div>
               </div>
               
  				 <div class="form-row">
  				 <div class="col-sm-2"></div>
                 <div class="form-group col-lg-8">
                    <input type="email" class="form-control" name="CommentEmail" id="CommentEmail" placeholder="Your Email" data-rule="email" data-msg="Please Enter a Valid email" style="width: 310px;margin-left: -16px;"/>
                  </div>
                  </div>
               
                <div class="form-group">
                  <textarea class="form-control" name="Message" id="Message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                </div>
              
                <div class="text-center">
                <button type="submit">Send Comment</button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				<br><br>
 				 </div>
            <div class="form-row">
            <br></div>
      
    </div>

  </form>
  </div>
</div>
<div id="id02" class="modal">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="" method="POST">
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