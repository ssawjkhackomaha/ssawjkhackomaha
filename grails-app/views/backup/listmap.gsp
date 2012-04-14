
<%@ page import="voterregistration.Voter" %>
<!doctype html>
<html>
	<head>

		<g:set var="entityName" value="${message(code: 'voter.label', default: 'Voter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		
		
		 <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script> 
		<script type="text/javascript"
		      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBR-CcNynp07piQ_5vIXn-f_QdEp7PEYqw&sensor=false">
		    </script>
		    <script type="text/javascript">
			  var geocoder;
			  var map;
			  var infowindow = new google.maps.InfoWindow();
			  var wait = 0;


			  function sleep(milliseconds) {
				  var start = new Date().getTime();
				  for (var i = 0; i < 1e7; i++) {
				    if ((new Date().getTime() - start) > milliseconds){
				      break;
				    }
				  }
				}

							  

		    $(document).ready(function(){
		    	//attach a jQuery live event to the button
		    	$(':checkbox').live('click', function(){
		    		initialize();
					  var idlist = new Array();
					  var count = 0;
		    		$(":checkbox").each(function() {
			    		if (this.checked == true) {
					    	var id = this.value;
					    	if (id > 0) {
						    	idlist[count] = id;
						    	count = count + 1;
						    }

					    	
					    	//alert(id);
							
					    	//$.getJSON('/VoterRegistration/voter/jsonShow/' + id, function(data) { codeAddress(data) });
			    		}
		    		});

		    		
		    		var i=0;
		    		for (i=0; i<count; i++) {	
		    			$.getJSON('/VoterRegistration/voter/jsonShow/' + idlist[i], function(data) { codeAddress(data) });

			    	}

		    	});
		    });

		  
		  function initialize() {
			wait = 0;
		    geocoder = new google.maps.Geocoder();
		    var latlng = new google.maps.LatLng(41.2586, -95.99);
		    var myOptions = {
		      zoom: 11,
		      center: latlng,
		      mapTypeId: google.maps.MapTypeId.HYBRID
		    }
		    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

		  }
		
		  function codeAddress(data) {
			
		    var address = data.regularAddressNumber + " " + data.regularAddressNumberSuffix + " " + data.regularStreetDirectionPrefix + " " + data.regularStreetName + " " + data.regularStreetDirectionSuffix + " " + data.regularStreetType + "," + data.regularCity + "," + data.regularState;
		    //alert(data.id);
		    wait = wait + 110;
		    $.getJSON('/VoterRegistration/voter/getLatLong/' + data.id + "?time=" + wait, function(data) { addAddress(data); });

<%--		    geocoder.geocode( { 'address': address}, function(results, status, data) {--%>
<%--			      if (status == google.maps.GeocoderStatus.OK) {--%>
<%--			        map.setCenter(results[0].geometry.location);--%>
<%--			        var marker = new google.maps.Marker({--%>
<%--			            map: map,--%>
<%--			            position: results[0].geometry.location--%>
<%--			        });--%>

	<%--		        alert(data);--%>
	<%--		        google.maps.event.addListener(marker, 'click', (function(marker, data) {--%>
	<%--		            return function() {--%>
	<%--		              infowindow.setContent(data.firstName + " " + data.lastName + "-" data.party);--%>
	<%--		              infowindow.open(map, marker);--%>
	<%--		            }--%>
	<%--		          })(marker, data));--%>
<%--			          --%>
<%--			      } else {--%>
<%--			        alert("Geocode was not successful for the following reason: " + status);--%>
<%--			      }--%>
<%--			    });--%>
		  }

		  function addAddress(data) {
			  var latlng = new google.maps.LatLng(data.latitude, data.longitude);
		        //map.setCenter(latlng);
		        var marker = new google.maps.Marker({
		            map: map,
		            position: latlng
		        });

		   }

		  function toggleChecked(status) {
			  $(":checkbox").each( function() {
			  $(this).attr("checked",status);
			  })
		  }
		  </script>
		  <filterpane:includes />
	</head>
	<body onload="initialize();">
		<g:javascript library="jquery" plugin="jquery"/>
		<a href="#list-voter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-voter" class="content scaffold-list" role="main">
			<div id="map_canvas" style="padding-top: 200px; padding-left: 200px; width: 79%; height: 400px;"></div>
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
			<input type="checkbox" onclick="toggleChecked(this.checked)"> Select / Deselect All
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
					
						<td><input type="checkbox" id="checkgroup" name="checkgroup" value="${voterInstance.id}"> <g:link action="show" id="${voterInstance.id}">${fieldValue(bean: voterInstance, field: "serialNumber")}</g:link></td>
						
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
<%--			<div class="pagination">--%>
<%--				<g:paginate total="${voterInstanceTotal == null ? Voter.count(): voterInstanceTotal}" params="${filterParams}" />--%>
<%--			</div>--%>
		</div>
	</body>
</html>
