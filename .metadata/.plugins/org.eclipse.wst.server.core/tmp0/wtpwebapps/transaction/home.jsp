<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<style>
h1 
{
    color: BLACK;
    text-align: center;
    font-family: "Times New Roman", Times, serif;
    font-weight: 900;
}
table
{
font-weight: 600;
}
body 
{
    background-image:url('back.jpg');
}

</style>
<body style="background-size: cover;" >


<body>
	<h1>Welcome to Home Page</h1>>
<table align="center">
<tr>
<td>Welcome</td>
<td><%=request.getAttribute("name") %></td>
</tr>
<tr>
<td> Your balance is  </td>
<td><%=request.getAttribute("balance") %></td>
</tr>
<tr>
	<td><br></td>
	<td><br></td>
</tr>
<tr align="Right" >
	<br><br>
<td> <button class="btn btn-primary">Add money to Wallet</button>
<form action="pay.jsp" method="post">
<%request.setAttribute("userid", request.getAttribute("name")) ;
 request.setAttribute("amount",request.getAttribute("balance"));%>
<input type="submit" >Pay Money</button></input>
</form>

</tr>
</table>
</body>
</html>