<html>
<head>
<title>Success</title>
</head>
<body>
	<label>Welcome : <b>${applicationModel.loginModel.userName}</b> , </label>
	
	<label>You Have Successfully Logged in.</label>
	<br />
	<label>tables in database are : ${applicationModel.tableModel.getTblName()}</label>
</body>
</html>