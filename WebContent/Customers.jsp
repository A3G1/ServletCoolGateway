<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.akshaykotish.coolgateway.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Kumar+One+Outline|Ubuntu" rel="stylesheet">

<style>
body{
	background-image: linear-gradient(120deg, #a6c0fe 0%, #f68084 100%);
	}
.mudya-hoya-input{
	border-radius: 8px;
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
    
    ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
}

li {
    float: left;
    margin-right:2%;
}

li a {
    display: block;
    text-align: center;
    padding-top: 5%;
    width:200px;
    height:30px;
    text-decoration: none;
    border-radius: 25px;
    background: linear-gradient(to bottom, rgba(255,255,255,0.30) 0%, rgba(0,0,0,0.30) 100%), radial-gradient(at top center, rgba(255,255,255,0.40) 0%, rgba(0,0,0,0.40) 120%) #989898; 
 	background-blend-mode: multiply,multiply;
 	color:white;
    font-weight:bold;
   }

li a:hover {
cursor:pointer;
    background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      
}
</style>
</head>
<body>
<h1 style="position:fixed; left:0.4%; top:0%; font-family: 'Ubuntu', sans-serif; font-size:28pt; color:white; text-shadow:2px 2px gray;">Cool Gateway</h1>
	<span style="position:fixed; left:1%; top:9.7%; font-family: 'Ubuntu', sans-serif;font-size:8pt; text-align:centre; color:whitesmoke; letter-spacing: 1px;	">Developed By <b>Akshay Kotish & Co.</b></span>
	<div style="margin-top:7%; margin-left:5%; margin-right:5%; font-family: 'Ubuntu', sans-serif; color:white;">
		<hr>
		
		<ul style="display:block;">
		<li><a>Home</a></li>
		<li><a>Create Campaign</a></li>
		<li><a>Contact</a></li>
		<li><a>About Us</a></li>
		</ul>
		<br>
		<br>
		<form action="Customer" method="post">
		<div style="margin-left:30%; margin-right:30%;">
			<h1>Add New Customer</h1>
			<hr>
			<table>
			<tr>
			<td>Name</td><td><input class="mudya-hoya-input" Placeholder="Customer Name" id="cusname" name="cusname" type="text"></td>
			</tr>
			<tr>
			<td>Age</td><td><input class="mudya-hoya-input" Placeholder="Customer Age" id="cusage" name="cusage" type="text"></td>
			</tr>
			<tr>
			<td>Contact</td><td><input class="mudya-hoya-input" Placeholder="Customer Mobile Number" id="cuscontact" name="cuscontact" type="text"></td>
			</tr>
			<tr>
			<td>Address</td><td><input class="mudya-hoya-input" Placeholder="Customer Address" id="cusaddress" name="cusaddress" type="text"></td>
			</tr>
			<tr>
			<td>Password</td><td><input class="mudya-hoya-input" Placeholder="Password" id="cuspass" name="cuspass" type="password"></td>
			</tr>
			</table>
			<br>
			<input id="submit" type="submit" class="mudya-hoya-input-btn" style="margin-left:30%; margin-right:30%; height:40px; color:white; font-size:medium; background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);" value="Submit">
		</div>
		</form>	

		<br>
		<br>
	
	<div style="margin-left:30%; margin-right:30%;">
	<h1>All Customer</h1>
			<hr>
			<table  style="width:100%;">
<tr>
<td><b>Customer Name</b></td>
<td><b>Customer Age</b></td>
<td><b>Customer Contact Number</b></td>
<td><b>Customer Address</b></td>

</tr>
<%
try{
	MYConnection mycon = new MYConnection();
if(mycon != null)
{
	Statement s = mycon.connect().createStatement();
	ResultSet resultSet = s.execute("select * from customers");
	while(resultSet.next()){
%>
<tr style="width:100%;">
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("address") %></td>
</tr>
<%
}
}
	mycon.connect().close();
} catch (Exception e) {
e.printStackTrace();
}
catch (NullPointerException ae)
{
	e.printStackTrace();
}

%>
</table>
	</div>
	</div>
</body>
</html>