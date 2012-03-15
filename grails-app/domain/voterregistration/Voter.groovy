package voterregistration

class Voter {
	//String serialNumber;
	String title;
	String firstName;
	String middleInitial;
	String lastName;
	String suffix;
	String dateOfBirth;
	String dateOfRegistration;
	String placeOfBirth;
	String gender;
	String maidenName;
	String regularAddressNumber;
	String regularAddressNumberSuffix;
	String regularStreetDirectionPrefix;
	String regularStreetName;
	String regularStreetType;
	String regularStreetDirectionSuffix;
	String regularUnitType;
	String regularUnitNumber;
	String regularCity;
	String regularState;
	String regularZipCode;
	String regularZipCodeSuffix;
	String mailingAddress1;
	String mailingAddress2;
	String mailingAddress3;
	String mailingAddress4;
	String mailingCity;
	String mailingState;
	String mailingZipCode;
	String mailingZipCodeSuffix;
	String party;
	String dateOfPartyAffiliation;
	String wp;
	String bt;
	String generalElection2010;
	String partyVotedGeneralElection2010;
	String primaryElection2010;
	String partyVotedPrimaryElection2010;
	String localGeneralElection2009;
	String partyVotedLocalGeneralElection2009;
	String localPrimaryElection2009;
	String partyVotedLocalPrimaryElection2009;
	String generalElection2008;
	String partyVotedGeneralElection2008;
	String primaryElection2008;
	String partyVotedPrimaryElection2008;
	String generalElection2006;
	String partyVotedGeneralElection2006;
	String primaryElection2006;
	String partyVotedPrimaryElection2006;
	String localGeneralElection2005;
	String partyVotedLocalGeneralElection2005;
	String localPrimaryElection2005;
	String partyVotedLocalPrimaryElection2005;
	String generalElection2004;
	String partyVotedGeneralElection2004;
	String primaryElection2004;
	String partyVotedPrimaryElection2004;
	String generalElection2002;
	String partyVotedGeneralElection2002;
	String primaryElection2002;
	String partyVotedPrimaryElection2002;
	String localGeneralElection2001;
	String partyVotedLocalGeneralElection2001;
	String localPrimaryElection2001;
	String partyVotedLocalPrimaryElection2001;
	String generalElection2000;
	String partyVotedGeneralElection2000;
	String primaryElection2000;
	String partyVotedPrimaryElection2000;
	String generalElection1998;
	String partyVotedGeneralElection1998;
	String primaryElection1998;
	String partyVotedPrimaryElection1998;
	String legacySerialNumber;
	String congressionalDistrict;
	String ld;
	String stateBoardofEducation;
	String boardOfRegents;
	String publicServiceComission;
	String schoolDistrict;
	String educationalServiceUnit;
	String lc;
	String metro;
	String oppd;
	String metropolitanUtilitiesDistrict;
	String sCT;
	String cityC;
	String mayor;
	String countyCommissioner;
	String naturalResourcesDistrict;
	

    static constraints = {
		
		
    }
	
