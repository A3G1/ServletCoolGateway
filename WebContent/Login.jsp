<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Kumar+One+Outline|Ubuntu" rel="stylesheet">

<style>
body{
	background-image: linear-gradient(120deg, #a6c0fe 0%, #f68084 100%);
	overflow:hidden;
	}
.mudya-hoya-input{
	border-radius: 25px;
    padding: 1.4%; 
    width: 360px;
    border-style:none;
    height: 30px; 
    outline:none;
    box-shadow:2px 2px gray;
    padding-left:2%;
    padding-right:2%;
    }
    
    .mudya-hoya-input-btn{
    border-radius: 25px;
    padding: 1.4%; 
    border-style:none;
    height: 40px; 
    outline:none;
    box-shadow:2px 2px gray;
    width:40%;
    cursor:pointer;
    }
</style>
</head>
<body>
	<h1 style="position:fixed; left:35%; top:10%; font-family: 'Ubuntu', sans-serif; font-size:50pt; color:white; text-shadow:2px 2px gray;">Cool Gateway</h1>
	<span style="position:fixed; left:36%; top:27.5%; font-family: 'Ubuntu', sans-serif;font-size:small; text-align:centre; color:whitesmoke; letter-spacing: 5px;	">Developed By <b>Akshay Kotish &amp; Co.</b></span>
	<form action="HelloServlet" method="post">
	<div style="position:fixed; left:36%; top:35.5%; font-family: 'Ubuntu', sans-serif;font-size:small; text-align:centre;">
		<b style="color:white; text-shadow:2px 2px gray;">Customer ID or Mobile Number</b><br><br>
		<input class="mudya-hoya-input" Placeholder="Customer Id or Mobile Number" id="customerid" name="customerid" type="text">
		<br>
		<br>
		<b style="color:white; text-shadow:2px 2px gray;">Password</b><br><br>
		<input class="mudya-hoya-input" Placeholder="Password" id="password" type="password" name ="password">
		<br>
		<br>
		<input id="submit" type="submit" class="mudya-hoya-input-btn" style="margin-left:30%; margin-right:30%; height:40px; color:white; font-size:medium; background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);" value="Submit">
	</div>
	</form>
	<div style="text-align:center; width:100%; position:absolute; bottom:0;">
		<b style="font-size:xx-large; font-family: 'Ubuntu', sans-serif; color:#f5f7fa; text-shadow:2px 2px gray;">Vijayvergiya Resort</b>
		<br>
		<span style="font-family: 'Ubuntu', sans-serif;font-size:small; text-align:centre; color:#f5f7fa; text-shadow:2px 2px gray;">Address <b>Udaipur, Rajesthan M:12345-12345</b></span>
		<br><br>
	</div>
</body>
</html>