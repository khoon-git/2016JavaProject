<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>자전거 대여 프로그램</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<style type="text/css">
    /* Full-width inputs */
    body{
	background-color :#fffbee;
	}
    input[type=text], input[type=password] {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    /* Set a style for all buttons */
     input[type=submit], input[type=button] {
        background: #ffecb3;
        color: #c79a00;
        padding: 0.8em;
        margin: 0.5em auto;
        border: 1px solid #cbba83;
        border-radius : 10px;
    	dispaly:block;
    	font-size:1.2em;
 		position:relative;
 		text-transform : uppercase;
        cursor: pointer;
        width: 200px;
        
    }
    .font {
        font-size: 17px;
        font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    }
    /* Add a hover effect for buttons */
    button:hover {
        opacity: 0.8;
    }
    .container {
        text-align: center;
    }
    /* Extra style for the cancel button (red) */
    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }
    /* Center the avatar image inside this container */
    .imgcontainer {
        text-align: center;
        margin: 60px 0 12px 0;
    }
    /* Avatar image */
    img.avatar {
        width: 40%;
        border-radius: 50%;
    }
    img.size {
        margin: 60px 0 12px 0;
        height: 24%;
        width: 24%;
    }
    /* The "Forgot password" text */
    span.psw {
        float: right;
        padding-top: 16px;
    }
    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
  
table{
width:35%;
height: 100px;
margin: auto;

text-align: center;
}


</style>
<title>Insert title here</title>
</head>
<body>
<img src = "../img/logo.png" width ="35%" height = "35%" style="margin-left: auto; margin-top: 100px;margin-right: auto; display: block;"/>

<form method="post" action="imgup.jsp">
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">자전거위치</td>
      <td><input type = "text" name = "userlocation" size="50" maxlength="100" required></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd" ><td colspan="3"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">시간</td>
      <td><input type = "text" name = "userusingtime" size="50" maxlength="50" required></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#ffecb3"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td colspan="2">
      <div align="center">
      <input type="submit" value="등록" >&nbsp;&nbsp;
      <input type="button" value="뒤로" onclick="location='FirstPage.jsp'">
      </div>
      <td>&nbsp;</td>
      </tr>
   </table>
		
</form>
	

<!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>
</html>