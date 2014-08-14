<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/view/header.jsp">
	<jsp:param name="navigation" value="home" />
</jsp:include>
<section id="content" role="main" style="background: #f5f5f5;">
<header class="aui-page-header">
	<div class="aui-page-header">
		<div class="aui-page-header-inner">
			<h1>Jar Repository</h1>
		</div>
	</div>
</header>
<div class="aui-page-panel">
	<div class="aui-page-panel-inner">
		<section class="aui-page-panel-content">
			<table class="aui">
			    <thead>
			        <tr>
			            <th id="name">Name</th>
			            <th id="type"></th>
			            <th id="order"></th>
			            <th id="action"></th>
			        </tr>
			    </thead>
			    <tbody>
			    	<c:forEach items="${page.content}" var="jarFile">
			    	<tr>
			    		<td headers="name">${jarFile.name}</td>
			            <th id="type"></th>
			            <th id="order"></th>
			            <th id="action"></th>
			    	</tr>
			    	</c:forEach>
			    </tbody>
			</table>
		</section>
	</div>
</div>
</section>
<jsp:include page="/WEB-INF/view/footer.jsp" />