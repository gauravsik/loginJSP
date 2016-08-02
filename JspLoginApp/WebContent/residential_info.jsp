<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Residential Info</title>
</head>
<body>
   
	<jsp:useBean id="o" class="com.bitwise.jsploginapp.Ocupational"
		scope="session">
	</jsp:useBean>
	<jsp:setProperty property="*" name="o" />

	<jsp:useBean id="r" class="com.bitwise.jsploginapp.Residential"
		scope="session">
	</jsp:useBean>
	<jsp:setProperty property="*" name="r" />

	<h1>Residential Information</h1>
	<form method="post" action="display.jsp">
		<label>Country : </label><br> <input type="text" name="country"><br>
		<label>State : </label><br> <input type="text" name="state"><br>
		<label>City : </label><br> <input type="text" name="city"><br>
		<label>Town : </label><br> <input type="text" name="town"><br>
		<label>Zip Code : </label><br> <input type="text" name="zipCode"><br>
		<label>Landmark : </label><br> <input type="text" name="landmark"><br>
		<input type="submit" name="submit" value="SUBMIT"><br>

	</form>
	
	
</body>
</html>