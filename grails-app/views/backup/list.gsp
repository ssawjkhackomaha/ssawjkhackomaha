
<%@ page import="voterregistration.Voter" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'voter.label', default: 'Voter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<filterpane:includes />
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
			<filterpane:filterPane domain="voterregistration.Voter" filterProperties="title, firstName, middleInitial, lastName, suffix, dateOfBirth, 
			dateofRegistration, placeOfBirth, gender, party, serialNumber, regularAddressNumber, regularAddressNumberSuffix
			regularStreetDirectionPrefix, regularStreetName, regularStreetType, regularStreetDirectionSuffix, regularUnitType, regularUnitNumber,
			regularCity, regularState, regularZipCode, regularZipCodeSuffix, mailingAddress1, mailingAddress2, mailingAddress3, mailingAddress4,
			mailingCity, mailingState, mailingZipCode, mailingZipCodeSuffix, party, dateOfPartyAffiliation"/>
			<filterpane:filterButton title="Filter" />
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="serialNumber" title="${message(code: 'voter.serialNumber.label', default: 'Serial Number')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'voter.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleInitial" title="${message(code: 'voter.middleInitial.label', default: 'Middle Initial')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'voter.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="suffix" title="${message(code: 'voter.suffix.label', default: 'Suffix')}" />
					
						<g:sortableColumn property="party" title="${message(code: 'voter.party.label', default: 'Party')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'voter.dateOfBirth.label', default: 'Date Of Birth')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${voterInstanceList}" status="i" var="voterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${voterInstance.id}">${fieldValue(bean: voterInstance, field: "serialNumber")}</g:link></td>
						
						<td>${fieldValue(bean: voterInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "middleInitial")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "suffix")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "party")}</td>
					
						<td>${fieldValue(bean: voterInstance, field: "dateOfBirth")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${voterInstanceTotal == null ? Voter.count(): voterInstanceTotal}" params="${filterParams}" />
			</div>
		</div>
	</body>
</html>
