<%@include file="/html/library/init.jsp"%>
<portlet:renderURL var="updateBookURL">
	<portlet:param name="jspPage"
		value="<%=LibraryConstants.PAGE_UPDATE%>" />
</portlet:renderURL>
<br />
<a href="<%=updateBookURL%>">Add new Book &raquo;</a>

<%--ESTO ESTÁ COMENTADO POR SUGERENCIA DEL LIBRO LIFERAY PORTLET COOKBOOK <%
PortletURL listBooksURL = renderResponse.createRenderURL();
listBooksURL.setParameter("jspPage", "/html/library/list.jsp");
%>
&nbsp;|&nbsp;
<a href="<%= listBooksURL.toString() %>">Show All Books &raquo;</a> --%>

<hr />
<a href="javascript:void();" id="jqueryText">jQuery in action</a>

<div id="sayHelloDiv" style="display: none">jQuery is working</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#jqueryText').on('click', function() {
			$('#sayHelloDiv').toggle();
			$("#tabs").tabs();
		});
	});
</script>

<hr/>

<div id="tabs">
	<ul>
		<li><a href="#tabs-1">Pestaña 1</a></li>
		<li><a href="#tabs-2">Pestaña 2</a></li>
		<li><a href="#tabs-3">Pestaña 3</a></li>
	</ul>
	
	<div id="tabs-1">Contenido Pestaña 1</div>
	<div id="tabs-2">Contenido Pestaña 2</div>
	<div id="tabs-3">Contenido Pestaña 3</div>
</div>

<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();
	});
</script>

