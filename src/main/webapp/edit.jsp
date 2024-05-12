<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Note</h1>
		<br>
		<%
		int note_id=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Note note=s.get(Note.class, note_id);
		s.close();
		%>
		
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" name="noteId"  type="hidden"/>
		
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
				name="title"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter here"
					required="required"
					value="<%=note.getTitle()%>">


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
				>
				<%=note.getContent() %>
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">save</button>
			</div>
			
		</form>
	</div>
</body>
</html>