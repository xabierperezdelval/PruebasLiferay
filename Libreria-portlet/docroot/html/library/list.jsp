<%@include file="/html/library/init.jsp"%>
<%@page import="com.liferay.portal.kernel.util.ListUtil" %>



<h1>Lista de libros en la biblioteca</h1>
<%
	List<LMSBook> books = LMSBookLocalServiceUtil.getLMSBooks(0,
			LMSBookLocalServiceUtil.getLMSBooksCount());
%>

<liferay-ui:search-container delta="4"
emptyResultsMessage="No se encuentran libros con esos criterios de búsqueda">

	<liferay-ui:search-container-results
		 total="<%= books.size() %>"
		 results="<%= ListUtil.subList (books,
				 searchContainer.getStart(), searchContainer.getEnd()) %>"/>
	
	<liferay-ui:search-container-row modelVar="book" className="LMSBook">
		<liferay-ui:search-container-column-text name="Título del libro" property="bookTitle"/>
		<liferay-ui:search-container-column-text name="Autor" property="author"/>
		<liferay-ui:search-container-column-text name="Fecha añadido" property="createDate"/>
	</liferay-ui:search-container-row>
	<liferay-ui:search-iterator searchContainer="<%= searchContainer %>"/>
</liferay-ui:search-container>
		
		 
	



<br />
<a href="<portlet:renderURL/>">&laquo; Volver</a>





