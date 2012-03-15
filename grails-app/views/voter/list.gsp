
<%@ page import="voterregistration.Voter" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'voter.label', default: 'Voter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-voter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-voter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="boardOfRegents" title="${message(code: 'voter.boardOfRegents.label', default: 'Board Of Regents')}" />
					
						<g:sortableColumn property="bt" title="${message(code: 'voter.bt.label', default: 'Bt')}" />
					
						<g:sortableColumn property="cityC" title="${message(code: 'voter.cityC.label', default: 'City C')}" />
					
						<g:sortableColumn property="congressionalDistrict" title="${message(code: 'voter.congressionalDistrict.label', default: 'Congressional District')}" />
					
						<g:sortableColumn property="countyCommissioner" title="${message(code: 'voter.countyCommissioner.label', default: 'County Commissioner')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'voter.dateOfBirth.label', default: 'Date Of Birth')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${voterInstanceList}" status="i" var="voterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${voterInstance.id}">${fieldValue(bean: voterInstance, field: "boardOfRegents")}</g:link></td>
					
						<td>${fieldValue(bean: voterInstance, field: "bt")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "cityC")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "congressionalDistrict")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "countyCommissioner")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "dateOfBirth")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${voterInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
