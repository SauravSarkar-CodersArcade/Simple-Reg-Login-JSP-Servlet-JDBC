<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Demo</title>
<style>
  body {
      margin: 0;
      font-family: sans-serif;
      background: linear-gradient(135deg, #4b0082, #c71585, #1e3c72);
      background-size: 400% 400%;
      animation: gradientBG 15s ease infinite;
      color: white;
  }
  
  @keyframes gradientBG {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

  .container {
    width: 300px;
    margin: 50px auto;
    padding: 20px;
    background-color:   #aaa7b1 ;  /* Dark gray background */
    border-radius: 10px;
    text-align: center;
    color: black;
  }
</style>
</head>
<body>
	<div class="container">
		<form action="loginForm" method="post">
		Email: <input type="text" name="email" /> <br/><br/>
		Password: <input type="password" name="password" /> <br/><br/>
		<input type="submit" value="Login" />
		</form>
	</div>
</body>
</html>