package voterregistration

class Voter {
	static searchable = true
	
	
	
/*	public Voter(String serialNumber, String title, String firstName, String middleInitial,
			String lastName, String suffix, String dateOfBirth,
			String dateOfRegistration, String placeOfBirth, String gender,
			String maidenName, String regularAddressNumber,
			String regularAddressNumberSuffix,
			String regularStreetDirectionPrefix, String regularStreetName,
			String regularStreetType, String regularStreetDirectionSuffix,
			String regularUnitType, String regularUnitNumber,
			String regularCity, String regularState, String regularZipCode,
			String regularZipCodeSuffix, String party,
			String dateOfPartyAffiliation, String wp, String bt, String specialElection2011,
			String partySpecial2011,
			String generalElection2010, String partyVotedGeneralElection2010,
			String primaryElection2010, String partyVotedPrimaryElection2010,
			String localGeneralElection2009,
			String partyVotedLocalGeneralElection2009,
			String localPrimaryElection2009,
			String partyVotedLocalPrimaryElection2009,
			String generalElection2008, String partyVotedGeneralElection2008,
			String primaryElection2008, String partyVotedPrimaryElection2008,
			String generalElection2006, String partyVotedGeneralElection2006,
			String primaryElection2006, String partyVotedPrimaryElection2006,
			String localGeneralElection2005,
			String partyVotedLocalGeneralElection2005,
			String localPrimaryElection2005,
			String partyVotedLocalPrimaryElection2005,
			String generalElection2004, String partyVotedGeneralElection2004,
			String primaryElection2004, String partyVotedPrimaryElection2004,
			String generalElection2002, String partyVotedGeneralElection2002,
			String primaryElection2002, String partyVotedPrimaryElection2002,
			String localGeneralElection2001,
			String partyVotedLocalGeneralElection2001,
			String localPrimaryElection2001,
			String partyVotedLocalPrimaryElection2001,
			String generalElection2000, String partyVotedGeneralElection2000,
			String primaryElection2000, String partyVotedPrimaryElection2000,
			String generalElection1998, String partyVotedGeneralElection1998,
			String primaryElection1998, String partyVotedPrimaryElection1998,
			String legacySerialNumber, String congressionalDistrict, String ld,
			String stateBoardofEducation, String boardOfRegents,
			String publicServiceComission, String schoolDistrict,
			String educationalServiceUnit, String lc, String metro,
			String oppd, String metropolitanUtilitiesDistrict, String sCT,
			String cityC, String mayor, String countyCommissioner,
			String naturalResourcesDistrict) {
		super();
		
		this.serialNumber = serialNumber;
		this.title = title;
		this.firstName = firstName;
		this.middleInitial = middleInitial;
		this.lastName = lastName;
		this.suffix = suffix;
		this.dateOfBirth = dateOfBirth;
		this.dateOfRegistration = dateOfRegistration;
		this.placeOfBirth = placeOfBirth;
		this.gender = gender;
		this.maidenName = maidenName;
		this.regularAddressNumber = regularAddressNumber;
		this.regularAddressNumberSuffix = regularAddressNumberSuffix;
		this.regularStreetDirectionPrefix = regularStreetDirectionPrefix;
		this.regularStreetName = regularStreetName;
		this.regularStreetType = regularStreetType;
		this.regularStreetDirectionSuffix = regularStreetDirectionSuffix;
		this.regularUnitType = regularUnitType;
		this.regularUnitNumber = regularUnitNumber;
		this.regularCity = regularCity;
		this.regularState = regularState;
		this.regularZipCode = regularZipCode;
		this.regularZipCodeSuffix = regularZipCodeSuffix;
		this.party = party;
		this.dateOfPartyAffiliation = dateOfPartyAffiliation;
		this.wp = wp;
		this.bt = bt;
		this.specialElection2011 = specialElection2011;
		this.partySpecial2011 = partySpecial2011;
		this.generalElection2010 = generalElection2010;
		this.partyVotedGeneralElection2010 = partyVotedGeneralElection2010;
		this.primaryElection2010 = primaryElection2010;
		this.partyVotedPrimaryElection2010 = partyVotedPrimaryElection2010;
		this.localGeneralElection2009 = localGeneralElection2009;
		this.partyVotedLocalGeneralElection2009 = partyVotedLocalGeneralElection2009;
		this.localPrimaryElection2009 = localPrimaryElection2009;
		this.partyVotedLocalPrimaryElection2009 = partyVotedLocalPrimaryElection2009;
		this.generalElection2008 = generalElection2008;
		this.partyVotedGeneralElection2008 = partyVotedGeneralElection2008;
		this.primaryElection2008 = primaryElection2008;
		this.partyVotedPrimaryElection2008 = partyVotedPrimaryElection2008;
		this.generalElection2006 = generalElection2006;
		this.partyVotedGeneralElection2006 = partyVotedGeneralElection2006;
		this.primaryElection2006 = primaryElection2006;
		this.partyVotedPrimaryElection2006 = partyVotedPrimaryElection2006;
		this.localGeneralElection2005 = localGeneralElection2005;
		this.partyVotedLocalGeneralElection2005 = partyVotedLocalGeneralElection2005;
		this.localPrimaryElection2005 = localPrimaryElection2005;
		this.partyVotedLocalPrimaryElection2005 = partyVotedLocalPrimaryElection2005;
		this.generalElection2004 = generalElection2004;
		this.partyVotedGeneralElection2004 = partyVotedGeneralElection2004;
		this.primaryElection2004 = primaryElection2004;
		this.partyVotedPrimaryElection2004 = partyVotedPrimaryElection2004;
		this.generalElection2002 = generalElection2002;
		this.partyVotedGeneralElection2002 = partyVotedGeneralElection2002;
		this.primaryElection2002 = primaryElection2002;
		this.partyVotedPrimaryElection2002 = partyVotedPrimaryElection2002;
		this.localGeneralElection2001 = localGeneralElection2001;
		this.partyVotedLocalGeneralElection2001 = partyVotedLocalGeneralElection2001;
		this.localPrimaryElection2001 = localPrimaryElection2001;
		this.partyVotedLocalPrimaryElection2001 = partyVotedLocalPrimaryElection2001;
		this.generalElection2000 = generalElection2000;
		this.partyVotedGeneralElection2000 = partyVotedGeneralElection2000;
		this.primaryElection2000 = primaryElection2000;
		this.partyVotedPrimaryElection2000 = partyVotedPrimaryElection2000;
		this.generalElection1998  generalElection1998;
		this.partyVotedGeneralElection1998 = partyVotedGeneralElection1998;
		this.primaryElection1998 = primaryElection1998;
		this.partyVotedPrimaryElection1998 = partyVotedPrimaryElection1998;
		this.congressionalDistrict = congressionalDistrict;
		this.ld = ld;
		this.schoolDistrict = schoolDistrict;
	}*/
			

