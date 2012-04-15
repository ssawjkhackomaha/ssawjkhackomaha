<%@ page import="voterregistration.Voter" %>
<!doctype html>
<html>
	<head>
		
		<g:set var="entityName" value="${message(code: 'voter.label', default: 'Voter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		
		    <script type="text/javascript"
		      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBR-CcNynp07piQ_5vIXn-f_QdEp7PEYqw&sensor=false">
		    </script>
		    <script type="text/javascript">
		  var geocoder;
		  var map;
		  
		  function initialize() {
		    geocoder = new google.maps.Geocoder();
		    var latlng = new google.maps.LatLng(-34.397, 150.644);
		    var myOptions = {
		      zoom: 20,
		      center: latlng,
		      mapTypeId: google.maps.MapTypeId.HYBRID
		    }
		    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

		  }
		
		  function codeAddress() {
			var regularAddressNumber = document.getElementById("regularAddressNumber-value").innerHTML;
			var regularAddressNumberSuffix = document.getElementById("regularAddressNumberSuffix-value");
			if (regularAddressNumberSuffix == null) {
				regularAddressNumberSuffix = "";
			} else {
				regularAddressNumberSuffix = regularAddressNumberSuffix.innerHTML;
			}
			var regularStreetDirectionPrefix = document.getElementById("regularStreetDirectionPrefix-value");
			if (regularStreetDirectionPrefix == null) {
				regularStreetDirectionPrefix = "";
			} else {
				regularStreetDirectionPrefix = regularStreetDirectionPrefix.innerHTML;
			}
			var regularStreetDirectionSuffix = document.getElementById("regularStreetDirectionSuffix-value");
			if (regularStreetDirectionSuffix == null) {
				regularStreetDirectionSuffix = "";
			} else {
				regularStreetDirectionSuffix = regularStreetDirectionSuffix.innerHTML;
			}
			var regularStreetName = document.getElementById("regularStreetName-value").innerHTML;
			var regularStreetType = document.getElementById("regularStreetType-value").innerHTML;
			var regularCity = document.getElementById("regularCity-value").innerHTML;
			var regularState = document.getElementById("regularState-value").innerHTML;
			
		    var address = regularAddressNumber + " " + regularAddressNumberSuffix + " " + regularStreetDirectionPrefix + " " + regularStreetName + " " + regularStreetDirectionSuffix + " " + regularStreetType + "," + regularCity + "," + regularState;
		    //alert(address);
		    geocoder.geocode( { 'address': address}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		        map.setCenter(results[0].geometry.location);
		        var marker = new google.maps.Marker({
		            map: map,
		            position: results[0].geometry.location
		        });
		      } else {
		        alert("Geocode was not successful for the following reason: " + status);
		      }
		    });
		  }
		  </script>
	</head>
	<body onload="initialize(); codeAddress();">	
		<a href="#show-voter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<!-- <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>   -->
			</ul>
		</div>
		<div id="show-voter" class="content scaffold-show" role="main">
		<div id="map_canvas" style="padding-top: 200px; padding-left: 200px; width: 79%; height: 400px;"></div>
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list voter">
			
				<g:if test="${voterInstance?.ballotType}">
				<li class="fieldcontain">
					<span id="ballotType-label" class="property-label"><g:message code="voter.ballotType.label" default="Ballot Type" /></span>
					
						<span class="property-value" aria-labelledby="ballotType-label"><g:fieldValue bean="${voterInstance}" field="ballotType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.congressionalDistrict}">
				<li class="fieldcontain">
					<span id="congressionalDistrict-label" class="property-label"><g:message code="voter.congressionalDistrict.label" default="Congressional District" /></span>
					
						<span class="property-value" aria-labelledby="congressionalDistrict-label"><g:fieldValue bean="${voterInstance}" field="congressionalDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="voter.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:fieldValue bean="${voterInstance}" field="dateOfBirth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.dateOfPartyAffiliation}">
				<li class="fieldcontain">
					<span id="dateOfPartyAffiliation-label" class="property-label"><g:message code="voter.dateOfPartyAffiliation.label" default="Date Of Party Affiliation" /></span>
					
						<span class="property-value" aria-labelledby="dateOfPartyAffiliation-label"><g:fieldValue bean="${voterInstance}" field="dateOfPartyAffiliation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.dateOfRegistration}">
				<li class="fieldcontain">
					<span id="dateOfRegistration-label" class="property-label"><g:message code="voter.dateOfRegistration.label" default="Date Of Registration" /></span>
					
						<span class="property-value" aria-labelledby="dateOfRegistration-label"><g:fieldValue bean="${voterInstance}" field="dateOfRegistration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="voter.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${voterInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="voter.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${voterInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection1998}">
				<li class="fieldcontain">
					<span id="generalElection1998-label" class="property-label"><g:message code="voter.generalElection1998.label" default="General Election1998" /></span>
					
						<span class="property-value" aria-labelledby="generalElection1998-label"><g:fieldValue bean="${voterInstance}" field="generalElection1998"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2000}">
				<li class="fieldcontain">
					<span id="generalElection2000-label" class="property-label"><g:message code="voter.generalElection2000.label" default="General Election2000" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2000-label"><g:fieldValue bean="${voterInstance}" field="generalElection2000"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2002}">
				<li class="fieldcontain">
					<span id="generalElection2002-label" class="property-label"><g:message code="voter.generalElection2002.label" default="General Election2002" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2002-label"><g:fieldValue bean="${voterInstance}" field="generalElection2002"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2004}">
				<li class="fieldcontain">
					<span id="generalElection2004-label" class="property-label"><g:message code="voter.generalElection2004.label" default="General Election2004" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2004-label"><g:fieldValue bean="${voterInstance}" field="generalElection2004"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2006}">
				<li class="fieldcontain">
					<span id="generalElection2006-label" class="property-label"><g:message code="voter.generalElection2006.label" default="General Election2006" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2006-label"><g:fieldValue bean="${voterInstance}" field="generalElection2006"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2008}">
				<li class="fieldcontain">
					<span id="generalElection2008-label" class="property-label"><g:message code="voter.generalElection2008.label" default="General Election2008" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2008-label"><g:fieldValue bean="${voterInstance}" field="generalElection2008"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.generalElection2010}">
				<li class="fieldcontain">
					<span id="generalElection2010-label" class="property-label"><g:message code="voter.generalElection2010.label" default="General Election2010" /></span>
					
						<span class="property-value" aria-labelledby="generalElection2010-label"><g:fieldValue bean="${voterInstance}" field="generalElection2010"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="voter.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${voterInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativeDistrict}">
				<li class="fieldcontain">
					<span id="legislativeDistrict-label" class="property-label"><g:message code="voter.legislativeDistrict.label" default="Legislative District" /></span>
					
						<span class="property-value" aria-labelledby="legislativeDistrict-label"><g:fieldValue bean="${voterInstance}" field="legislativeDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativeGeneralElection2001}">
				<li class="fieldcontain">
					<span id="legislativeGeneralElection2001-label" class="property-label"><g:message code="voter.legislativeGeneralElection2001.label" default="Legislative General Election2001" /></span>
					
						<span class="property-value" aria-labelledby="legislativeGeneralElection2001-label"><g:fieldValue bean="${voterInstance}" field="legislativeGeneralElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativeGeneralElection2005}">
				<li class="fieldcontain">
					<span id="legislativeGeneralElection2005-label" class="property-label"><g:message code="voter.legislativeGeneralElection2005.label" default="Legislative General Election2005" /></span>
					
						<span class="property-value" aria-labelledby="legislativeGeneralElection2005-label"><g:fieldValue bean="${voterInstance}" field="legislativeGeneralElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativeGeneralElection2009}">
				<li class="fieldcontain">
					<span id="legislativeGeneralElection2009-label" class="property-label"><g:message code="voter.legislativeGeneralElection2009.label" default="Legislative General Election2009" /></span>
					
						<span class="property-value" aria-labelledby="legislativeGeneralElection2009-label"><g:fieldValue bean="${voterInstance}" field="legislativeGeneralElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativePrimaryElection2001}">
				<li class="fieldcontain">
					<span id="legislativePrimaryElection2001-label" class="property-label"><g:message code="voter.legislativePrimaryElection2001.label" default="Legislative Primary Election2001" /></span>
					
						<span class="property-value" aria-labelledby="legislativePrimaryElection2001-label"><g:fieldValue bean="${voterInstance}" field="legislativePrimaryElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativePrimaryElection2005}">
				<li class="fieldcontain">
					<span id="legislativePrimaryElection2005-label" class="property-label"><g:message code="voter.legislativePrimaryElection2005.label" default="Legislative Primary Election2005" /></span>
					
						<span class="property-value" aria-labelledby="legislativePrimaryElection2005-label"><g:fieldValue bean="${voterInstance}" field="legislativePrimaryElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legislativePrimaryElection2009}">
				<li class="fieldcontain">
					<span id="legislativePrimaryElection2009-label" class="property-label"><g:message code="voter.legislativePrimaryElection2009.label" default="Legislative Primary Election2009" /></span>
					
						<span class="property-value" aria-labelledby="legislativePrimaryElection2009-label"><g:fieldValue bean="${voterInstance}" field="legislativePrimaryElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.maidenName}">
				<li class="fieldcontain">
					<span id="maidenName-label" class="property-label"><g:message code="voter.maidenName.label" default="Maiden Name" /></span>
					
						<span class="property-value" aria-labelledby="maidenName-label"><g:fieldValue bean="${voterInstance}" field="maidenName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.middleInitial}">
				<li class="fieldcontain">
					<span id="middleInitial-label" class="property-label"><g:message code="voter.middleInitial.label" default="Middle Initial" /></span>
					
						<span class="property-value" aria-labelledby="middleInitial-label"><g:fieldValue bean="${voterInstance}" field="middleInitial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.party}">
				<li class="fieldcontain">
					<span id="party-label" class="property-label"><g:message code="voter.party.label" default="Party" /></span>
					
						<span class="property-value" aria-labelledby="party-label"><g:fieldValue bean="${voterInstance}" field="party"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partySpecial2011}">
				<li class="fieldcontain">
					<span id="partySpecial2011-label" class="property-label"><g:message code="voter.partySpecial2011.label" default="Party Special2011" /></span>
					
						<span class="property-value" aria-labelledby="partySpecial2011-label"><g:fieldValue bean="${voterInstance}" field="partySpecial2011"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection1998}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection1998-label" class="property-label"><g:message code="voter.partyVotedGeneralElection1998.label" default="Party Voted General Election1998" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection1998-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection1998"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2000}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2000-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2000.label" default="Party Voted General Election2000" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2000-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2000"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2002}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2002-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2002.label" default="Party Voted General Election2002" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2002-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2002"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2004}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2004-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2004.label" default="Party Voted General Election2004" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2004-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2004"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2006}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2006-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2006.label" default="Party Voted General Election2006" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2006-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2006"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2008}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2008-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2008.label" default="Party Voted General Election2008" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2008-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2008"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedGeneralElection2010}">
				<li class="fieldcontain">
					<span id="partyVotedGeneralElection2010-label" class="property-label"><g:message code="voter.partyVotedGeneralElection2010.label" default="Party Voted General Election2010" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedGeneralElection2010-label"><g:fieldValue bean="${voterInstance}" field="partyVotedGeneralElection2010"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLegislativeGeneralElection2009}">
				<li class="fieldcontain">
					<span id="partyVotedLegislativeGeneralElection2009-label" class="property-label"><g:message code="voter.partyVotedLegislativeGeneralElection2009.label" default="Party Voted Legislative General Election2009" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLegislativeGeneralElection2009-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLegislativeGeneralElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLegislativePrimaryElection2009}">
				<li class="fieldcontain">
					<span id="partyVotedLegislativePrimaryElection2009-label" class="property-label"><g:message code="voter.partyVotedLegislativePrimaryElection2009.label" default="Party Voted Legislative Primary Election2009" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLegislativePrimaryElection2009-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLegislativePrimaryElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2000}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2000-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2000.label" default="Party Voted Primary Election2000" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2000-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2000"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2002}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2002-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2002.label" default="Party Voted Primary Election2002" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2002-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2002"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2004}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2004-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2004.label" default="Party Voted Primary Election2004" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2004-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2004"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2006}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2006-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2006.label" default="Party Voted Primary Election2006" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2006-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2006"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2008}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2008-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2008.label" default="Party Voted Primary Election2008" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2008-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2008"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection2010}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection2010-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection2010.label" default="Party Voted Primary Election2010" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection2010-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection2010"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.placeOfBirth}">
				<li class="fieldcontain">
					<span id="placeOfBirth-label" class="property-label"><g:message code="voter.placeOfBirth.label" default="Place Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="placeOfBirth-label"><g:fieldValue bean="${voterInstance}" field="placeOfBirth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2000}">
				<li class="fieldcontain">
					<span id="primaryElection2000-label" class="property-label"><g:message code="voter.primaryElection2000.label" default="Primary Election2000" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2000-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2000"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2002}">
				<li class="fieldcontain">
					<span id="primaryElection2002-label" class="property-label"><g:message code="voter.primaryElection2002.label" default="Primary Election2002" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2002-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2002"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2004}">
				<li class="fieldcontain">
					<span id="primaryElection2004-label" class="property-label"><g:message code="voter.primaryElection2004.label" default="Primary Election2004" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2004-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2004"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2006}">
				<li class="fieldcontain">
					<span id="primaryElection2006-label" class="property-label"><g:message code="voter.primaryElection2006.label" default="Primary Election2006" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2006-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2006"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2008}">
				<li class="fieldcontain">
					<span id="primaryElection2008-label" class="property-label"><g:message code="voter.primaryElection2008.label" default="Primary Election2008" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2008-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2008"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.primaryElection2010}">
				<li class="fieldcontain">
					<span id="primaryElection2010-label" class="property-label"><g:message code="voter.primaryElection2010.label" default="Primary Election2010" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection2010-label"><g:fieldValue bean="${voterInstance}" field="primaryElection2010"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularAddressNumber}">
				<li class="fieldcontain">
					<span id="regularAddressNumber-label" class="property-label"><g:message code="voter.regularAddressNumber.label" default="Regular Address Number" /></span>
					
						<span id="regularAddressNumber-value" class="property-value" aria-labelledby="regularAddressNumber-label"><g:fieldValue bean="${voterInstance}" field="regularAddressNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularAddressNumberSuffix}">
				<li class="fieldcontain">
					<span id="regularAddressNumberSuffix-label" class="property-label"><g:message code="voter.regularAddressNumberSuffix.label" default="Regular Address Number Suffix" /></span>
					
						<span id="regularAddressNumberSuffix-value" class="property-value" aria-labelledby="regularAddressNumberSuffix-label"><g:fieldValue bean="${voterInstance}" field="regularAddressNumberSuffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularCity}">
				<li class="fieldcontain">
					<span id="regularCity-label" class="property-label"><g:message code="voter.regularCity.label" default="Regular City" /></span>
					
						<span id="regularCity-value" class="property-value" aria-labelledby="regularCity-label"><g:fieldValue bean="${voterInstance}" field="regularCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularState}">
				<li class="fieldcontain">
					<span id="regularState-label" class="property-label"><g:message code="voter.regularState.label" default="Regular State" /></span>
					
						<span id="regularState-value" class="property-value" aria-labelledby="regularState-label"><g:fieldValue bean="${voterInstance}" field="regularState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularStreetDirectionPrefix}">
				<li class="fieldcontain">
					<span id="regularStreetDirectionPrefix-label" class="property-label"><g:message code="voter.regularStreetDirectionPrefix.label" default="Regular Street Direction Prefix" /></span>
					
						<span id="regularStreetDirectionPrefix-value" class="property-value" aria-labelledby="regularStreetDirectionPrefix-label"><g:fieldValue bean="${voterInstance}" field="regularStreetDirectionPrefix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularStreetDirectionSuffix}">
				<li class="fieldcontain">
					<span id="regularStreetDirectionSuffix-label" class="property-label"><g:message code="voter.regularStreetDirectionSuffix.label" default="Regular Street Direction Suffix" /></span>
					
						<span id="regularStreetDirectionSuffix-value" class="property-value" aria-labelledby="regularStreetDirectionSuffix-label"><g:fieldValue bean="${voterInstance}" field="regularStreetDirectionSuffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularStreetName}">
				<li class="fieldcontain">
					<span id="regularStreetName-label" class="property-label"><g:message code="voter.regularStreetName.label" default="Regular Street Name" /></span>
					
						<span id="regularStreetName-value" class="property-value" aria-labelledby="regularStreetName-label"><g:fieldValue bean="${voterInstance}" field="regularStreetName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularStreetType}">
				<li class="fieldcontain">
					<span id="regularStreetType-label" class="property-label"><g:message code="voter.regularStreetType.label" default="Regular Street Type" /></span>
					
						<span id="regularStreetType-value" class="property-value" aria-labelledby="regularStreetType-label"><g:fieldValue bean="${voterInstance}" field="regularStreetType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularUnitNumber}">
				<li class="fieldcontain">
					<span id="regularUnitNumber-label" class="property-label"><g:message code="voter.regularUnitNumber.label" default="Regular Unit Number" /></span>
					
						<span id="regularUnitNumber-value" class="property-value" aria-labelledby="regularUnitNumber-label"><g:fieldValue bean="${voterInstance}" field="regularUnitNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularUnitType}">
				<li class="fieldcontain">
					<span id="regularUnitType-label" class="property-label"><g:message code="voter.regularUnitType.label" default="Regular Unit Type" /></span>
					
						<span id="regularUnitType-value" class="property-value" aria-labelledby="regularUnitType-label"><g:fieldValue bean="${voterInstance}" field="regularUnitType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularZipCode}">
				<li class="fieldcontain">
					<span id="regularZipCode-label" class="property-label"><g:message code="voter.regularZipCode.label" default="Regular Zip Code" /></span>
					
						<span id="regularZipCode-value" class="property-value" aria-labelledby="regularZipCode-label"><g:fieldValue bean="${voterInstance}" field="regularZipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.regularZipCodeSuffix}">
				<li class="fieldcontain">
					<span id="regularZipCodeSuffix-label" class="property-label"><g:message code="voter.regularZipCodeSuffix.label" default="Regular Zip Code Suffix" /></span>
					
						<span id="regularZipCodeSuffix-value" class="property-value" aria-labelledby="regularZipCodeSuffix-label"><g:fieldValue bean="${voterInstance}" field="regularZipCodeSuffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.schoolDistrict}">
				<li class="fieldcontain">
					<span id="schoolDistrict-label" class="property-label"><g:message code="voter.schoolDistrict.label" default="School District" /></span>
					
						<span class="property-value" aria-labelledby="schoolDistrict-label"><g:fieldValue bean="${voterInstance}" field="schoolDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.serialNumber}">
				<li class="fieldcontain">
					<span id="serialNumber-label" class="property-label"><g:message code="voter.serialNumber.label" default="Serial Number" /></span>
					
						<span class="property-value" aria-labelledby="serialNumber-label"><g:fieldValue bean="${voterInstance}" field="serialNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.specialElection2011}">
				<li class="fieldcontain">
					<span id="specialElection2011-label" class="property-label"><g:message code="voter.specialElection2011.label" default="Special Election2011" /></span>
					
						<span class="property-value" aria-labelledby="specialElection2011-label"><g:fieldValue bean="${voterInstance}" field="specialElection2011"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.suffix}">
				<li class="fieldcontain">
					<span id="suffix-label" class="property-label"><g:message code="voter.suffix.label" default="Suffix" /></span>
					
						<span class="property-value" aria-labelledby="suffix-label"><g:fieldValue bean="${voterInstance}" field="suffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="voter.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${voterInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.wardPrecinct}">
				<li class="fieldcontain">
					<span id="wardPrecinct-label" class="property-label"><g:message code="voter.wardPrecinct.label" default="Ward Precinct" /></span>
					
						<span class="property-value" aria-labelledby="wardPrecinct-label"><g:fieldValue bean="${voterInstance}" field="wardPrecinct"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<!--<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${voterInstance?.id}" />
					 <g:link class="edit" action="edit" id="${voterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link> 
					 <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /> 
				</fieldset>
			</g:form> -->
		</div>
	</body>
</html>
