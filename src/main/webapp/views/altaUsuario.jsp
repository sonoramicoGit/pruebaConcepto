<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<spring:url value="/principal/alta" var="userActionUrl" />
	<form:form action="${userActionUrl}" modelAttribute="otrouser">
		<table>
			<tr>
				<td>Nombre:</td>
				<td><form:input path="nombre" /></td>
			</tr>
			<tr>
				<td><form:checkbox path="sexo" value="M" /> Masculino: <form:checkbox
						path="sexo" value="F" /> Femenino:</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save Changes" /></td>
			</tr>
		</table>
	</form:form>
</body>

</body>
</html>