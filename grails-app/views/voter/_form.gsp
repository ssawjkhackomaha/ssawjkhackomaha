<%@ page import="voterregistration.Voter" %>



<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'ballotType', 'error')} ">
	<label for="ballotType">
		<g:message code="voter.ballotType.label" default="Ballot Type" />
		
	</label>
	<g:textField name="ballotType" value="${voterInstance?.ballotType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'congressionalDistrict', 'error')} ">
	<label for="congressionalDistrict">
		<g:message code="voter.congressionalDistrict.label" default="Congressional District" />
		
	</label>
	<g:textField name="congressionalDistrict" value="${voterInstance?.congressionalDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="voter.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:textField name="dateOfBirth" value="${voterInstance?.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'dateOfPartyAffiliation', 'error')} ">
	<label for="dateOfPartyAffiliation">
		<g:message code="voter.dateOfPartyAffiliation.label" default="Date Of Party Affiliation" />
		
	</label>
	<g:textField name="dateOfPartyAffiliation" value="${voterInstance?.dateOfPartyAffiliation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'dateOfRegistration', 'error')} ">
	<label for="dateOfRegistration">
		<g:message code="voter.dateOfRegistration.label" default="Date Of Registration" />
		
	</label>
	<g:textField name="dateOfRegistration" value="${voterInstance?.dateOfRegistration}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="voter.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${voterInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="voter.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${voterInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection1998', 'error')} ">
	<label for="generalElection1998">
		<g:message code="voter.generalElection1998.label" default="General Election1998" />
		
	</label>
	<g:textField name="generalElection1998" value="${voterInstance?.generalElection1998}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2000', 'error')} ">
	<label for="generalElection2000">
		<g:message code="voter.generalElection2000.label" default="General Election2000" />
		
	</label>
	<g:textField name="generalElection2000" value="${voterInstance?.generalElection2000}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2002', 'error')} ">
	<label for="generalElection2002">
		<g:message code="voter.generalElection2002.label" default="General Election2002" />
		
	</label>
	<g:textField name="generalElection2002" value="${voterInstance?.generalElection2002}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2004', 'error')} ">
	<label for="generalElection2004">
		<g:message code="voter.generalElection2004.label" default="General Election2004" />
		
	</label>
	<g:textField name="generalElection2004" value="${voterInstance?.generalElection2004}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2006', 'error')} ">
	<label for="generalElection2006">
		<g:message code="voter.generalElection2006.label" default="General Election2006" />
		
	</label>
	<g:textField name="generalElection2006" value="${voterInstance?.generalElection2006}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2008', 'error')} ">
	<label for="generalElection2008">
		<g:message code="voter.generalElection2008.label" default="General Election2008" />
		
	</label>
	<g:textField name="generalElection2008" value="${voterInstance?.generalElection2008}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'generalElection2010', 'error')} ">
	<label for="generalElection2010">
		<g:message code="voter.generalElection2010.label" default="General Election2010" />
		
	</label>
	<g:textField name="generalElection2010" value="${voterInstance?.generalElection2010}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="voter.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${voterInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativeDistrict', 'error')} ">
	<label for="legislativeDistrict">
		<g:message code="voter.legislativeDistrict.label" default="Legislative District" />
		
	</label>
	<g:textField name="legislativeDistrict" value="${voterInstance?.legislativeDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativeGeneralElection2001', 'error')} ">
	<label for="legislativeGeneralElection2001">
		<g:message code="voter.legislativeGeneralElection2001.label" default="Legislative General Election2001" />
		
	</label>
	<g:textField name="legislativeGeneralElection2001" value="${voterInstance?.legislativeGeneralElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativeGeneralElection2005', 'error')} ">
	<label for="legislativeGeneralElection2005">
		<g:message code="voter.legislativeGeneralElection2005.label" default="Legislative General Election2005" />
		
	</label>
	<g:textField name="legislativeGeneralElection2005" value="${voterInstance?.legislativeGeneralElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativeGeneralElection2009', 'error')} ">
	<label for="legislativeGeneralElection2009">
		<g:message code="voter.legislativeGeneralElection2009.label" default="Legislative General Election2009" />
		
	</label>
	<g:textField name="legislativeGeneralElection2009" value="${voterInstance?.legislativeGeneralElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativePrimaryElection2001', 'error')} ">
	<label for="legislativePrimaryElection2001">
		<g:message code="voter.legislativePrimaryElection2001.label" default="Legislative Primary Election2001" />
		
	</label>
	<g:textField name="legislativePrimaryElection2001" value="${voterInstance?.legislativePrimaryElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativePrimaryElection2005', 'error')} ">
	<label for="legislativePrimaryElection2005">
		<g:message code="voter.legislativePrimaryElection2005.label" default="Legislative Primary Election2005" />
		
	</label>
	<g:textField name="legislativePrimaryElection2005" value="${voterInstance?.legislativePrimaryElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legislativePrimaryElection2009', 'error')} ">
	<label for="legislativePrimaryElection2009">
		<g:message code="voter.legislativePrimaryElection2009.label" default="Legislative Primary Election2009" />
		
	</label>
	<g:textField name="legislativePrimaryElection2009" value="${voterInstance?.legislativePrimaryElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'maidenName', 'error')} ">
	<label for="maidenName">
		<g:message code="voter.maidenName.label" default="Maiden Name" />
		
	</label>
	<g:textField name="maidenName" value="${voterInstance?.maidenName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'middleInitial', 'error')} ">
	<label for="middleInitial">
		<g:message code="voter.middleInitial.label" default="Middle Initial" />
		
	</label>
	<g:textField name="middleInitial" value="${voterInstance?.middleInitial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'party', 'error')} ">
	<label for="party">
		<g:message code="voter.party.label" default="Party" />
		
	</label>
	<g:textField name="party" value="${voterInstance?.party}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partySpecial2011', 'error')} ">
	<label for="partySpecial2011">
		<g:message code="voter.partySpecial2011.label" default="Party Special2011" />
		
	</label>
	<g:textField name="partySpecial2011" value="${voterInstance?.partySpecial2011}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection1998', 'error')} ">
	<label for="partyVotedGeneralElection1998">
		<g:message code="voter.partyVotedGeneralElection1998.label" default="Party Voted General Election1998" />
		
	</label>
	<g:textField name="partyVotedGeneralElection1998" value="${voterInstance?.partyVotedGeneralElection1998}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2000', 'error')} ">
	<label for="partyVotedGeneralElection2000">
		<g:message code="voter.partyVotedGeneralElection2000.label" default="Party Voted General Election2000" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2000" value="${voterInstance?.partyVotedGeneralElection2000}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2002', 'error')} ">
	<label for="partyVotedGeneralElection2002">
		<g:message code="voter.partyVotedGeneralElection2002.label" default="Party Voted General Election2002" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2002" value="${voterInstance?.partyVotedGeneralElection2002}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2004', 'error')} ">
	<label for="partyVotedGeneralElection2004">
		<g:message code="voter.partyVotedGeneralElection2004.label" default="Party Voted General Election2004" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2004" value="${voterInstance?.partyVotedGeneralElection2004}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2006', 'error')} ">
	<label for="partyVotedGeneralElection2006">
		<g:message code="voter.partyVotedGeneralElection2006.label" default="Party Voted General Election2006" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2006" value="${voterInstance?.partyVotedGeneralElection2006}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2008', 'error')} ">
	<label for="partyVotedGeneralElection2008">
		<g:message code="voter.partyVotedGeneralElection2008.label" default="Party Voted General Election2008" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2008" value="${voterInstance?.partyVotedGeneralElection2008}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedGeneralElection2010', 'error')} ">
	<label for="partyVotedGeneralElection2010">
		<g:message code="voter.partyVotedGeneralElection2010.label" default="Party Voted General Election2010" />
		
	</label>
	<g:textField name="partyVotedGeneralElection2010" value="${voterInstance?.partyVotedGeneralElection2010}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLegislativeGeneralElection2009', 'error')} ">
	<label for="partyVotedLegislativeGeneralElection2009">
		<g:message code="voter.partyVotedLegislativeGeneralElection2009.label" default="Party Voted Legislative General Election2009" />
		
	</label>
	<g:textField name="partyVotedLegislativeGeneralElection2009" value="${voterInstance?.partyVotedLegislativeGeneralElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLegislativePrimaryElection2009', 'error')} ">
	<label for="partyVotedLegislativePrimaryElection2009">
		<g:message code="voter.partyVotedLegislativePrimaryElection2009.label" default="Party Voted Legislative Primary Election2009" />
		
	</label>
	<g:textField name="partyVotedLegislativePrimaryElection2009" value="${voterInstance?.partyVotedLegislativePrimaryElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2000', 'error')} ">
	<label for="partyVotedPrimaryElection2000">
		<g:message code="voter.partyVotedPrimaryElection2000.label" default="Party Voted Primary Election2000" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2000" value="${voterInstance?.partyVotedPrimaryElection2000}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2002', 'error')} ">
	<label for="partyVotedPrimaryElection2002">
		<g:message code="voter.partyVotedPrimaryElection2002.label" default="Party Voted Primary Election2002" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2002" value="${voterInstance?.partyVotedPrimaryElection2002}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2004', 'error')} ">
	<label for="partyVotedPrimaryElection2004">
		<g:message code="voter.partyVotedPrimaryElection2004.label" default="Party Voted Primary Election2004" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2004" value="${voterInstance?.partyVotedPrimaryElection2004}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2006', 'error')} ">
	<label for="partyVotedPrimaryElection2006">
		<g:message code="voter.partyVotedPrimaryElection2006.label" default="Party Voted Primary Election2006" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2006" value="${voterInstance?.partyVotedPrimaryElection2006}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2008', 'error')} ">
	<label for="partyVotedPrimaryElection2008">
		<g:message code="voter.partyVotedPrimaryElection2008.label" default="Party Voted Primary Election2008" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2008" value="${voterInstance?.partyVotedPrimaryElection2008}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection2010', 'error')} ">
	<label for="partyVotedPrimaryElection2010">
		<g:message code="voter.partyVotedPrimaryElection2010.label" default="Party Voted Primary Election2010" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection2010" value="${voterInstance?.partyVotedPrimaryElection2010}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'placeOfBirth', 'error')} ">
	<label for="placeOfBirth">
		<g:message code="voter.placeOfBirth.label" default="Place Of Birth" />
		
	</label>
	<g:textField name="placeOfBirth" value="${voterInstance?.placeOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2000', 'error')} ">
	<label for="primaryElection2000">
		<g:message code="voter.primaryElection2000.label" default="Primary Election2000" />
		
	</label>
	<g:textField name="primaryElection2000" value="${voterInstance?.primaryElection2000}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2002', 'error')} ">
	<label for="primaryElection2002">
		<g:message code="voter.primaryElection2002.label" default="Primary Election2002" />
		
	</label>
	<g:textField name="primaryElection2002" value="${voterInstance?.primaryElection2002}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2004', 'error')} ">
	<label for="primaryElection2004">
		<g:message code="voter.primaryElection2004.label" default="Primary Election2004" />
		
	</label>
	<g:textField name="primaryElection2004" value="${voterInstance?.primaryElection2004}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2006', 'error')} ">
	<label for="primaryElection2006">
		<g:message code="voter.primaryElection2006.label" default="Primary Election2006" />
		
	</label>
	<g:textField name="primaryElection2006" value="${voterInstance?.primaryElection2006}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2008', 'error')} ">
	<label for="primaryElection2008">
		<g:message code="voter.primaryElection2008.label" default="Primary Election2008" />
		
	</label>
	<g:textField name="primaryElection2008" value="${voterInstance?.primaryElection2008}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection2010', 'error')} ">
	<label for="primaryElection2010">
		<g:message code="voter.primaryElection2010.label" default="Primary Election2010" />
		
	</label>
	<g:textField name="primaryElection2010" value="${voterInstance?.primaryElection2010}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularAddressNumber', 'error')} ">
	<label for="regularAddressNumber">
		<g:message code="voter.regularAddressNumber.label" default="Regular Address Number" />
		
	</label>
	<g:textField name="regularAddressNumber" value="${voterInstance?.regularAddressNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularAddressNumberSuffix', 'error')} ">
	<label for="regularAddressNumberSuffix">
		<g:message code="voter.regularAddressNumberSuffix.label" default="Regular Address Number Suffix" />
		
	</label>
	<g:textField name="regularAddressNumberSuffix" value="${voterInstance?.regularAddressNumberSuffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularCity', 'error')} ">
	<label for="regularCity">
		<g:message code="voter.regularCity.label" default="Regular City" />
		
	</label>
	<g:textField name="regularCity" value="${voterInstance?.regularCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularState', 'error')} ">
	<label for="regularState">
		<g:message code="voter.regularState.label" default="Regular State" />
		
	</label>
	<g:textField name="regularState" value="${voterInstance?.regularState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularStreetDirectionPrefix', 'error')} ">
	<label for="regularStreetDirectionPrefix">
		<g:message code="voter.regularStreetDirectionPrefix.label" default="Regular Street Direction Prefix" />
		
	</label>
	<g:textField name="regularStreetDirectionPrefix" value="${voterInstance?.regularStreetDirectionPrefix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularStreetDirectionSuffix', 'error')} ">
	<label for="regularStreetDirectionSuffix">
		<g:message code="voter.regularStreetDirectionSuffix.label" default="Regular Street Direction Suffix" />
		
	</label>
	<g:textField name="regularStreetDirectionSuffix" value="${voterInstance?.regularStreetDirectionSuffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularStreetName', 'error')} ">
	<label for="regularStreetName">
		<g:message code="voter.regularStreetName.label" default="Regular Street Name" />
		
	</label>
	<g:textField name="regularStreetName" value="${voterInstance?.regularStreetName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularStreetType', 'error')} ">
	<label for="regularStreetType">
		<g:message code="voter.regularStreetType.label" default="Regular Street Type" />
		
	</label>
	<g:textField name="regularStreetType" value="${voterInstance?.regularStreetType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularUnitNumber', 'error')} ">
	<label for="regularUnitNumber">
		<g:message code="voter.regularUnitNumber.label" default="Regular Unit Number" />
		
	</label>
	<g:textField name="regularUnitNumber" value="${voterInstance?.regularUnitNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularUnitType', 'error')} ">
	<label for="regularUnitType">
		<g:message code="voter.regularUnitType.label" default="Regular Unit Type" />
		
	</label>
	<g:textField name="regularUnitType" value="${voterInstance?.regularUnitType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularZipCode', 'error')} ">
	<label for="regularZipCode">
		<g:message code="voter.regularZipCode.label" default="Regular Zip Code" />
		
	</label>
	<g:textField name="regularZipCode" value="${voterInstance?.regularZipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'regularZipCodeSuffix', 'error')} ">
	<label for="regularZipCodeSuffix">
		<g:message code="voter.regularZipCodeSuffix.label" default="Regular Zip Code Suffix" />
		
	</label>
	<g:textField name="regularZipCodeSuffix" value="${voterInstance?.regularZipCodeSuffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'schoolDistrict', 'error')} ">
	<label for="schoolDistrict">
		<g:message code="voter.schoolDistrict.label" default="School District" />
		
	</label>
	<g:textField name="schoolDistrict" value="${voterInstance?.schoolDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'serialNumber', 'error')} ">
	<label for="serialNumber">
		<g:message code="voter.serialNumber.label" default="Serial Number" />
		
	</label>
	<g:textField name="serialNumber" value="${voterInstance?.serialNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'specialElection2011', 'error')} ">
	<label for="specialElection2011">
		<g:message code="voter.specialElection2011.label" default="Special Election2011" />
		
	</label>
	<g:textField name="specialElection2011" value="${voterInstance?.specialElection2011}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'suffix', 'error')} ">
	<label for="suffix">
		<g:message code="voter.suffix.label" default="Suffix" />
		
	</label>
	<g:textField name="suffix" value="${voterInstance?.suffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="voter.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${voterInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'wardPrecinct', 'error')} ">
	<label for="wardPrecinct">
		<g:message code="voter.wardPrecinct.label" default="Ward Precinct" />
		
	</label>
	<g:textField name="wardPrecinct" value="${voterInstance?.wardPrecinct}"/>
</div>

