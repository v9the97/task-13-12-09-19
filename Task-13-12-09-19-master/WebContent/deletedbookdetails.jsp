<html>
<body>
<%
String v="visible",h="auto";
if(request.getAttribute("deletedbookinfo")==null){
	%>
	<center><h3>Book Not Found</h3></center>
	<% 	v="hidden";
	h="0";
	
}
%>

	<div style="visibility:<%=v %>;height:<%=h%>">
	<center><h3> Book Deleted Successfully</h3></center>
	<br>
	<h3>Deleted Book Details</h3>
	<hr>
		<pre>
			BCode   :	${deletedbookinfo.code }
			Title   :	${deletedbookinfo.title }
			Author  :	${deletedbookinfo.author }
			Subject :	${deletedbookinfo.subject }
			Price   :	${deletedbookinfo.price }
		
		</pre>
		</div>
	<hr>
	<a href="deletebook.jsp">Delete-More</a><br>
	<a href="index.jsp">Home</a>
</body>
</html>