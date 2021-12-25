<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note: NoteTaker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId() %>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title"><strong>Note title</strong></label> <input type="text" required class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter note details" name="title" value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="CONTENT"><strong>Note content</strong></label>
				<textarea rows="10" cols="30" class="form-control" id="content" placeholder="Enter Note content here" required
					name="content"><%=note.getContent()%></textarea>
			</div>

			<button type="submit" class="btn btn-success">Save your note</button>
		</form>

	</div>


</body>
</html>