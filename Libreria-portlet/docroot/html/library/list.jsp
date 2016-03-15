<%@include file="/html/library/init.jsp"%>

<%@page import="java.util.List"%>
<%@page import="com.slayer.model.LMSBook"%>
<%@page import="com.slayer.service.LMSBookLocalServiceUtil"%>

<h1>List of books in our Library</h1>
<%
List<LMSBook> books =
LMSBookLocalServiceUtil.getLMSBooks(0, LMSBookLocalServiceUtil.getLMSBooksCount());
%>
<table border="1" width="80%">
<tr>
<th>Book Title</th>
<th>Author</th>
<th>Date Added</th>
</tr>
<%
for (LMSBook book : books) {
%>
<tr>
<td><%= book.getBookTitle() %></td>
<td><%= book.getAuthor() %></td>
<td><%= book.getCreateDate() %></td>
</tr>
<%
}
%>
</table>
<br/><a href="<portlet:renderURL/>">&laquo; Go Back</a>





