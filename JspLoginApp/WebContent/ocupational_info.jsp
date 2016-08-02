<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ocupational Info</title>
</head>
<body>
 
	<jsp:useBean id="e" class="com.bitwise.jsploginapp.Educational"
		scope="session">
	</jsp:useBean>
	<jsp:setProperty property="*" name="e" />
	
	<jsp:useBean id="o" class="com.bitwise.jsploginapp.Ocupational"
		scope="session">
	</jsp:useBean>
	<jsp:setProperty property="*" name="o" />
	
	<h1>Occupational Information</h1>
	<form method="post" action="residential_info.jsp">
		<label>Occupation : </label><br> <input type="text"
			name="occupation"><br> <label>Present Company :
		</label><br> <input type="text" name="presentC"><br> <label>Last
			Company : </label><br> <input type="text" name="lastC"><br>
		<label>Salary : </label><br> <input type="text" name="salary"><br>
		<label>Total Experience : </label><br> <input type="text"
			name="totalExp"><br> <input type="submit" value="SUBMIT">
	</form>
</body>
</html>