	static mapping = {
		//need to remove all the spaces and put in underscores!
		//must add version column.
		table 'TEST'
		id column: 'Serial'
		//serialNumber column: 'Serial_#'
		title column: 'TITLE'
		firstName column: 'FIRST_NAME'
		middleInitial column: 'MI'
		lastName column: 'LAST_NAME'  	
		suffix column: 'SUFFIX' 	
		dateOfBirth column: 'DOB'
		dateOfRegistration column: 'DATE_OF_REGISTRATION'
		placeOfBirth column: 'PLACE_OF_BIRTH'
		gender column: 'GENDER'  
		maidenName column: 'MAIDEN_NAME'
		regularAddressNumber column: 'REG_ADDRESS_NBR' 
		regularAddressNumberSuffix column:	'REG_ADDRESS_NBR_SUFFIX' 
		regularStreetDirectionPrefix column: 'REG_STREET_DIR_PREFIX' 
		regularStreetName column: 'REG_STREET_NAME' 
		regularStreetType column: 'REG_STREET_TYPE' 
		regularStreetDirectionSuffix column: 'REG_STREET_DIR_SUFFIX' 
		regularUnitType column: 'REG_UNIT_TYPE' 
		regularUnitNumber column: 'REG_UNIT_NBR' 
		regularCity column: 'REG_CITY' 
		regularState column: 'REG_STATE' 
		regularZipCode column: 'REG_ZIP' 
		regularZipCodeSuffix column: 'REG_ZIP4' 
		mailingAddress1 column: 'MAIL_ADDRESS1'
		mailingAddress2 column: 'MAIL_ADDRESS2' 
		mailingAddress3 column: 'MAIL_ADDRESS3'  
		mailingAddress4 column: 'MAIL_ADDRESS4'  
		mailingCity column: 'MAIL_CITY' 
		mailingState column: 'MAIL_STATE'  
		mailingZipCode column: 'MAIL_ZIP'  
		mailingZipCodeSuffix column: 'MAIL_ZIP4'  
		party column: 'PARTY' 
		dateOfPartyAffiliation column: 'DATE_OF_PARTY_AFFILIATION'
		wp column: 'WP' 
		bt column: 'BT'  
		generalElection2010 column: 'GN10'
		partyVotedGeneralElection2010 column: 'PARTY_VOTED_GN10' 
		primaryElection2010 column: 'PR10'  
		partyVotedPrimaryElection2010 column: 'PARTY_VOTED_PR10'  
		localGeneralElection2009 column: 'LG09' 
		partyVotedLocalGeneralElection2009 column: 'PARTY_VOTED_LG09' 
		localPrimaryElection2009 column: 'LP09' 
		partyVotedLocalPrimaryElection2009 column: 'PARTY_VOTED_LP09' 
		generalElection2008 column: 'GN08' 
		partyVotedGeneralElection2008 column: 'PARTY_VOTED_GN08' 
		primaryElection2008 column: 'PR08'
		partyVotedPrimaryElection2008 column: 'PARTY_VOTED_PR08' 
		generalElection2006 column: 'GN06' 
		partyVotedGeneralElection2006 column: 'PARTY_VOTED_GN06' 
		primaryElection2006 column: 'PR06' 
		partyVotedPrimaryElection2006 column: 'PARTY_VOTED_PR06' 
		localGeneralElection2005 column: 'LG05'  
		partyVotedLocalGeneralElection2005 column: 'PARTY_VOTED_LG05' 
		localPrimaryElection2005 column: 'LP05'  
		partyVotedLocalPrimaryElection2005 column: 'PARTY_VOTED_LP05'  
		generalElection2004 column: 'GN04'  
		partyVotedGeneralElection2004 column: 'PARTY_VOTED_GN04'  
		primaryElection2004 column: 'PR04'  
		partyVotedPrimaryElection2004 column: 'PARTY_VOTED_PR04'  
		generalElection2002 column: 'GN02'  
		partyVotedGeneralElection2002 column: 'PARTY_VOTED_GN02'  
		primaryElection2002 column: 'PR02'  
		partyVotedPrimaryElection2002 column: 'PARTY_VOTED_PR02'  
		localGeneralElection2001 column: 'LG01'  
		partyVotedLocalGeneralElection2001 column: 'PARTY_VOTED_LG01'  
		localPrimaryElection2001 column:'LP01' 
		partyVotedLocalPrimaryElection2001 column: 'PARTY_VOTED_LP01'  
		generalElection2000 column: 'GN00'  
		partyVotedGeneralElection2000 column:'PARTY_VOTED_GN00'  
		primaryElection2000 column: 'PR00'  
		partyVotedPrimaryElection2000 column: 'PARTY_VOTED_PR00'  
		generalElection1998 column:'GN98'  
		partyVotedGeneralElection1998 column: 'PARTY_VOTED_GN98'  
		primaryElection1998 column: 'PR98'  
		partyVotedPrimaryElection1998 column: 'PARTY_VOTED_PR98'  
		legacySerialNumber column:'LEGACYSERIAL'  
		congressionalDistrict column:'CONGRESS'  
		ld column:'LD'  
		stateBoardofEducation column: 'St_bd_of_Ed'  
		boardOfRegents column: 'Bd_regents'  
		publicServiceComission column:'Pub_Ser_Comm'  
		schoolDistrict column: 'Sch_Dist' 
		educationalServiceUnit column:'Ed_Ser_U'  
		lc column: 'LC'  
		metro column: 'METRO'  
		oppd column: 'OPPD'  
		metropolitanUtilitiesDistrict column:'MUD'  
		sCT column: 'S_Ct'  
		cityC column: 'City_C'  
		mayor column: 'MAYOR'  
		countyCommissioner column: 'Count_Com'  
		naturalResourcesDistrict column: 'NRD'

    }
	
	def methodMissing(String name, args) {
	   println("hellow world")
	} 

	
}
