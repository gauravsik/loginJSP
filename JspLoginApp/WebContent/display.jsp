<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ include file="../handlers/_edu.jsp" %>
   <%@ include file="../handlers/_ocu.jsp" %>
   <%@ include file="../handlers/_res.jsp" %>
 --%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
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

	<jsp:useBean id="r" class="com.bitwise.jsploginapp.Residential"
		scope="session">
	</jsp:useBean>
	<jsp:setProperty property="*" name="r" />

	<h1>Educational Information</h1>
	<br> Firstname : <jsp:getProperty property="firstname" name="e" /><br> 
	Lastname : <jsp:getProperty property="lastname" name="e" /><br> 
	SSC Marks :<jsp:getProperty	property="sscmarks" name="e" /><br> 
	HSC Marks :	<jsp:getProperty property="hscmarks" name="e" /><br> 
	Graduation Marks : <jsp:getProperty property="gradmarks" name="e" /><br>

	<h1>Occupational Information</h1>
	Occupation : <jsp:getProperty property="occupation" name="o" /><br> 
	Present	Company : <jsp:getProperty property="presentC" name="o" /><br> 
	Last Company : <jsp:getProperty property="lastC" name="o" /><br> 
	Salary : <jsp:getProperty property="salary" name="o" /><br> 
	Total Experience : <jsp:getProperty property="totalExp" name="o" /><br>

	<h1>Residential Information</h1>
	Country : <jsp:getProperty property="country" name="r" /><br>
	State :	<jsp:getProperty property="state" name="r" /><br> 
	City : <jsp:getProperty property="city" name="r" /><br> 
	Town : <jsp:getProperty property="town" name="r" /><br> 
	Zip Code : <jsp:getProperty property="zipCode" name="r" /><br> 
	Landmark : <jsp:getProperty property="landmark" name="r" /><br>

	<form method="post" action="LogoutServlet">
		<input type="submit" value="LOGOUT">
	</form>
</body>
</html>
