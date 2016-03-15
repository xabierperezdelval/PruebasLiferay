<%@page import="javax.portlet.ActionRequest"%>
<%@page import="javax.portlet.PortletURL"%>
<%@include file="/html/library/init.jsp"%>
<h1>Add / Edit Form</h1>

<%
	PortletURL updateBookURL = renderResponse.createActionURL();
updateBookURL.setParameter(ActionRequest.ACTION_NAME, LibraryConstants.ACTION_UPDATE_BOOK);
%>

<aui:form name="fm" method="POST"
	action="<%=updateBookURL.toString()%>">
	<aui:input name="bookTitle" label="Título del libro:">
		<aui:validator name="required"></aui:validator>
	</aui:input>
	<aui:input name="author" label="Autor:"
		helpMessage="Escribe el nombre del autor" />
	<aui:button type="submit" value="Guardar" />
</aui:form>

<br>
<a href="<portlet:renderURL/>">&laquo; Go Back </a>

<aui:script>
	Liferay.Util
			.focusFormField(document.<portlet:namespace/>fm.<portlet:namespace/>bookTitle)	
</aui:script>
	
	<aui:input name="redirectURL" type="hidden"
		value="<%= renderResponse.createRenderURL().toString() %>"/>

