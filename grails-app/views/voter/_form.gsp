<%@ page import="voterregistration.Voter" %>



<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'boardOfRegents', 'error')} ">
	<label for="boardOfRegents">
		<g:message code="voter.boardOfRegents.label" default="Board Of Regents" />
		
	</label>
	<g:textField name="boardOfRegents" value="${voterInstance?.boardOfRegents}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'bt', 'error')} ">
	<label for="bt">
		<g:message code="voter.bt.label" default="Bt" />
		
	</label>
	<g:textField name="bt" value="${voterInstance?.bt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'cityC', 'error')} ">
	<label for="cityC">
		<g:message code="voter.cityC.label" default="City C" />
		
	</label>
	<g:textField name="cityC" value="${voterInstance?.cityC}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'congressionalDistrict', 'error')} ">
	<label for="congressionalDistrict">
		<g:message code="voter.congressionalDistrict.label" default="Congressional District" />
		
	</label>
	<g:textField name="congressionalDistrict" value="${voterInstance?.congressionalDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'countyCommissioner', 'error')} ">
	<label for="countyCommissioner">
		<g:message code="voter.countyCommissioner.label" default="County Commissioner" />
		
	</label>
	<g:textField name="countyCommissioner" value="${voterInstance?.countyCommissioner}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'educationalServiceUnit', 'error')} ">
	<label for="educationalServiceUnit">
		<g:message code="voter.educationalServiceUnit.label" default="Educational Service Unit" />
		
	</label>
	<g:textField name="educationalServiceUnit" value="${voterInstance?.educationalServiceUnit}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'lc', 'error')} ">
	<label for="lc">
		<g:message code="voter.lc.label" default="Lc" />
		
	</label>
	<g:textField name="lc" value="${voterInstance?.lc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'ld', 'error')} ">
	<label for="ld">
		<g:message code="voter.ld.label" default="Ld" />
		
	</label>
	<g:textField name="ld" value="${voterInstance?.ld}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'legacySerialNumber', 'error')} ">
	<label for="legacySerialNumber">
		<g:message code="voter.legacySerialNumber.label" default="Legacy Serial Number" />
		
	</label>
	<g:textField name="legacySerialNumber" value="${voterInstance?.legacySerialNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localGeneralElection2001', 'error')} ">
	<label for="localGeneralElection2001">
		<g:message code="voter.localGeneralElection2001.label" default="Local General Election2001" />
		
	</label>
	<g:textField name="localGeneralElection2001" value="${voterInstance?.localGeneralElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localGeneralElection2005', 'error')} ">
	<label for="localGeneralElection2005">
		<g:message code="voter.localGeneralElection2005.label" default="Local General Election2005" />
		
	</label>
	<g:textField name="localGeneralElection2005" value="${voterInstance?.localGeneralElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localGeneralElection2009', 'error')} ">
	<label for="localGeneralElection2009">
		<g:message code="voter.localGeneralElection2009.label" default="Local General Election2009" />
		
	</label>
	<g:textField name="localGeneralElection2009" value="${voterInstance?.localGeneralElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localPrimaryElection2001', 'error')} ">
	<label for="localPrimaryElection2001">
		<g:message code="voter.localPrimaryElection2001.label" default="Local Primary Election2001" />
		
	</label>
	<g:textField name="localPrimaryElection2001" value="${voterInstance?.localPrimaryElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localPrimaryElection2005', 'error')} ">
	<label for="localPrimaryElection2005">
		<g:message code="voter.localPrimaryElection2005.label" default="Local Primary Election2005" />
		
	</label>
	<g:textField name="localPrimaryElection2005" value="${voterInstance?.localPrimaryElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'localPrimaryElection2009', 'error')} ">
	<label for="localPrimaryElection2009">
		<g:message code="voter.localPrimaryElection2009.label" default="Local Primary Election2009" />
		
	</label>
	<g:textField name="localPrimaryElection2009" value="${voterInstance?.localPrimaryElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'maidenName', 'error')} ">
	<label for="maidenName">
		<g:message code="voter.maidenName.label" default="Maiden Name" />
		
	</label>
	<g:textField name="maidenName" value="${voterInstance?.maidenName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingAddress1', 'error')} ">
	<label for="mailingAddress1">
		<g:message code="voter.mailingAddress1.label" default="Mailing Address1" />
		
	</label>
	<g:textField name="mailingAddress1" value="${voterInstance?.mailingAddress1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingAddress2', 'error')} ">
	<label for="mailingAddress2">
		<g:message code="voter.mailingAddress2.label" default="Mailing Address2" />
		
	</label>
	<g:textField name="mailingAddress2" value="${voterInstance?.mailingAddress2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingAddress3', 'error')} ">
	<label for="mailingAddress3">
		<g:message code="voter.mailingAddress3.label" default="Mailing Address3" />
		
	</label>
	<g:textField name="mailingAddress3" value="${voterInstance?.mailingAddress3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingAddress4', 'error')} ">
	<label for="mailingAddress4">
		<g:message code="voter.mailingAddress4.label" default="Mailing Address4" />
		
	</label>
	<g:textField name="mailingAddress4" value="${voterInstance?.mailingAddress4}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingCity', 'error')} ">
	<label for="mailingCity">
		<g:message code="voter.mailingCity.label" default="Mailing City" />
		
	</label>
	<g:textField name="mailingCity" value="${voterInstance?.mailingCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingState', 'error')} ">
	<label for="mailingState">
		<g:message code="voter.mailingState.label" default="Mailing State" />
		
	</label>
	<g:textField name="mailingState" value="${voterInstance?.mailingState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingZipCode', 'error')} ">
	<label for="mailingZipCode">
		<g:message code="voter.mailingZipCode.label" default="Mailing Zip Code" />
		
	</label>
	<g:textField name="mailingZipCode" value="${voterInstance?.mailingZipCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mailingZipCodeSuffix', 'error')} ">
	<label for="mailingZipCodeSuffix">
		<g:message code="voter.mailingZipCodeSuffix.label" default="Mailing Zip Code Suffix" />
		
	</label>
	<g:textField name="mailingZipCodeSuffix" value="${voterInstance?.mailingZipCodeSuffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'mayor', 'error')} ">
	<label for="mayor">
		<g:message code="voter.mayor.label" default="Mayor" />
		
	</label>
	<g:textField name="mayor" value="${voterInstance?.mayor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'metro', 'error')} ">
	<label for="metro">
		<g:message code="voter.metro.label" default="Metro" />
		
	</label>
	<g:textField name="metro" value="${voterInstance?.metro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'metropolitanUtilitiesDistrict', 'error')} ">
	<label for="metropolitanUtilitiesDistrict">
		<g:message code="voter.metropolitanUtilitiesDistrict.label" default="Metropolitan Utilities District" />
		
	</label>
	<g:textField name="metropolitanUtilitiesDistrict" value="${voterInstance?.metropolitanUtilitiesDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'middleInitial', 'error')} ">
	<label for="middleInitial">
		<g:message code="voter.middleInitial.label" default="Middle Initial" />
		
	</label>
	<g:textField name="middleInitial" value="${voterInstance?.middleInitial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'naturalResourcesDistrict', 'error')} ">
	<label for="naturalResourcesDistrict">
		<g:message code="voter.naturalResourcesDistrict.label" default="Natural Resources District" />
		
	</label>
	<g:textField name="naturalResourcesDistrict" value="${voterInstance?.naturalResourcesDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'oppd', 'error')} ">
	<label for="oppd">
		<g:message code="voter.oppd.label" default="Oppd" />
		
	</label>
	<g:textField name="oppd" value="${voterInstance?.oppd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'party', 'error')} ">
	<label for="party">
		<g:message code="voter.party.label" default="Party" />
		
	</label>
	<g:textField name="party" value="${voterInstance?.party}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalGeneralElection2001', 'error')} ">
	<label for="partyVotedLocalGeneralElection2001">
		<g:message code="voter.partyVotedLocalGeneralElection2001.label" default="Party Voted Local General Election2001" />
		
	</label>
	<g:textField name="partyVotedLocalGeneralElection2001" value="${voterInstance?.partyVotedLocalGeneralElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalGeneralElection2005', 'error')} ">
	<label for="partyVotedLocalGeneralElection2005">
		<g:message code="voter.partyVotedLocalGeneralElection2005.label" default="Party Voted Local General Election2005" />
		
	</label>
	<g:textField name="partyVotedLocalGeneralElection2005" value="${voterInstance?.partyVotedLocalGeneralElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalGeneralElection2009', 'error')} ">
	<label for="partyVotedLocalGeneralElection2009">
		<g:message code="voter.partyVotedLocalGeneralElection2009.label" default="Party Voted Local General Election2009" />
		
	</label>
	<g:textField name="partyVotedLocalGeneralElection2009" value="${voterInstance?.partyVotedLocalGeneralElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalPrimaryElection2001', 'error')} ">
	<label for="partyVotedLocalPrimaryElection2001">
		<g:message code="voter.partyVotedLocalPrimaryElection2001.label" default="Party Voted Local Primary Election2001" />
		
	</label>
	<g:textField name="partyVotedLocalPrimaryElection2001" value="${voterInstance?.partyVotedLocalPrimaryElection2001}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalPrimaryElection2005', 'error')} ">
	<label for="partyVotedLocalPrimaryElection2005">
		<g:message code="voter.partyVotedLocalPrimaryElection2005.label" default="Party Voted Local Primary Election2005" />
		
	</label>
	<g:textField name="partyVotedLocalPrimaryElection2005" value="${voterInstance?.partyVotedLocalPrimaryElection2005}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedLocalPrimaryElection2009', 'error')} ">
	<label for="partyVotedLocalPrimaryElection2009">
		<g:message code="voter.partyVotedLocalPrimaryElection2009.label" default="Party Voted Local Primary Election2009" />
		
	</label>
	<g:textField name="partyVotedLocalPrimaryElection2009" value="${voterInstance?.partyVotedLocalPrimaryElection2009}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'partyVotedPrimaryElection1998', 'error')} ">
	<label for="partyVotedPrimaryElection1998">
		<g:message code="voter.partyVotedPrimaryElection1998.label" default="Party Voted Primary Election1998" />
		
	</label>
	<g:textField name="partyVotedPrimaryElection1998" value="${voterInstance?.partyVotedPrimaryElection1998}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'primaryElection1998', 'error')} ">
	<label for="primaryElection1998">
		<g:message code="voter.primaryElection1998.label" default="Primary Election1998" />
		
	</label>
	<g:textField name="primaryElection1998" value="${voterInstance?.primaryElection1998}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'publicServiceComission', 'error')} ">
	<label for="publicServiceComission">
		<g:message code="voter.publicServiceComission.label" default="Public Service Comission" />
		
	</label>
	<g:textField name="publicServiceComission" value="${voterInstance?.publicServiceComission}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'sCT', 'error')} ">
	<label for="sCT">
		<g:message code="voter.sCT.label" default="SCT" />
		
	</label>
	<g:textField name="sCT" value="${voterInstance?.sCT}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'schoolDistrict', 'error')} ">
	<label for="schoolDistrict">
		<g:message code="voter.schoolDistrict.label" default="School District" />
		
	</label>
	<g:textField name="schoolDistrict" value="${voterInstance?.schoolDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'stateBoardofEducation', 'error')} ">
	<label for="stateBoardofEducation">
		<g:message code="voter.stateBoardofEducation.label" default="State Boardof Education" />
		
	</label>
	<g:textField name="stateBoardofEducation" value="${voterInstance?.stateBoardofEducation}"/>
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

<div class="fieldcontain ${hasErrors(bean: voterInstance, field: 'wp', 'error')} ">
	<label for="wp">
		<g:message code="voter.wp.label" default="Wp" />
		
	</label>
	<g:textField name="wp" value="${voterInstance?.wp}"/>
</div>

