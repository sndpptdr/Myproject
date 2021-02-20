<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
		
  		background-image: url('bg.jpg');
  		background-size: cover;
}
.registration{
		width: 320px;
		height: 420px;
		background: rgba(0,0,0.5);
		color: #fff;
		top: 50%;
		left: 50%;
		position: absolute;
		transform:translate(-50%,-50%);
		box-sizing:border-box;
		padding: 50px 30px;
		opacity:.7;
		
}
h1{
	mapping: 10px;
	padding: 0 0 20px;
	text-align:center;
	font-size: 22px;
}
.registration p{
	margin:0;
	padding:0;
	font-weight: bold;
}
.registration input{width: 100%;
          margin-bottom:20px;
          }
.registration input[type="text"], input[type="password"]{
          border: none;
          border-bottom: 1px solid #fff;
          background: transparent;
          outline:none;
          height:20px;
          color:#fff;
          font-size:16px;
              }
.registration input[type="submit"]{
          border: none;
          outline:none;
          height:40px;
          background:#a9a9a9	;
          color: #000000	;
          font-size:18px;
          border-radius:20px;
 }
 .registration input[type="submit"]:hover
      {    cursor:pointer;
          background:#808080;
          color:#fff;
 } 
.active{
        color:#fff;
        background:#e02626;
        border-radius:4px;
      }
p {
  color: #fff;
  text-indent: 10px;
  text-align:center;
  margin-bottom:1em;
}      
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RegistrationPage</title>
</head>
<body>
<div class ="registration">
<h1>Register Here</h1>
	<form action="Register" method="post">
<table>
<tr><td>User Name: </td><td><input class ="input" type="text" name="uname" autocomplete="off"></td></tr>
<tr><td>Password: </td><td><input type="password" name="password" autocomplete="off"></td></tr>
<tr><td>Email: </td><td><input type="text" name="email" autocomplete="off"></td></tr>
<tr><td>phone: </td><td><input type="text" name="phone" autocomplete="off"></td></tr>
<tr><td></td><td><input class ="button" type="submit" value="register" autocomplete="off"></td></tr>
</table>
</form>
<p>Already Registered?<a style="color:blue" href = "login.jsp">Login</a></p>
</div>
</body>
<script>
let input = document.querySelector(".input");
let button = document.querySelector(".button");
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