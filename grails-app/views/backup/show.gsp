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
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-voter" class="content scaffold-show" role="main">
		<div id="map_canvas" style="padding-top: 200px; padding-left: 200px; width: 79%; height: 400px;"></div>
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list voter">
			
				<g:if test="${voterInstance?.boardOfRegents}">
				<li class="fieldcontain">
					<span id="boardOfRegents-label" class="property-label"><g:message code="voter.boardOfRegents.label" default="Board Of Regents" /></span>
					
						<span class="property-value" aria-labelledby="boardOfRegents-label"><g:fieldValue bean="${voterInstance}" field="boardOfRegents"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.bt}">
				<li class="fieldcontain">
					<span id="bt-label" class="property-label"><g:message code="voter.bt.label" default="Bt" /></span>
					
						<span class="property-value" aria-labelledby="bt-label"><g:fieldValue bean="${voterInstance}" field="bt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.cityC}">
				<li class="fieldcontain">
					<span id="cityC-label" class="property-label"><g:message code="voter.cityC.label" default="City C" /></span>
					
						<span class="property-value" aria-labelledby="cityC-label"><g:fieldValue bean="${voterInstance}" field="cityC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.congressionalDistrict}">
				<li class="fieldcontain">
					<span id="congressionalDistrict-label" class="property-label"><g:message code="voter.congressionalDistrict.label" default="Congressional District" /></span>
					
						<span class="property-value" aria-labelledby="congressionalDistrict-label"><g:fieldValue bean="${voterInstance}" field="congressionalDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.countyCommissioner}">
				<li class="fieldcontain">
					<span id="countyCommissioner-label" class="property-label"><g:message code="voter.countyCommissioner.label" default="County Commissioner" /></span>
					
						<span class="property-value" aria-labelledby="countyCommissioner-label"><g:fieldValue bean="${voterInstance}" field="countyCommissioner"/></span>
					
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
			
				<g:if test="${voterInstance?.educationalServiceUnit}">
				<li class="fieldcontain">
					<span id="educationalServiceUnit-label" class="property-label"><g:message code="voter.educationalServiceUnit.label" default="Educational Service Unit" /></span>
					
						<span class="property-value" aria-labelledby="educationalServiceUnit-label"><g:fieldValue bean="${voterInstance}" field="educationalServiceUnit"/></span>
					
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
			
				<g:if test="${voterInstance?.lc}">
				<li class="fieldcontain">
					<span id="lc-label" class="property-label"><g:message code="voter.lc.label" default="Lc" /></span>
					
						<span class="property-value" aria-labelledby="lc-label"><g:fieldValue bean="${voterInstance}" field="lc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.ld}">
				<li class="fieldcontain">
					<span id="ld-label" class="property-label"><g:message code="voter.ld.label" default="Ld" /></span>
					
						<span class="property-value" aria-labelledby="ld-label"><g:fieldValue bean="${voterInstance}" field="ld"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.legacySerialNumber}">
				<li class="fieldcontain">
					<span id="legacySerialNumber-label" class="property-label"><g:message code="voter.legacySerialNumber.label" default="Legacy Serial Number" /></span>
					
						<span class="property-value" aria-labelledby="legacySerialNumber-label"><g:fieldValue bean="${voterInstance}" field="legacySerialNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localGeneralElection2001}">
				<li class="fieldcontain">
					<span id="localGeneralElection2001-label" class="property-label"><g:message code="voter.localGeneralElection2001.label" default="Local General Election2001" /></span>
					
						<span class="property-value" aria-labelledby="localGeneralElection2001-label"><g:fieldValue bean="${voterInstance}" field="localGeneralElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localGeneralElection2005}">
				<li class="fieldcontain">
					<span id="localGeneralElection2005-label" class="property-label"><g:message code="voter.localGeneralElection2005.label" default="Local General Election2005" /></span>
					
						<span class="property-value" aria-labelledby="localGeneralElection2005-label"><g:fieldValue bean="${voterInstance}" field="localGeneralElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localGeneralElection2009}">
				<li class="fieldcontain">
					<span id="localGeneralElection2009-label" class="property-label"><g:message code="voter.localGeneralElection2009.label" default="Local General Election2009" /></span>
					
						<span class="property-value" aria-labelledby="localGeneralElection2009-label"><g:fieldValue bean="${voterInstance}" field="localGeneralElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localPrimaryElection2001}">
				<li class="fieldcontain">
					<span id="localPrimaryElection2001-label" class="property-label"><g:message code="voter.localPrimaryElection2001.label" default="Local Primary Election2001" /></span>
					
						<span class="property-value" aria-labelledby="localPrimaryElection2001-label"><g:fieldValue bean="${voterInstance}" field="localPrimaryElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localPrimaryElection2005}">
				<li class="fieldcontain">
					<span id="localPrimaryElection2005-label" class="property-label"><g:message code="voter.localPrimaryElection2005.label" default="Local Primary Election2005" /></span>
					
						<span class="property-value" aria-labelledby="localPrimaryElection2005-label"><g:fieldValue bean="${voterInstance}" field="localPrimaryElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.localPrimaryElection2009}">
				<li class="fieldcontain">
					<span id="localPrimaryElection2009-label" class="property-label"><g:message code="voter.localPrimaryElection2009.label" default="Local Primary Election2009" /></span>
					
						<span class="property-value" aria-labelledby="localPrimaryElection2009-label"><g:fieldValue bean="${voterInstance}" field="localPrimaryElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.maidenName}">
				<li class="fieldcontain">
					<span id="maidenName-label" class="property-label"><g:message code="voter.maidenName.label" default="Maiden Name" /></span>
					
						<span class="property-value" aria-labelledby="maidenName-label"><g:fieldValue bean="${voterInstance}" field="maidenName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingAddress1}">
				<li class="fieldcontain">
					<span id="mailingAddress1-label" class="property-label"><g:message code="voter.mailingAddress1.label" default="Mailing Address1" /></span>
					
						<span class="property-value" aria-labelledby="mailingAddress1-label"><g:fieldValue bean="${voterInstance}" field="mailingAddress1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingAddress2}">
				<li class="fieldcontain">
					<span id="mailingAddress2-label" class="property-label"><g:message code="voter.mailingAddress2.label" default="Mailing Address2" /></span>
					
						<span class="property-value" aria-labelledby="mailingAddress2-label"><g:fieldValue bean="${voterInstance}" field="mailingAddress2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingAddress3}">
				<li class="fieldcontain">
					<span id="mailingAddress3-label" class="property-label"><g:message code="voter.mailingAddress3.label" default="Mailing Address3" /></span>
					
						<span class="property-value" aria-labelledby="mailingAddress3-label"><g:fieldValue bean="${voterInstance}" field="mailingAddress3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingAddress4}">
				<li class="fieldcontain">
					<span id="mailingAddress4-label" class="property-label"><g:message code="voter.mailingAddress4.label" default="Mailing Address4" /></span>
					
						<span class="property-value" aria-labelledby="mailingAddress4-label"><g:fieldValue bean="${voterInstance}" field="mailingAddress4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingCity}">
				<li class="fieldcontain">
					<span id="mailingCity-label" class="property-label"><g:message code="voter.mailingCity.label" default="Mailing City" /></span>
					
						<span class="property-value" aria-labelledby="mailingCity-label"><g:fieldValue bean="${voterInstance}" field="mailingCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingState}">
				<li class="fieldcontain">
					<span id="mailingState-label" class="property-label"><g:message code="voter.mailingState.label" default="Mailing State" /></span>
					
						<span class="property-value" aria-labelledby="mailingState-label"><g:fieldValue bean="${voterInstance}" field="mailingState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingZipCode}">
				<li class="fieldcontain">
					<span id="mailingZipCode-label" class="property-label"><g:message code="voter.mailingZipCode.label" default="Mailing Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="mailingZipCode-label"><g:fieldValue bean="${voterInstance}" field="mailingZipCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mailingZipCodeSuffix}">
				<li class="fieldcontain">
					<span id="mailingZipCodeSuffix-label" class="property-label"><g:message code="voter.mailingZipCodeSuffix.label" default="Mailing Zip Code Suffix" /></span>
					
						<span class="property-value" aria-labelledby="mailingZipCodeSuffix-label"><g:fieldValue bean="${voterInstance}" field="mailingZipCodeSuffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.mayor}">
				<li class="fieldcontain">
					<span id="mayor-label" class="property-label"><g:message code="voter.mayor.label" default="Mayor" /></span>
					
						<span class="property-value" aria-labelledby="mayor-label"><g:fieldValue bean="${voterInstance}" field="mayor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.metro}">
				<li class="fieldcontain">
					<span id="metro-label" class="property-label"><g:message code="voter.metro.label" default="Metro" /></span>
					
						<span class="property-value" aria-labelledby="metro-label"><g:fieldValue bean="${voterInstance}" field="metro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.metropolitanUtilitiesDistrict}">
				<li class="fieldcontain">
					<span id="metropolitanUtilitiesDistrict-label" class="property-label"><g:message code="voter.metropolitanUtilitiesDistrict.label" default="Metropolitan Utilities District" /></span>
					
						<span class="property-value" aria-labelledby="metropolitanUtilitiesDistrict-label"><g:fieldValue bean="${voterInstance}" field="metropolitanUtilitiesDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.middleInitial}">
				<li class="fieldcontain">
					<span id="middleInitial-label" class="property-label"><g:message code="voter.middleInitial.label" default="Middle Initial" /></span>
					
						<span class="property-value" aria-labelledby="middleInitial-label"><g:fieldValue bean="${voterInstance}" field="middleInitial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.naturalResourcesDistrict}">
				<li class="fieldcontain">
					<span id="naturalResourcesDistrict-label" class="property-label"><g:message code="voter.naturalResourcesDistrict.label" default="Natural Resources District" /></span>
					
						<span class="property-value" aria-labelledby="naturalResourcesDistrict-label"><g:fieldValue bean="${voterInstance}" field="naturalResourcesDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.oppd}">
				<li class="fieldcontain">
					<span id="oppd-label" class="property-label"><g:message code="voter.oppd.label" default="Oppd" /></span>
					
						<span class="property-value" aria-labelledby="oppd-label"><g:fieldValue bean="${voterInstance}" field="oppd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.party}">
				<li class="fieldcontain">
					<span id="party-label" class="property-label"><g:message code="voter.party.label" default="Party" /></span>
					
						<span class="property-value" aria-labelledby="party-label"><g:fieldValue bean="${voterInstance}" field="party"/></span>
					
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
			
				<g:if test="${voterInstance?.partyVotedLocalGeneralElection2001}">
				<li class="fieldcontain">
					<span id="partyVotedLocalGeneralElection2001-label" class="property-label"><g:message code="voter.partyVotedLocalGeneralElection2001.label" default="Party Voted Local General Election2001" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalGeneralElection2001-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalGeneralElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLocalGeneralElection2005}">
				<li class="fieldcontain">
					<span id="partyVotedLocalGeneralElection2005-label" class="property-label"><g:message code="voter.partyVotedLocalGeneralElection2005.label" default="Party Voted Local General Election2005" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalGeneralElection2005-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalGeneralElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLocalGeneralElection2009}">
				<li class="fieldcontain">
					<span id="partyVotedLocalGeneralElection2009-label" class="property-label"><g:message code="voter.partyVotedLocalGeneralElection2009.label" default="Party Voted Local General Election2009" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalGeneralElection2009-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalGeneralElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLocalPrimaryElection2001}">
				<li class="fieldcontain">
					<span id="partyVotedLocalPrimaryElection2001-label" class="property-label"><g:message code="voter.partyVotedLocalPrimaryElection2001.label" default="Party Voted Local Primary Election2001" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalPrimaryElection2001-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalPrimaryElection2001"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLocalPrimaryElection2005}">
				<li class="fieldcontain">
					<span id="partyVotedLocalPrimaryElection2005-label" class="property-label"><g:message code="voter.partyVotedLocalPrimaryElection2005.label" default="Party Voted Local Primary Election2005" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalPrimaryElection2005-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalPrimaryElection2005"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedLocalPrimaryElection2009}">
				<li class="fieldcontain">
					<span id="partyVotedLocalPrimaryElection2009-label" class="property-label"><g:message code="voter.partyVotedLocalPrimaryElection2009.label" default="Party Voted Local Primary Election2009" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedLocalPrimaryElection2009-label"><g:fieldValue bean="${voterInstance}" field="partyVotedLocalPrimaryElection2009"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.partyVotedPrimaryElection1998}">
				<li class="fieldcontain">
					<span id="partyVotedPrimaryElection1998-label" class="property-label"><g:message code="voter.partyVotedPrimaryElection1998.label" default="Party Voted Primary Election1998" /></span>
					
						<span class="property-value" aria-labelledby="partyVotedPrimaryElection1998-label"><g:fieldValue bean="${voterInstance}" field="partyVotedPrimaryElection1998"/></span>
					
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
			
				<g:if test="${voterInstance?.primaryElection1998}">
				<li class="fieldcontain">
					<span id="primaryElection1998-label" class="property-label"><g:message code="voter.primaryElection1998.label" default="Primary Election1998" /></span>
					
						<span class="property-value" aria-labelledby="primaryElection1998-label"><g:fieldValue bean="${voterInstance}" field="primaryElection1998"/></span>
					
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
			
				<g:if test="${voterInstance?.publicServiceComission}">
				<li class="fieldcontain">
					<span id="publicServiceComission-label" class="property-label"><g:message code="voter.publicServiceComission.label" default="Public Service Comission" /></span>
					
						<span class="property-value" aria-labelledby="publicServiceComission-label"><g:fieldValue bean="${voterInstance}" field="publicServiceComission"/></span>
					
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
			
				<g:if test="${voterInstance?.sCT}">
				<li class="fieldcontain">
					<span id="sCT-label" class="property-label"><g:message code="voter.sCT.label" default="SCT" /></span>
					
						<span class="property-value" aria-labelledby="sCT-label"><g:fieldValue bean="${voterInstance}" field="sCT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.schoolDistrict}">
				<li class="fieldcontain">
					<span id="schoolDistrict-label" class="property-label"><g:message code="voter.schoolDistrict.label" default="School District" /></span>
					
						<span class="property-value" aria-labelledby="schoolDistrict-label"><g:fieldValue bean="${voterInstance}" field="schoolDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${voterInstance?.stateBoardofEducation}">
				<li class="fieldcontain">
					<span id="stateBoardofEducation-label" class="property-label"><g:message code="voter.stateBoardofEducation.label" default="State Boardof Education" /></span>
					
						<span class="property-value" aria-labelledby="stateBoardofEducation-label"><g:fieldValue bean="${voterInstance}" field="stateBoardofEducation"/></span>
					
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
			
				<g:if test="${voterInstance?.wp}">
				<li class="fieldcontain">
					<span id="wp-label" class="property-label"><g:message code="voter.wp.label" default="Wp" /></span>
					
						<span class="property-value" aria-labelledby="wp-label"><g:fieldValue bean="${voterInstance}" field="wp"/></span>
					
				</li>
				</g:if>
			
			</ol>
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${voterInstance?.id}" />
					<g:link class="edit" action="edit" id="${voterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
