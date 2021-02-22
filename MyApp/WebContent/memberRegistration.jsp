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
		padding: 10px 40px;
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
              
input[type=submit]:disabled {
					border: none;
          outline:none;
          height:40px;
          color: #000;
          font-size:18px;
          border-radius:20px;
}
input[type=submit]:enabled { cursor: pointer;
					border: none;
          outline:none;
          height:40px;
          background:#a9a9a9;
          color: #fff;
          font-size:18px;
          border-radius:20px;
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
<form  action="Register" method="post">

Name:<input type="text" name="uname" autocomplete="off" onkeyup="manage(this)"/>

Password:<input type="password" name="password" autocomplete="off" onkeyup="manage(this)"/>

Email:<input type="text" name="email" autocomplete="off" onkeyup="manage(this)"/>

Phone:<input type="text" name="phone" autocomplete="off" onkeyup="manage(this)"/>

<input type="submit" value="register" id="submit" disabled />
</form>
<p>Already Registered?<a style="color:blue" href = "login.jsp">login</a></p>
</div>
</body>


<script>
    function manage(txt) {
        var bt = document.getElementById('submit');
        var ele = document.getElementsByTagName('input'); 
		
        // Loop through each element.
        for (i = 0; i < ele.length; i++) {
        	

            // Check the element type.
            if (ele[i].type == 'text' && ele[i].value == '') {
                bt.disabled = true;    // Disable the button.
                return false;
            }
            else {
                bt.disabled = false;   // Enable the button.
            }
        }
    }
</script>
</html>