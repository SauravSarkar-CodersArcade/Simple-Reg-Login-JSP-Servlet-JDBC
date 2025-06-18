<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Demo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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
		<form action="regForm" method="post">
			Name: <input type="text" name="name" /> <br/><br/>
			Email: <input type="email" name="email" /> <br/><br/>
			Password: <input type="password" name="password" /> <br/><br/>
			Gender: <input type="radio" name="gender" value="male" /> Male <input type="radio" name="gender" value="female" /> Female <br/><br/>
			City: 	<select name="city">
						<option>Select Current City</option>
						<option>Bangalore</option>
						<option>Pune</option>
						<option>Hyderabad</option>
						<option>Mumbai</option>
						<option>Delhi</option>
					</select>  <br/><br/>
			<input type="submit" value="Register" >		
		</form>
	</div>		
</body>
</html>