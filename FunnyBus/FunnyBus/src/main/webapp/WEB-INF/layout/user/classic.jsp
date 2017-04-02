<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/jquery-3.1.1.min.js"></script>

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

    <link href="/resources/styles/style.css" rel="stylesheet">
<script src="/resources/js/bootstrap.min.js" ></script>
<link href="/resources/css/style.css" rel="stylesheet">
<script src="/resources/js/chosen.jquery.min.js"></script>
<title>Funny Bus</title>
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">

<style type="text/css">
body{
background-color: #e5e5e5; 
}
header{
	background-color:#404040;
}
footer{
	background-color:#404040;
}

.navbar{
background-color:   #DCDCDC;
}
.lorem{
	font-size: 17px;
}
.kontakt{
float: left;
}
.topss{
margin-top: 8px;
}
.kontakt img{
margin-left:5px;
}
.btnss{
margin-left: 20px; 
}
.knopku-bron{
margin-left: -15px; 
}
.btn_cehia{
margin-right: -35px;
}
.btnses{
margin-top:-18px;}
.comentar{
	position: relative;
}
.vidstup img{
	margin-left: 2px;
}
.knopku-bron{
margin-left: 15px;
}
.navigationMenu li{
font-weight:bold;
}
@media(min-width:481px) and (max-width:768px) { 

	. addKoment{
	display: block;
        clear: both;
        
        margin-bottom: -100px;
        
	
	}
     .nazva {
          display: block;
        clear: both;
        margin-left: 200px;
        }
    .logo1{
        display: block;
        clear: both;
        margin-left: 200px;
       
    }
    
     .logo2{
        display: block;
        clear: both;
        margin-left: 170px;
    }
    .fotr{
        display: block;
        clear: both;
        margin-top: 50px;
        
    }
}

@media(min-width:321px) and (max-width:480px) { 
		 .logo1{
        display: block;
        clear: both;
        margin-left: 160px;
   				 }
   		.nazva{
   		
        display: block;
        clear: both;
        margin-left: 130px;
   		}
   		.fotBlock{
   		display: block;
        clear: both;
        margin-top: 100px;
   		}
   		footer{
        display: block;
        clear: both;
        height: 230px;
        }
   
   		
		}
@media(min-width: 768px) and (max-width: 991px) { 
    .nazva {
          display: block;
        clear: both;
        margin-left: 290px;
        }
        @media(min-width:481px) and (max-width:768px) { 
     .nazva {
          display: block;
        clear: both;
        margin-left: 200px;
        }
    .logo1{
        display: block;
        clear: both;
        margin-left: 200px;
       
    }
    
     .logo2{
        display: block;
        clear: both;
        margin-left: 170px;
    }
    .fotr{
        display: block;
        clear: both;
        margin-top: 50px;
        
    }
}

@media(min-width: 768px) and (max-width: 991px) { 
    .nazva {
          display: block;
        clear: both;
        margin-left: 290px;
        }
    .logo1{
        display: block;
        clear: both;
        margin-left: 260px;
    }
        
        

</style>
<!-- сюди буде підставлено атрибут з ім'ям title -->
<title><tiles:getAsString name="title" /></title>
</head>
<body>
<!-- 	а сюди jsp файл з ім'ям header -->
    <tiles:insertAttribute name="header" />
	<div class="container-fluid">
<!-- 	сюди jsp файл з ім'ям body -->
		<tiles:insertAttribute name="body" />
	</div>
<!-- 	сюди jsp файл з ім'ям footer -->
		<tiles:insertAttribute name="footer" />
<!-- 	зверніть увагу на те що в темплейт файлі (тут) -->
<!-- 	вже описано основний HTML код, в інших файлах -->
<!-- 	його писати не потрібно(я про <head><body><html>) -->
</body>
</html>