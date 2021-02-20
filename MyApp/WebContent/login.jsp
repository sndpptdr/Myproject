<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
          margin:0;
          padding:0;
          background:url("bg.jpg");
          background-size: cover;
          font-family: sans-serif;
}
.loginbox{  width: 320px;
          height: 420px;
          background: #000;
          color: #fff;
          top:50%;
          left:50%;
          position:absolute;
          transform: translate(-50%,-50%);
          box-sizing: border-box;
          padding: 70px 30px;
          opacity:.7;
}
h1{    
	mapping: 0;
	padding: 0 0 20px;
	text-align:center;
	font-size: 22px;
}    
      .loginbox p{  margin:0;
          padding: 0;
          font-weight:bold;
}
      .loginbox input{width: 100%;
          margin-bottom:20px;
}
      .loginbox input[type="text"], input[type="password"]{
          border: none;
          border-bottom: 1px solid #fff;
          background: transparent;
          outline:none;
          height:40px;
          color:#fff;
          font-size:16px;
}
      .loginbox input[type="submit"]{
          border: none;
          outline:none;
          height:40px;
          background:#a9a9a9;
          color: #000;
          font-size:18px;
          border-radius:20px;
}
      .loginbox input[type="submit"]:hover
      {    cursor:pointer;
          background:#808080;
          color:#fff;
      }
</style>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<div class ="loginbox">
	<div align="center">
		<h1>User Login</h1>
		<form action="login" method="post">
			<table>
				<tr>
					<td>UserName</td>
					<td><input class ="input" type="text" name="username" autocomplete="off"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" autocomplete="off" /></td>
				</tr>

			</table>
			<input class ="submit" type="submit" value="Login" />
			
		</form>
		<a href="memberRegistration.jsp">
       		<input type="submit" value="signup"/>
    		 </a>
	</div>
	</div>
</body>
<script>
let input = document.querySelector(".input");
let button = document.querySelector(".submit");
button.disabled = true;
input.addEventListener("change", stateHandle);
function stateHandle() {
  if (document.querySelector(".input").value === "") {
    button.disabled = true;
  } else {
    button.disabled = false;
  }
}
</script>
</html>