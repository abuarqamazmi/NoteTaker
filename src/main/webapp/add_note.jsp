<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h3>Please fill your notes details.</h3>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
				name="title"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here"
					required="required">


			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Note Content</label> 
				<textarea  
				name="content"
				id="content" 
				placeholder="Enter your text here.."
				class="form-control"
				style="height: 250px;"
				required="required"
				></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>
	</div>
</body>
</html>