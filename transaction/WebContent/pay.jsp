<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
		body
{
	background-image: url(back.jpg);
}
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<form action = "paylogic" method="post" style="min-height: 100%">
<table align="center" style="font-size: 25px; vertical-align: middle; height: 40%; width: 50%">
<tr style="margin: 0px 10px">
<td><b>Pay To</b></td>
<td><input name="payto" type="text"  length="25" /></td>
</tr style="margin: 0px 10px">
<td><b>Amount</b></td>
<td><input name="amount" type="text"  length="25" /> </td>
<tr>
<
</table>

<div align="center" style="font-size:30px">
<button style="padding:7px 50px; font-size: 30px; color: white; background-color:#4d4dff; border-radius: 7px "  type="submit">Pay</button>
</div>
</form>
</body>
</html>