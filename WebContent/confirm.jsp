<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign up</title>
</head>

<style>
   body 
   {
    background-image:url('back.jpg') 
   }
   h1 
   {
    color: BLACK;
    text-align: center;
    font-family: "Times New Roman", Times, serif;
    font-weight: 900;
   }
   small
   {
   	color: red;
   	font-weight: 200;
   }
   form
   {
     font-weight: 600;
   }
</style>
<body style="background-size: cover;">

<body>
   <h1>
	Sign Up Page
   </h1>
<form action="check" method="post" >
<table align="center">
<tr>
<td>
Enter Your name:</td>
<td><input name="name" type="text" length=30 value="<%=request.getAttribute("name")  %> "/>
</td>
</tr>
<tr>
<td>
</td>
<td>
<small>The username is already assign select another</small>
</td>
</tr>
<tr>
<td> Select your username: </td>
<td> <input name="username" length=30 type="text" value="<%=request.getAttribute("userid") %>"/>
</td>
</tr>
<tr>
<td> Enter Your password:</td>
<td> <input name="password" type="password" length=30/> </td>
</tr>
<tr>
<td>
Select the merchant type:
</td>
<td>
<p></p>
<p></p>
<select name="merchant">
  <option value="Paytm">Paytm</option>
  <option value="Mobikwik">Mobikwik</option>
  <option value="Freecharge">Freecharge</option>
</select> 
</td>
</tr>
<tr>
<td>Gender: </td>
<td>
<p> </p>
<input type="radio" value="Male" name="gender"/>Male<br/>
<input type="radio" value="Female" name="gender" />Female <br/>
<input type="radio" value="other"  name="gender" />other <br/>

</td>

</tr>
<tr>
<td>
Email id:
</td>
<td>
<input type="text" name="email" length=30 value="<%=request.getAttribute("email") %>"/>

</td>
</tr>
<tr>
<td>
Mobile no.:
</td>
<td>
<input type="text" name="mobile" length=30  value="<%=request.getAttribute("mobile") %>"/></td>
</tr>
<tr>
<td>
</td>
<td>
<button class="btn btn-primary"> Sign up</button>
</td>
</tr>
</table>
</form>
</body>
</html>
