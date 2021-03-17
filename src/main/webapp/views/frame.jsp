<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Jsp Frameset</title>
</head>
<frameset rows="10%,80%,10%">
	    <frame src="<%=request.getContextPath()%>/views/menu.jsp" name="frame1" frameborder="0"  >
		<frame src="<%=request.getContextPath()%>/views/frame2.jsp" name="principal" scrolling="false">
		<frame src="<%=request.getContextPath()%>/views/frame3.jsp" name="frame3">
</frameset>
</html>