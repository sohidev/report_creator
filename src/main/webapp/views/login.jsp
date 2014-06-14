<%@	taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Spring MVC Example</title>
 <link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
</head>
<body>
	<form:form id="login" action="login.do" method="post"
		commandName="loginDetails">
		<table>
			<tr>
				<td colspan="3"><h3>Login Page</h3></td>
			</tr>
			<tr>
				<td><label>UserName</label></td>
				<td><form:input path="userName"></form:input></td>
				<td><font color="red"><form:errors path="userName"></form:errors></font></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><form:input path="password" type="password"></form:input></td>
				<td><font color="red"><form:errors path="password"></form:errors></font></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Login" /></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" align="center"><font color="red"><form:errors /></font></td>
			</tr>
		</table>
	</form:form>
</body>
</html>