	public Voter(String serialNumber, String title, String firstName,
			String middleInitial, String lastName, String suffix,
			String dateOfBirth, String dateOfRegistration, String placeOfBirth,
			String gender, String maidenName, String regularAddressNumber,
			String regularAddressNumberSuffix,
			String regularStreetDirectionPrefix, String regularStreetName,
			String regularStreetType, String regularStreetDirectionSuffix,
			String regularUnitType, String regularUnitNumber,
			String regularCity, String regularState, String regularZipCode,
			String regularZipCodeSuffix, String party,
			String dateOfPartyAffiliation, String wp, String bt,
			String specialElection2011, String partySpecial2011,
			String generalElection2010, String partyVotedGeneralElection2010,
			String primaryElection2010, String partyVotedPrimaryElection2010,
			String localGeneralElection2009,
			String partyVotedLocalGeneralElection2009,
			String localPrimaryElection2009,
			String partyVotedLocalPrimaryElection2009,
			String generalElection2008, String partyVotedGeneralElection2008,
			String primaryElection2008, String partyVotedPrimaryElection2008,
			String generalElection2006, String partyVotedGeneralElection2006,
			String primaryElection2006, String partyVotedPrimaryElection2006,
			String localGeneralElection2005, String localPrimaryElection2005,
			String generalElection2004, String partyVotedGeneralElection2004,
			String primaryElection2004, String partyVotedPrimaryElection2004,
			String generalElection2002, String partyVotedGeneralElection2002,
			String primaryElection2002, String partyVotedPrimaryElection2002,
			String localGeneralElection2001, String localPrimaryElection2001,
			String generalElection2000, String partyVotedGeneralElection2000,
			String primaryElection2000, String partyVotedPrimaryElection2000,
			String generalElection1998, String partyVotedGeneralElection1998,
			String congressionalDistrict, String ld, String schoolDistrict) {
		super();
		this.serialNumber = serialNumber;
		this.title = title;
		this.firstName = firstName;
		this.middleInitial = middleInitial;
		this.lastName = lastName;
		this.suffix = suffix;
		this.dateOfBirth = dateOfBirth;
		this.dateOfRegistration = dateOfRegistration;
		this.placeOfBirth = placeOfBirth;
		this.gender = gender;
		this.maidenName = maidenName;
		this.regularAddressNumber = regularAddressNumber;
		this.regularAddressNumberSuffix = regularAddressNumberSuffix;
		this.regularStreetDirectionPrefix = regularStreetDirectionPrefix;
		this.regularStreetName = regularStreetName;
		this.regularStreetType = regularStreetType;
		this.regularStreetDirectionSuffix = regularStreetDirectionSuffix;
		this.regularUnitType = regularUnitType;
		this.regularUnitNumber = regularUnitNumber;
		this.regularCity = regularCity;
		this.regularState = regularState;
		this.regularZipCode = regularZipCode;
		this.regularZipCodeSuffix = regularZipCodeSuffix;
		this.party = party;
		this.dateOfPartyAffiliation = dateOfPartyAffiliation;
		this.wardPrecinct = wp;
		this.ballotType = bt;
		this.specialElection2011 = specialElection2011;
		this.partySpecial2011 = partySpecial2011;
		this.generalElection2010 = generalElection2010;
		this.partyVotedGeneralElection2010 = partyVotedGeneralElection2010;
		this.primaryElection2010 = primaryElection2010;
		this.partyVotedPrimaryElection2010 = partyVotedPrimaryElection2010;
		this.legislativeGeneralElection2009 = localGeneralElection2009;
		this.partyVotedLegislativeGeneralElection2009 = partyVotedLocalGeneralElection2009;
		this.legislativePrimaryElection2009 = localPrimaryElection2009;
		this.partyVotedLegislativePrimaryElection2009 = partyVotedLocalPrimaryElection2009;
		this.generalElection2008 = generalElection2008;
		this.partyVotedGeneralElection2008 = partyVotedGeneralElection2008;
		this.primaryElection2008 = primaryElection2008;
		this.partyVotedPrimaryElection2008 = partyVotedPrimaryElection2008;
		this.generalElection2006 = generalElection2006;
		this.partyVotedGeneralElection2006 = partyVotedGeneralElection2006;
		this.primaryElection2006 = primaryElection2006;
		this.partyVotedPrimaryElection2006 = partyVotedPrimaryElection2006;
		this.legislativeGeneralElection2005 = localGeneralElection2005;
		this.legislativePrimaryElection2005 = localPrimaryElection2005;
		this.generalElection2004 = generalElection2004;
		this.partyVotedGeneralElection2004 = partyVotedGeneralElection2004;
		this.primaryElection2004 = primaryElection2004;
		this.partyVotedPrimaryElection2004 = partyVotedPrimaryElection2004;
		this.generalElection2002 = generalElection2002;
		this.partyVotedGeneralElection2002 = partyVotedGeneralElection2002;
		this.primaryElection2002 = primaryElection2002;
		this.partyVotedPrimaryElection2002 = partyVotedPrimaryElection2002;
		this.legislativeGeneralElection2001 = localGeneralElection2001;
		this.legislativePrimaryElection2001 = localPrimaryElection2001;
		this.generalElection2000 = generalElection2000;
		this.partyVotedGeneralElection2000 = partyVotedGeneralElection2000;
		this.primaryElection2000 = primaryElection2000;
		this.partyVotedPrimaryElection2000 = partyVotedPrimaryElection2000;
		this.generalElection1998 = generalElection1998;
		this.partyVotedGeneralElection1998 = partyVotedGeneralElection1998;
		this.congressionalDistrict = congressionalDistrict;
		this.legislativeDistrict = ld;
		this.schoolDistrict = schoolDistrict;
	}
			
