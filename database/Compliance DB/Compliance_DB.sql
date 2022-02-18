
-- ------------------------------------UNSC_INDIVIDUAL---------------------------------------------
CREATE TABLE unsc_individual(
	DATAID VARCHAR(100) NOT NULL,
	VERSIONNUM INT,
	FIRST_NAME VARCHAR(50),
	SECOND_NAME VARCHAR(50),
	THIRD_NAME VARCHAR(50),
	FOURTH_NAME VARCHAR(50),
	GENDER  VARCHAR(20),
	TITLE VARCHAR(50),
	UN_LIST_TYPE VARCHAR(50),
	REFERENCE_NUMBER VARCHAR(50),
	LISTED_ON VARCHAR(50),
	COMMENTS1 TEXT,
	DESIGNATION VARCHAR(500),
	NATIONALITY VARCHAR(200),
	LIST_TYPE VARCHAR(50),
	LAST_DAY_UPDATED VARCHAR(50),
	SORT_KEY VARCHAR(50),
	SORT_KEY_LAST_MOD VARCHAR(50),
	NAME_ORIGINAL_SCRIPT TEXT,	
	SUBMITTED_BY VARCHAR(50),
	xml_col TEXT,
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE unsc_individual_alias(
	DATAID VARCHAR(100) NOT NULL,
	ALIAS_NAME VARCHAR(500),
	CITY_OF_BIRTH VARCHAR(100),
	COUNTRY_OF_BIRTH VARCHAR(100),
	DATE_OF_BIRTH VARCHAR(50), 
	NOTE TEXT,
	QUALITY VARCHAR(20),
	DATE_INSERTED VARCHAR (100)
);

CREATE TABLE unsc_individual_address(
	DATAID VARCHAR(100) NOT NULL,
	CITY VARCHAR(500),
	COUNTRY VARCHAR(500),
	NOTE TEXT,
	STATE_PROVINCE VARCHAR(500),
	STREET VARCHAR(500),
	ZIP_CODE VARCHAR(500),
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE unsc_individual_date_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	`DATE` VARCHAR(50), 		
	FROM_YEAR VARCHAR(50), 		
	NOTE TEXT,
	TYPE_OF_DATE VARCHAR(50),
	`YEAR` VARCHAR(50),		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE unsc_individual_place_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	CITY VARCHAR(500),
	COUNTRY VARCHAR(500),
	NOTE TEXT,
	STATE_PROVINCE VARCHAR(500),		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE unsc_individual_document(
	DATAID VARCHAR(100) NOT NULL,
	CITY_OF_ISSUE VARCHAR(500),
	COUNTRY_OF_ISSUE VARCHAR(500),
	DATE_OF_ISSUE VARCHAR(100), 	
	ISSUING_COUNTRY VARCHAR(500),	
	NOTE TEXT,	
	NUMBER VARCHAR(500),	
	TYPE_OF_DOCUMENT VARCHAR(500),	
	TYPE_OF_DOCUMENT2 VARCHAR(500),		
	DATE_INSERTED VARCHAR(100)
);
-- ------------------------------------UNSC_ENTITY---------------------------------------------
CREATE TABLE unsc_entity(
	DATAID VARCHAR(100) NOT NULL,
	VERSIONNUM VARCHAR(50),
	FIRST_NAME VARCHAR(500) CHARACTER SET UTF8MB4,	
	UN_LIST_TYPE VARCHAR(50),
	REFERENCE_NUMBER VARCHAR(50),
	LISTED_ON VARCHAR(50),
	COMMENTS1 TEXT CHARACTER SET UTF8MB4,	
	LIST_TYPE VARCHAR(50),
	LAST_DAY_UPDATED VARCHAR(50),
	SORT_KEY VARCHAR(50),
	SORT_KEY_LAST_MOD VARCHAR(50),
	NAME_ORIGINAL_SCRIPT TEXT CHARACTER SET UTF8MB4,	
	SUBMITTED_ON VARCHAR(100),
	DATE_INSERTED VARCHAR(100) 
);

CREATE TABLE unsc_entity_alias(
	DATAID VARCHAR(100) NOT NULL,
	ALIAS_NAME VARCHAR(500),	
	QUALITY VARCHAR(20),
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE unsc_entity_address(
	DATAID VARCHAR(100) NOT NULL,
	CITY VARCHAR(500),
	COUNTRY VARCHAR(500),
	NOTE TEXT,
	STATE_PROVINCE VARCHAR(500),
	STREET VARCHAR(500),
	ZIP_CODE VARCHAR(500),
	DATE_INSERTED VARCHAR(100)
);

-- ------------------------------------NACTA PROSCRIBED PERSONS--------------------------------------------
CREATE TABLE nacta_proscribed_persons(
	`NAME` VARCHAR(300),
	ALIAS VARCHAR(300),
	FATHER_NAME VARCHAR(300),	
	CNIC VARCHAR(300),
	PROVINCE VARCHAR(300),
	DISTRICT VARCHAR(300),
	DISCREPANT_CHECK VARCHAR(20),
	DATE_INSERTED VARCHAR(100) 
);
-- ------------------------------------OFAC--------------------------------------------
CREATE TABLE ofac(
	DATAID VARCHAR(100) NOT NULL,
	FIRST_NAME VARCHAR(500),
	LAST_NAME VARCHAR(500),
	SDN_TYPE VARCHAR(100),
	REMARKS TEXT,
	PROGRAM_LIST VARCHAR(100),
	xml_col TEXT,
	DATE_INSERTED VARCHAR(100) 
);

CREATE TABLE ofac_alias(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),
	`TYPE` VARCHAR(100),
	FIRST_NAME VARCHAR(300),
	LAST_NAME VARCHAR(300),
	CATEGORY VARCHAR(100),
	DATE_INSERTED VARCHAR (100)
);

CREATE TABLE ofac_date_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	DATE_OF_BIRTH VARCHAR(100),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_place_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	PLACE_OF_BIRTH VARCHAR(100),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_address(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	STATE_OR_PROVINCE VARCHAR(500),	
	POSTAL_CODE VARCHAR(100),
	COUNTRY VARCHAR(500), 		
	CITY VARCHAR(500), 		
	ADDRESS_1 VARCHAR(500), 		
	ADDRESS_2 VARCHAR(500), 		
	ADDRESS_3 VARCHAR(500), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE OFAC_CITIZENSHIP(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	COUNTRY VARCHAR(300),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_id(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	ID_TYPE VARCHAR(500),	
	ID_NUMBER VARCHAR(500), 		
	ID_COUNTRY VARCHAR(500), 		
	DATE_INSERTED VARCHAR(100)
);

-- ------------------------------------OFSI--------------------------------------------
CREATE TABLE ofsi(
	GroupID VARCHAR(100) NOT NULL,
	OFSI_ID VARCHAR(100) NOT NULL,
	AliasType VARCHAR(500),
	AliasTypeName VARCHAR(500),
	FullName VARCHAR(500),
	FullAddress VARCHAR(500),	
	name1 VARCHAR(300),
	name2 VARCHAR(300),
	name3 VARCHAR(300),
	name4 VARCHAR(300),
	name5 VARCHAR(300),
	Name6 VARCHAR(300),
	address1 VARCHAR(300),
	address2 VARCHAR(300),
	address3 VARCHAR(300),
	address4 VARCHAR(300),
	address5 VARCHAR(300),
	address6 VARCHAR(300),
	Gender VARCHAR(500),
	BusinessRegNumber VARCHAR(500),
	Country VARCHAR(500),
	CountryOfBirth VARCHAR(500),
	CurrentOwners VARCHAR(500),
	DateListed VARCHAR(500),
	DateListedDay VARCHAR(500),
	DateListedMonth VARCHAR(500),
	DateListedYear VARCHAR(500),
	DateOfBirth VARCHAR(500),
	DateOfBirthId VARCHAR(500),
	DayOfBirth VARCHAR(500),
	EmailAddress VARCHAR(500),
	FCOId VARCHAR(500),
	FlagOfVessel VARCHAR(500),	
	FurtherIdentifiyingInformation TEXT,	
	GroupStatus TEXT,
	GroupTypeDescription TEXT,
	GrpStatus TEXT,
	HIN TEXT,
	IMONumber TEXT,
	LastUpdated TEXT,
	LastUpdatedDay TEXT,
	LastUpdatedMonth TEXT,
	LastUpdatedYear TEXT,
	LengthOfVessel TEXT,
	ListingType TEXT,
	MonthOfBirth TEXT,
	NameTitle TEXT,
	NationalIdNumber TEXT,
	Nationality VARCHAR(500),
	OrgType VARCHAR(500),
	OtherInformation TEXT,
	ParentCompany TEXT,
	PassportDetails TEXT,
	PhoneNumber TEXT,
	`Position` TEXT,
	PostCode TEXT,
	PreviousFlags TEXT,
	PreviousOwners TEXT,
	RegimeName TEXT,
	Subsidiaries TEXT,
	TonnageOfVessel TEXT,
	TownOfBirth TEXT,
	TypeOfVessel TEXT,
	UKStatementOfReasons TEXT,
	Website TEXT,
	YearBuilt TEXT,
	YearOfBirth TEXT,
	DATE_INSERTED VARCHAR(100)	
);
-- ------------------------------------EUFS--------------------------------------------
CREATE TABLE eufs(
	Entity_LogicalId VARCHAR(20),
	Entity_EU_ReferenceNumber VARCHAR(20),
	Entity_UnitedNationId VARCHAR(20),
	Entity_DesignationDate VARCHAR(100),
	Entity_DesignationDetails TEXT,
	Entity_Remark TEXT,
	Entity_SubjectType VARCHAR(100),
	Entity_SubjectType_ClassificationCode VARCHAR(100),
	Entity_Regulation_Type VARCHAR(100),
	Entity_Regulation_OrganisationType VARCHAR(100),
	Entity_Regulation_PublicationDate VARCHAR(100),
	Entity_Regulation_EntryIntoForceDate VARCHAR(100),
	Entity_Regulation_NumberTitle VARCHAR(100),
	Entity_Regulation_Programme VARCHAR(100),
	Entity_Regulation_PublicationUrl TEXT,
	NameAlias_LastName VARCHAR(100),
	NameAlias_FirstName VARCHAR(100),
	NameAlias_MiddleName VARCHAR(100),
	NameAlias_WholeName VARCHAR(500),
	NameAlias_NameLanguage VARCHAR(100),
	NameAlias_Gender VARCHAR(100),
	NameAlias_Title VARCHAR(500),
	NameAlias_Function TEXT,
	NameAlias_LogicalId VARCHAR(100),
	NameAlias_RegulationLanguage VARCHAR(100),
	NameAlias_Remark TEXT,
	NameAlias_Regulation_Type VARCHAR(100),
	NameAlias_Regulation_OrganisationType VARCHAR(100),
	NameAlias_Regulation_PublicationDate VARCHAR(100) ,
	NameAlias_Regulation_EntryIntoForceDate VARCHAR(100) ,
	NameAlias_Regulation_NumberTitle VARCHAR(100) ,
	NameAlias_Regulation_Programme VARCHAR(100) ,
	NameAlias_Regulation_PublicationUrl TEXT,
	Address_City VARCHAR(1000),
	Address_Street TEXT,
	Address_PoBox VARCHAR(100),
	Address_ZipCode VARCHAR(100),
	Address_Region VARCHAR(100),
	Address_Place VARCHAR(100),
	Address_AsAtListingTime VARCHAR(100),
	Address_ContactInfo TEXT,
	Address_CountryIso2Code VARCHAR(100),
	Address_CountryDescription VARCHAR(100),
	Address_LogicalId VARCHAR(100),
	Address_RegulationLanguage VARCHAR(100),
	Address_Remark VARCHAR(500),
	Address_Regulation_Type VARCHAR(100),
	Address_Regulation_OrganisationType VARCHAR(100),
	Address_Regulation_PublicationDate VARCHAR(100),
	Address_Regulation_EntryIntoForceDate VARCHAR(100),
	Address_Regulation_NumberTitle VARCHAR(100),
	Address_Regulation_Programme VARCHAR(100),
	Address_Regulation_PublicationUrl TEXT,
	BirthDate_BirthDate VARCHAR(100),
	BirthDate_Day VARCHAR(100),
	BirthDate_Month VARCHAR(100),
	BirthDate_Year VARCHAR(100),
	BirthDate_YearRangeFrom VARCHAR(100),
	BirthDate_YearRangeTo VARCHAR(100),
	BirthDate_Circa VARCHAR(100),
	BirthDate_CalendarType VARCHAR(100),
	BirthDate_ZipCode VARCHAR(100),
	BirthDate_Region VARCHAR(100),
	BirthDate_Place TEXT,
	BirthDate_City VARCHAR(100),
	BirthDate_CountryIso2Code VARCHAR(100),
	BirthDate_CountryDescription VARCHAR(100),
	BirthDate_LogicalId VARCHAR(100),
	BirthDate_RegulationLanguage VARCHAR(100)CHARACTER SET UTF8MB4 COLLATE UTF8MB4_general_ci,
	BirthDate_Remark VARCHAR(500),
	BirthDate_Regulation_Type VARCHAR(100),
	BirthDate_Regulation_OrganisationType VARCHAR(100),
	BirthDate_Regulation_PublicationDate VARCHAR(100),
	BirthDate_Regulation_EntryIntoForceDate VARCHAR(100),
	BirthDate_Regulation_NumberTitle VARCHAR(100),
	BirthDate_Regulation_Programme VARCHAR(100),
	BirthDate_Regulation_PublicationUrl TEXT,
	Identification_Number TEXT,
	Identification_Diplomatic VARCHAR(100),
	Identification_KnownExpired VARCHAR(100),
	Identification_KnownFalse VARCHAR(100),
	Identification_ReportedLost VARCHAR(100),
	Identification_RevokedByIssuer VARCHAR(100),
	Identification_IssuedBy TEXT,
	Identification_IssuedDate VARCHAR(100),
	Identification_ValidFrom VARCHAR(100),
	Identification_ValidTo VARCHAR(100),
	Identification_LatinNumber VARCHAR(100),
	Identification_NameOnDocument VARCHAR(100),
	Identification_TypeCode VARCHAR(100),
	Identification_TypeDescription VARCHAR(100),
	Identification_Region VARCHAR(100),
	Identification_CountryIso2Code VARCHAR(100),
	Identification_CountryDescription VARCHAR(100),
	Identification_LogicalId VARCHAR(100),
	Identification_RegulationLanguage VARCHAR(100),
	Identification_Remark TEXT,
	Identification_Regulation_Type VARCHAR(100),
	Identification_Regulation_OrganisationType VARCHAR(100),
	Identification_Regulation_PublicationDate VARCHAR(100),
	Identification_Regulation_EntryIntoForceDate VARCHAR(100),
	Identification_Regulation_NumberTitle VARCHAR(100),
	Identification_Regulation_Programme VARCHAR(100),
	Identification_Regulation_PublicationUrl TEXT,
	Citizenship_Region VARCHAR(100),
	Citizenship_CountryIso2Code VARCHAR(100),
	Citizenship_CountryDescription VARCHAR(100),
	Citizenship_LogicalId VARCHAR(100),
	Citizenship_RegulationLanguage VARCHAR(100),
	Citizenship_Remark VARCHAR(500),
	Citizenship_Regulation_Type VARCHAR(100),
	Citizenship_Regulation_OrganisationType VARCHAR(100),
	Citizenship_Regulation_PublicationDate VARCHAR(100),
	Citizenship_Regulation_EntryIntoForceDate VARCHAR(100),
	Citizenship_Regulation_NumberTitle VARCHAR(100),
	Citizenship_Regulation_Programme VARCHAR(100),
	Citizenship_Regulation_PublicationUrl TEXT,
	DATE_INSERTED VARCHAR(100)
);
-- ------------------------------------NACTA PROSCRIBED ORGANIZATIONS--------------------------------------------
CREATE TABLE nacta_proscribed_organizations(
	Name_of_Organization VARCHAR(500),
	Date_of_Notification VARCHAR(100),	
	Affiliated_Organizations VARCHAR(500),
	DATE_INSERTED VARCHAR(100) 
);
-- ------------------------------------NACTA PROSCRIBED PERSONS DENOTIFIED--------------------------------------------
CREATE TABLE nacta_proscribed_persons_denotified(
	`NAME` VARCHAR(100),
	FATHER_NAME VARCHAR(100)CHARACTER SET UTF8MB4 COLLATE UTF8MB4_general_ci,	
	CNIC VARCHAR(100),
	PROVINCE VARCHAR(100),
	DISTRICT VARCHAR(100),
	DATE_INSERTED VARCHAR(100) 
);
-- ------------------------------------OFAC SDN--------------------------------------------
CREATE TABLE ofac_sdn(
	DATAID VARCHAR(100) NOT NULL,
	FIRST_NAME VARCHAR(500),
	LAST_NAME VARCHAR(500),
	TITLE VARCHAR(500),
	SDN_TYPE VARCHAR(100),
	REMARKS TEXT,
	PROGRAM_LIST VARCHAR(100),
	xml_col TEXT,
	DATE_INSERTED VARCHAR(100) 
);

CREATE TABLE ofac_sdn_alias(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),
	`TYPE` VARCHAR(100),
	FIRST_NAME VARCHAR(300),
	LAST_NAME VARCHAR(300),
	CATEGORY VARCHAR(100),
	DATE_INSERTED VARCHAR (100)
);

CREATE TABLE ofac_sdn_date_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	DATE_OF_BIRTH VARCHAR(100),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_place_of_birth(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	PLACE_OF_BIRTH VARCHAR(100),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_address(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	STATE_OR_PROVINCE VARCHAR(500),	
	POSTAL_CODE VARCHAR(100),
	COUNTRY VARCHAR(500), 		
	CITY VARCHAR(500), 		
	ADDRESS_1 VARCHAR(500), 		
	ADDRESS_2 VARCHAR(500), 		
	ADDRESS_3 VARCHAR(500), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_citizenship(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	COUNTRY VARCHAR(300),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_nationality(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	COUNTRY VARCHAR(300),	
	MAIN_ENTRY VARCHAR(50), 		
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_id(
	DATAID VARCHAR(100) NOT NULL,
	UID VARCHAR(100),	
	ID_TYPE VARCHAR(500),	
	ID_NUMBER VARCHAR(500), 		
	ID_COUNTRY VARCHAR(500), 	
	ISSUE_DATE VARCHAR(100),
	EXPIRATION_DATE VARCHAR(100),
	DATE_INSERTED VARCHAR(100)
);

CREATE TABLE ofac_sdn_vessel_info(
	DATAID VARCHAR(100) NOT NULL,
	CALL_SIGN VARCHAR(100),	
	VESSEL_TYPE VARCHAR(200),	
	VESSEL_FLAG VARCHAR(200), 		
	VESSEL_OWNER VARCHAR(200), 	
	TONNAGE VARCHAR(100),
	GROSS_REGISTERED_TONNAGE VARCHAR(100),
	DATE_INSERTED VARCHAR(100)
);

-- ----------------------KYC------------------------------------
CREATE TABLE kyc(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(500),
   FATHER_NAME  VARCHAR(500),
   PASSPORT_Num VARCHAR(100),
  `ID_NUMBER` VARCHAR(100),    
  `Gender` VARCHAR(20) DEFAULT NULL,
  `DOB` VARCHAR(500),
  `POB` VARCHAR(500) DEFAULT NULL,
  `Address` VARCHAR(500),
  `Province` VARCHAR(500),
  `District` VARCHAR(500),  
  `Nationality` VARCHAR(500) DEFAULT NULL,
  `Country` VARCHAR(500) DEFAULT NULL,
  `City` VARCHAR(500) DEFAULT NULL,
   geographic_location VARCHAR(100) DEFAULT NULL,
   customer_type VARCHAR(100) DEFAULT NULL,
   product_type  VARCHAR(100) DEFAULT NULL,
   delivery_channel  VARCHAR(100) DEFAULT NULL   
  );   
-- ----------------------consolidate_list------------------------
CREATE TABLE consolidate_list (
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `DATAID` VARCHAR(100) DEFAULT NULL,
  `Name`  VARCHAR(1000),
  `Alias` VARCHAR(1000),
  `ALIAS_QUALITY` VARCHAR(50),
  `ID_NUMBER` TEXT,
  `Father_Name` VARCHAR(500) DEFAULT NULL,
  `Gender` VARCHAR(20) DEFAULT NULL,
  `DOB` VARCHAR(500),
  `POB` VARCHAR(500) DEFAULT NULL,
  `Address` VARCHAR(500),
  `Province` VARCHAR(500),
  `District` VARCHAR(500),  
  `Nationality` VARCHAR(500) DEFAULT NULL,
  `Country` VARCHAR(500) DEFAULT NULL,
  `City` VARCHAR(500) DEFAULT NULL,
  `DISCREPANT_CHECK` VARCHAR(20),
  `List` VARCHAR(24),
  `Type` VARCHAR(10),
  `DATE_INSERTED`VARCHAR(100)
);
-- ----------------------Geographic Location------------------------
CREATE TABLE geographic_location(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   City VARCHAR(500) NOT NULL,
   Risk_Category VARCHAR(20),
   Risk_Weight INT
);
-- ----------------------Customer TYPE------------------------
CREATE TABLE customer_type(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   Cust_Type VARCHAR(500) NOT NULL,
   Risk_Category VARCHAR(20),
   Risk_Weight INT
);
-- ----------------------Product TYPE------------------------
CREATE TABLE product_type(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   Prod_Type VARCHAR(500) NOT NULL,
   Risk_Category VARCHAR(20),
   Risk_Weight INT
);
-- ----------------------Delivery Channel------------------------
CREATE TABLE delivery_channel(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   channel VARCHAR(500) NOT NULL,
   Risk_Category VARCHAR(20),
   Risk_Weight INT
);
-- ----------------------Country Nationality------------------------
CREATE TABLE country_nationality(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   Nationality VARCHAR(200),
   `Language` VARCHAR(200)
);
-- ----------------------Individual Account Purpose------------------------
CREATE TABLE Individual_Account_Purpose(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   Purpose VARCHAR(200)
);

-- ----------------------Api Call Record------------------------
CREATE TABLE api_call_record(
   ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `user` VARCHAR(100) NOT NULL,
   api_name VARCHAR(100) NOT NULL,
   `client_ip` VARCHAR(50) NOT NULL,
   api_call_status INT NOT NULL,
   DATE_INSERTED VARCHAR(100) NOT NULL
);