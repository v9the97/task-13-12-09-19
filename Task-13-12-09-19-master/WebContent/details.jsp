<jsp:useBean id="bookinfo" class="com.wp.Books.Book" scope="session"/>


<html>
<body>

<%
String v="visible",h="auto";
out.print(session.getAttribute("bookinfo"));
if(session.getAttribute("bookinfo")==null){
	%>
	<center><h3>Book Not Found</h3></center>
	<% 	v="hidden";
	h="0";
	
}
%>
<div style="visibility:<%=v %>;height:<%=h%>">
	<h3>Book Details</h3>
	<hr>
		<pre>
			BCode   :	<jsp:getProperty name="bookinfo" property="code"/>
			Title   :	<jsp:getProperty name="bookinfo" property="title"/>
			Author  :	<jsp:getProperty name="bookinfo" property="author"/>
			Subject :	<jsp:getProperty name="bookinfo" property="subject"/>
			Price   :	<%=bookinfo.getPrice()%>
		
		</pre>
		</div>
	<hr>
	<a href="search.jsp">Search-More</a><br>
	<a href="index.jsp">Home</a>
</body>
</html>