	String serialNumber;
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
	String party;
	String dateOfPartyAffiliation;
	String wardPrecinct;
	String ballotType;
	String specialElection2011;
	String partySpecial2011;
	String generalElection2010;
	String partyVotedGeneralElection2010;
	String primaryElection2010;
	String partyVotedPrimaryElection2010;
	String legislativeGeneralElection2009;
	String partyVotedLegislativeGeneralElection2009;
	String legislativePrimaryElection2009;
	String partyVotedLegislativePrimaryElection2009;
	String generalElection2008;
	String partyVotedGeneralElection2008;
	String primaryElection2008;
	String partyVotedPrimaryElection2008;
	String generalElection2006;
	String partyVotedGeneralElection2006;
	String primaryElection2006;
	String partyVotedPrimaryElection2006;
	String legislativeGeneralElection2005;
	String legislativePrimaryElection2005;
	String generalElection2004;
	String partyVotedGeneralElection2004;
	String primaryElection2004;
	String partyVotedPrimaryElection2004;
	String generalElection2002;
	String partyVotedGeneralElection2002;
	String primaryElection2002;
	String partyVotedPrimaryElection2002;
	String legislativeGeneralElection2001;
	String legislativePrimaryElection2001;
	String generalElection2000;
	String partyVotedGeneralElection2000;
	String primaryElection2000;
	String partyVotedPrimaryElection2000;
	String generalElection1998;
	String partyVotedGeneralElection1998;
	String congressionalDistrict;
	String legislativeDistrict;
	String schoolDistrict;
	

    static constraints = {
		
		
    }
	
	static mapping = {
	//need to remove all the spaces and put in underscores!
		//must add version column.
		table 'voter2'
		id column: 'id'
		version column: 'version'
		//serialNumber column: 'Serial_#'
		/*	
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
		naturalResourcesDistrict column: 'NRD'*/

    }
	
	def methodMissing(String name, args) {
	   println("hellow world")
	} 

	
}
