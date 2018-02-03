<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<td> Select your username </td>
<td> <input name="username" value="<%=request.getAttribute("userid") %>" length=30 type="text"/>
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
<input type="radio" value="paytm" name="merchant" checked/>paytm <br/>
<input type="radio" value="mobikwik" name="merchant" />mobikwik <br/>
<input type="radio" value="frecharge" name="merchant" />freecharge
</td>
</tr>
<tr>
<td>Gender: </td>
<td>
<p> </p>
<input type="radio" value="Male" name="gender"/>Male<br/>
<input type="radio" value="Female" name="gender" />Female <br/>
<input type="radio" value="other"  name="gender"/>Other
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
<input type="submit" value="sign up"/>
</td>
</tr>
</table>
</form>
</body>
</html>