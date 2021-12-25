<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="shortcut icon" href="img/post-it.png">
<link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+P+One&display=swap" rel="stylesheet">
<title>Add Notes: Home page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h2 style="font-family: 'Mochiy Pop P One', sans-serif;">
			<strong>PLEASE FILL YOUR NOTE DETAILS</strong>
		</h2>
		<br>
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title"><strong>Note title</strong></label> <input type="text" required class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter note details" name="title">
			</div>
			<div class="form-group">
				<label for="CONTENT"><strong>Note content</strong></label>
				<textarea rows="10" cols="30" class="form-control" id="content" placeholder="Enter Note content here" required
					name="content"></textarea>
			</div>

			<button type="submit" class="btn btn-primary">Add</button>
		</form>
	</div>
</body>
</html>