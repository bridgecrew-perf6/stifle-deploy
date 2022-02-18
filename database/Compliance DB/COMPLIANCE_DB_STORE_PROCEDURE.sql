USE compliance
-- -------------------------------------------------------------------------------------------UNSC_INDIVIDUAL STORE PROCEDURE-----------------------------------------------------------------

-- -------------------------UNSC_INDIVIDUAL_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_INSERT(
	IN DATAID VARCHAR(100),
	IN VERSIONNUM INT,
	IN FIRST_NAME VARCHAR(50),
	IN SECOND_NAME VARCHAR(50),
	IN THIRD_NAME VARCHAR(50),
	IN FOURTH_NAME VARCHAR(50),
	IN GENDER  VARCHAR(20),
	IN TITLE VARCHAR(50),
	IN UN_LIST_TYPE VARCHAR(50),
	IN REFERENCE_NUMBER VARCHAR(50),
	IN LISTED_ON VARCHAR(50),
	IN COMMENTS1 TEXT,
	IN DESIGNATION VARCHAR(500),
	IN NATIONALITY VARCHAR(200),
	IN LIST_TYPE VARCHAR(50),
	IN LAST_DAY_UPDATED VARCHAR(50),
	IN SORT_KEY VARCHAR(50),
	IN SORT_KEY_LAST_MOD VARCHAR(50),
	IN NAME_ORIGINAL_SCRIPT VARCHAR(500),	
	IN SUBMITTED_BY VARCHAR(50),
	IN DATE_INSERTED VARCHAR(100)  
	)
BEGIN   
  INSERT INTO unsc_individual (DATAID, VERSIONNUM, FIRST_NAME, SECOND_NAME, THIRD_NAME, FOURTH_NAME, GENDER, TITLE, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, DESIGNATION, NATIONALITY, LIST_TYPE, LAST_DAY_UPDATED , SORT_KEY, SORT_KEY_LAST_MOD ,NAME_ORIGINAL_SCRIPT, SUBMITTED_BY, DATE_INSERTED) 
  VALUES (DATAID, VERSIONNUM, FIRST_NAME, SECOND_NAME, THIRD_NAME, FOURTH_NAME, GENDER, TITLE, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, DESIGNATION, NATIONALITY, LIST_TYPE,LAST_DAY_UPDATED , SORT_KEY, SORT_KEY_LAST_MOD ,NAME_ORIGINAL_SCRIPT, SUBMITTED_BY, DATE_INSERTED);
END //

-- CALL UNSC_INDIVIDUAL_INSERT('TEST',1,'TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_ALIAS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_ALIAS_INSERT(
	IN DATAID VARCHAR(100),
	IN ALIAS_NAME VARCHAR(500),
	IN CITY_OF_BIRTH VARCHAR(100),
	IN COUNTRY_OF_BIRTH VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(50), 
	IN NOTE TEXT,
	IN QUALITY VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100)  
	)
BEGIN   
  INSERT INTO unsc_individual_alias (DATAID, ALIAS_NAME, CITY_OF_BIRTH, COUNTRY_OF_BIRTH, DATE_OF_BIRTH, NOTE, QUALITY, DATE_INSERTED) 
  VALUES (DATAID, ALIAS_NAME, CITY_OF_BIRTH, COUNTRY_OF_BIRTH, DATE_OF_BIRTH, NOTE, QUALITY, DATE_INSERTED) ;
END //

-- CALL UNSC_INDIVIDUAL_ALIAS_INSERT('TEST',1,'TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_ADDRESS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_ADDRESS_INSERT(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),
	IN STREET VARCHAR(500),
	IN ZIP_CODE VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_address (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) ;
END //

-- CALL UNSC_INDIVIDUAL_ADDRESS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_DATE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_DATE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN `DATE` VARCHAR(50), 		
	IN FROM_YEAR VARCHAR(50), 		
	IN NOTE TEXT,
	IN TYPE_OF_DATE VARCHAR(50),
	IN `YEAR` VARCHAR(50),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_date_of_birth (DATAID, `DATE`, FROM_YEAR, NOTE, TYPE_OF_DATE, `YEAR`, DATE_INSERTED) 
  VALUES (DATAID, `DATE`, FROM_YEAR, NOTE, TYPE_OF_DATE, `YEAR`, DATE_INSERTED);
END //

-- CALL UNSC_INDIVIDUAL_DATE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_PLACE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_PLACE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO UNSC_INDIVIDUAL_PLACE_OF_BIRTH (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, DATE_INSERTED);
END //

-- CALL UNSC_INDIVIDUAL_PLACE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_DOCUMENT_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_DOCUMENT_INSERT(
	IN DATAID VARCHAR(100),
	IN CITY_OF_ISSUE VARCHAR(500),
	IN COUNTRY_OF_ISSUE VARCHAR(500),
	IN DATE_OF_ISSUE VARCHAR(100), 	
	IN ISSUING_COUNTRY VARCHAR(500),	
	IN NOTE TEXT,	
	IN NUMBER VARCHAR(500),	
	IN TYPE_OF_DOCUMENT VARCHAR(500),	
	IN TYPE_OF_DOCUMENT2 VARCHAR(500),		
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_individual_document (DATAID, CITY_OF_ISSUE, COUNTRY_OF_ISSUE, DATE_OF_ISSUE, ISSUING_COUNTRY, NOTE, NUMBER, TYPE_OF_DOCUMENT, TYPE_OF_DOCUMENT2, DATE_INSERTED) 
  VALUES (DATAID, CITY_OF_ISSUE, COUNTRY_OF_ISSUE, DATE_OF_ISSUE, ISSUING_COUNTRY, NOTE, NUMBER, TYPE_OF_DOCUMENT, TYPE_OF_DOCUMENT2, DATE_INSERTED);
END //

-- CALL UNSC_INDIVIDUAL_DOCUMENT_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_INDIVIDUAL_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM unsc_individual  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL UNSC_INDIVIDUAL_COUNT_REC('18-05-2021 16:30')

-- -----------------------------------------------------------------------------------------UNSC_ENTITY STORE PROCEDURE-------------------------------------------------------------------------------------------

-- -------------------------UNSC_ENTITY_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_ENTITY_INSERT(
	IN DATAID VARCHAR(100),
	IN VERSIONNUM INT,
	IN FIRST_NAME VARCHAR(500),	
	IN UN_LIST_TYPE VARCHAR(50),
	IN REFERENCE_NUMBER VARCHAR(50),
	IN LISTED_ON VARCHAR(50),
	IN COMMENTS1 TEXT,	
	IN LIST_TYPE VARCHAR(50),
	IN LAST_DAY_UPDATED VARCHAR(50),
	IN SORT_KEY VARCHAR(50),
	IN SORT_KEY_LAST_MOD VARCHAR(50),
	IN NAME_ORIGINAL_SCRIPT VARCHAR(500),	
	IN SUBMITTED_ON VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO unsc_entity (DATAID, VERSIONNUM, FIRST_NAME, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, LIST_TYPE, LAST_DAY_UPDATED, SORT_KEY, SORT_KEY_LAST_MOD, NAME_ORIGINAL_SCRIPT, SUBMITTED_ON, DATE_INSERTED) 
  VALUES (DATAID, VERSIONNUM , FIRST_NAME, UN_LIST_TYPE, REFERENCE_NUMBER, LISTED_ON, COMMENTS1, LIST_TYPE, LAST_DAY_UPDATED, SORT_KEY, SORT_KEY_LAST_MOD, NAME_ORIGINAL_SCRIPT, SUBMITTED_ON, DATE_INSERTED);
END //

-- CALL UNSC_ENTITY_INSERT('TEST',1,'TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_ENTITY_ALIAS---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_ENTITY_ALIAS_INSERT(
	IN DATAID VARCHAR(100),
	IN ALIAS_NAME VARCHAR(500),	
	IN QUALITY VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_entity_alias (DATAID, ALIAS_NAME, QUALITY, DATE_INSERTED) 
  VALUES (DATAID, ALIAS_NAME, QUALITY, DATE_INSERTED);
END //

-- CALL UNSC_ENTITY_ALIAS_INSERT('TEST','TEST','TEST','TEST')

-- -------------------------UNSC_ENTITY_ADDRESS---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_ENTITY_ADDRESS_INSERT(
	IN DATAID VARCHAR(100),
	IN CITY VARCHAR(500),
	IN COUNTRY VARCHAR(500),
	IN NOTE TEXT,
	IN STATE_PROVINCE VARCHAR(500),
	IN STREET VARCHAR(500),
	IN ZIP_CODE VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO unsc_entity_address (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED) 
  VALUES (DATAID, CITY, COUNTRY, NOTE, STATE_PROVINCE, STREET, ZIP_CODE, DATE_INSERTED);
END //

-- CALL UNSC_ENTITY_ADDRESS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------UNSC_ENTITY_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE UNSC_ENTITY_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM unsc_entity  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL UNSC_ENTITY_COUNT_REC('18-05-2021 16:30')


-- /*DELIMITER //
-- CREATE PROCEDURE UNSC_ENTITY_COUNT_REC(
-- 	IN MY_DATE_INSERTED VARCHAR(100),
-- 	OUT REC_COUNT VARCHAR(20)	
-- 	)
-- BEGIN
--   SET REC_COUNT = (SELECT COUNT(*)
-- FROM UNSC_ENTITY
-- WHERE DATE_INSERTED = MY_DATE_INSERTED);
  
-- SELECT REC_COUNT;
-- END //
-- CALL UNSC_ENTITY_COUNT_REC('18-05-2021 16:30',@REC_COUNT)*/

-- -----------------------------------------------------------------------------------------NACTA_PROSCRIBED_PERSONS STORE PROCEDURE-------------------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_PERSONS_INSERT(
	IN `NAME` VARCHAR(300),
	IN ALIAS VARCHAR(300),
	IN FATHER_NAME VARCHAR(300),	
	IN CNIC VARCHAR(100),
	IN PROVINCE VARCHAR(100),
	IN DISTRICT VARCHAR(100),
	IN DISCREPANT_CHECK VARCHAR(20),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_persons (`NAME`, ALIAS, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DISCREPANT_CHECK, DATE_INSERTED) 
  VALUES (`NAME`, ALIAS, FATHER_NAME, CNIC, PROVINCE, DISTRICT, discrepant_check, DATE_INSERTED);
END //

-- CALL NACTA_PROSCRIBED_PERSONS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')
-- -------------------------NACTA_PROSCRIBED_PERSONS_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_PERSONS_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_persons  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL NACTA_PROSCRIBED_PERSONS_COUNT_REC('12-05-2021 17:07')

-- -----------------------------------------------------------------------------------------OFAC STORE PROCEDURE-------------------------------------------------------------------------------------------
-- -------------------------OFAC_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_INSERT(
	IN DATAID VARCHAR(100),
	IN FIRST_NAME VARCHAR(500),
	IN LAST_NAME VARCHAR(500),
	IN SDN_TYPE VARCHAR(100),
	IN REMARKS TEXT,
	IN PROGRAM_LIST VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO ofac (DATAID, FIRST_NAME, LAST_NAME, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED) 
  VALUES (DATAID, FIRST_NAME, LAST_NAME, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED);
END //

-- CALL OFAC_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_COUNT_REC--------------------------
DELIMITER //
CREATE PROCEDURE OFAC_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofac  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL OFAC_COUNT_REC('12-05-2021 17:07')

-- -------------------------OFAC_ALIAS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_ALIAS_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN `TYPE` VARCHAR(100),
	IN FIRST_NAME VARCHAR(300),
	IN LAST_NAME VARCHAR(300),
	IN CATEGORY VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_alias (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) 
  VALUES (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) ;
END //

-- CALL OFAC_ALIAS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_DATE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_DATE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_date_of_birth (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_DATE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_PLACE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_PLACE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN PLACE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_place_of_birth (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_PLACE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_ADDRESS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_ADDRESS_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN STATE_OR_PROVINCE VARCHAR(500),	
	IN POSTAL_CODE VARCHAR(100),
	IN COUNTRY VARCHAR(500), 		
	IN CITY VARCHAR(500), 		
	IN ADDRESS_1 VARCHAR(500), 		
	IN ADDRESS_2 VARCHAR(500), 		
	IN ADDRESS_3 VARCHAR(500), 	
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_address (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED) 
  VALUES (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED);
END //

-- CALL OFAC_ADDRESS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_CITIZENSHIP_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_CITIZENSHIP_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_citizenship (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_CITIZENSHIP_INSERT('TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFAC_ID_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_ID_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN ID_TYPE VARCHAR(500),	
	IN ID_NUMBER VARCHAR(500), 		
	IN ID_COUNTRY VARCHAR(500), 
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_id (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, DATE_INSERTED) ;
END //

-- CALL OFAC_ID_INSERT('TEST','TEST','TEST','TEST','TEST','TEST')

-- -----------------------------------------------------------------------------OFSI STORE PROCEDURE-------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE OFSI_INSERT(
	IN GroupID VARCHAR(100),
	IN OFSI_ID VARCHAR(100),
	IN AliasType VARCHAR(500),
	IN AliasTypeName VARCHAR(500),
	IN FullName VARCHAR(500),
	IN FullAddress VARCHAR(500),	
	IN name1 VARCHAR(300),
	IN name2 VARCHAR(300),
	IN name3 VARCHAR(300),
	IN name4 VARCHAR(300),
	IN name5 VARCHAR(300),
	IN Name6 VARCHAR(300),
	IN address1 VARCHAR(300),
	IN address2 VARCHAR(300),
	IN address3 VARCHAR(300),
	IN address4 VARCHAR(300),
	IN address5 VARCHAR(300),
	IN address6 VARCHAR(300),
	IN Gender VARCHAR(500),
	IN BusinessRegNumber VARCHAR(500),
	IN Country VARCHAR(500),
	IN CountryOfBirth VARCHAR(500),
	IN CurrentOwners VARCHAR(500),
	IN DateListed VARCHAR(500),
	IN DateListedDay VARCHAR(500),
	IN DateListedMonth VARCHAR(500),
	IN DateListedYear VARCHAR(500),
	IN DateOfBirth VARCHAR(500),
	IN DateOfBirthId VARCHAR(500),
	IN DayOfBirth VARCHAR(500),
	IN EmailAddress VARCHAR(500),
	IN FCOId VARCHAR(500),
	IN FlagOfVessel VARCHAR(500),	
	IN FurtherIdentifiyingInformation TEXT,	
	IN GroupStatus TEXT,
	IN GroupTypeDescription TEXT,
	IN GrpStatus TEXT,
	IN HIN TEXT,
	IN IMONumber TEXT,
	IN LastUpdated TEXT,
	IN LastUpdatedDay TEXT,
	IN LastUpdatedMonth TEXT,
	IN LastUpdatedYear TEXT,
	IN LengthOfVessel TEXT,
	IN ListingType TEXT,
	IN MonthOfBirth TEXT,
	IN NameTitle TEXT,
	IN NationalIdNumber TEXT,
	IN Nationality TEXT,
	IN OrgType TEXT,
	IN OtherInformation TEXT,
	IN ParentCompany TEXT,
	IN PassportDetails TEXT,
	IN PhoneNumber TEXT,
	IN `Position` TEXT,
	IN PostCode TEXT,
	IN PreviousFlags TEXT,
	IN PreviousOwners TEXT,
	IN RegimeName TEXT,
	IN Subsidiaries TEXT,
	IN TonnageOfVessel TEXT,
	IN TownOfBirth TEXT,
	IN TypeOfVessel TEXT,
	IN UKStatementOfReasons TEXT,
	IN Website TEXT,
	IN YearBuilt TEXT,
	IN YearOfBirth TEXT,
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO ofsi (GroupID, OFSI_ID, AliasType,AliasTypeName,name1,name2,name3,name4,name5,Name6,address1,address2,address3,address4,address5,address6,BusinessRegNumber,Country,	CountryOfBirth,	CurrentOwners,	DateListed,DateListedDay,DateListedMonth,DateListedYear,DateOfBirth,DateOfBirthId,DayOfBirth,EmailAddress,FCOId,FlagOfVessel,FullAddress,FullName,FurtherIdentifiyingInformation,Gender,GroupStatus,GroupTypeDescription,GrpStatus,HIN,	IMONumber,LastUpdated,LastUpdatedDay,LastUpdatedMonth,LastUpdatedYear,LengthOfVessel,ListingType,MonthOfBirth,NameTitle,NationalIdNumber,Nationality,OrgType,	OtherInformation,	ParentCompany,	PassportDetails,PhoneNumber,`Position`,	PostCode,PreviousFlags,	PreviousOwners,	RegimeName,Subsidiaries,TonnageOfVessel,TownOfBirth,TypeOfVessel,UKStatementOfReasons,Website,YearBuilt,YearOfBirth, DATE_INSERTED) 
  VALUES (GroupID, OFSI_ID, AliasType,AliasTypeName,name1,name2,name3,name4,name5,Name6,address1,address2,address3,address4,address5,address6,BusinessRegNumber,Country,	CountryOfBirth,	CurrentOwners,	DateListed,DateListedDay,DateListedMonth,DateListedYear,DateOfBirth,DateOfBirthId,DayOfBirth,EmailAddress,FCOId,FlagOfVessel,FullAddress,FullName,FurtherIdentifiyingInformation,Gender,GroupStatus,GroupTypeDescription,GrpStatus,HIN,	IMONumber,LastUpdated,LastUpdatedDay,LastUpdatedMonth,LastUpdatedYear,LengthOfVessel,ListingType,MonthOfBirth,NameTitle,NationalIdNumber,Nationality,OrgType,	OtherInformation,	ParentCompany,	PassportDetails,PhoneNumber,`Position`,	PostCode,PreviousFlags,	PreviousOwners,	RegimeName,Subsidiaries,TonnageOfVessel,TownOfBirth,TypeOfVessel,UKStatementOfReasons,Website,YearBuilt,YearOfBirth, DATE_INSERTED) ;
END //

-- CALL OFSI_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------OFSI_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE OFSI_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofsi  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL OFSI_COUNT_REC('12-05-2021 17:07')

-- -------------------------------------------------------------------------------------------------------EUFS STORE PROCEDURE-------------------------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE EUFS_INSERT(
	IN Entity_LogicalId VARCHAR(20) ,
	IN Entity_EU_ReferenceNumber VARCHAR(20) ,
	IN Entity_UnitedNationId VARCHAR(20) ,
	IN Entity_DesignationDate VARCHAR(100) ,
	IN Entity_DesignationDetails TEXT,
	IN Entity_Remark TEXT,
	IN Entity_SubjectType VARCHAR(100) ,
	IN Entity_SubjectType_ClassificationCode VARCHAR(100) ,
	IN Entity_Regulation_Type VARCHAR(100) ,
	IN Entity_Regulation_OrganisationType VARCHAR(100) ,
	IN Entity_Regulation_PublicationDate VARCHAR(100) ,
	IN Entity_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN Entity_Regulation_NumberTitle VARCHAR(100) ,
	IN Entity_Regulation_Programme VARCHAR(100) ,
	IN Entity_Regulation_PublicationUrl TEXT,
	IN NameAlias_LastName VARCHAR(100),
	IN NameAlias_FirstName VARCHAR(100),
	IN NameAlias_MiddleName VARCHAR(100),
	IN NameAlias_WholeName VARCHAR(500),
	IN NameAlias_NameLanguage VARCHAR(100),
	IN NameAlias_Gender VARCHAR(100),
	IN NameAlias_Title VARCHAR(500),
	IN NameAlias_Function TEXT,
	IN NameAlias_LogicalId VARCHAR(100),
	IN NameAlias_RegulationLanguage VARCHAR(100) ,
	IN NameAlias_Remark TEXT,
	IN NameAlias_Regulation_Type VARCHAR(100) ,
	IN NameAlias_Regulation_OrganisationType VARCHAR(100),
	IN NameAlias_Regulation_PublicationDate VARCHAR(100),
	IN NameAlias_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN NameAlias_Regulation_NumberTitle VARCHAR(100),
	IN NameAlias_Regulation_Programme VARCHAR(100),
	IN NameAlias_Regulation_PublicationUrl TEXT,
	IN Address_City VARCHAR(1000),
	IN Address_Street TEXT,
	IN Address_PoBox VARCHAR(100),
	IN Address_ZipCode VARCHAR(100),
	IN Address_Region VARCHAR(100),
	IN Address_Place VARCHAR(100),
	IN Address_AsAtListingTime VARCHAR(100),
	IN Address_ContactInfo VARCHAR(500),
	IN Address_CountryIso2Code VARCHAR(100),
	IN Address_CountryDescription VARCHAR(100),
	IN Address_LogicalId VARCHAR(100),
	IN Address_RegulationLanguage VARCHAR(100) ,
	IN Address_Remark TEXT,
	IN Address_Regulation_Type VARCHAR(100) ,
	IN Address_Regulation_OrganisationType VARCHAR(100) ,
	IN Address_Regulation_PublicationDate VARCHAR(100) ,
	IN Address_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN Address_Regulation_NumberTitle VARCHAR(100) ,
	IN Address_Regulation_Programme VARCHAR(100) ,
	IN Address_Regulation_PublicationUrl VARCHAR(500) ,
	IN BirthDate_BirthDate VARCHAR(100) ,
	IN BirthDate_Day VARCHAR(100) ,
	IN BirthDate_Month VARCHAR(100) ,
	IN BirthDate_Year VARCHAR(100) ,
	IN BirthDate_YearRangeFrom VARCHAR(100) ,
	IN BirthDate_YearRangeTo VARCHAR(100) ,
	IN BirthDate_Circa VARCHAR(100) ,
	IN BirthDate_CalendarType VARCHAR(100) ,
	IN BirthDate_ZipCode VARCHAR(100) ,
	IN BirthDate_Region VARCHAR(100) ,
	IN BirthDate_Place VARCHAR(500) ,
	IN BirthDate_City VARCHAR(100) ,
	IN BirthDate_CountryIso2Code VARCHAR(100) ,
	IN BirthDate_CountryDescription VARCHAR(100) ,
	IN BirthDate_LogicalId VARCHAR(100) ,
	IN BirthDate_RegulationLanguage VARCHAR(100) ,
	IN BirthDate_Remark VARCHAR(500) ,
	IN BirthDate_Regulation_Type VARCHAR(100) ,
	IN BirthDate_Regulation_OrganisationType VARCHAR(100) ,
	IN BirthDate_Regulation_PublicationDate VARCHAR(100) ,
	IN BirthDate_Regulation_EntryIntoForceDate VARCHAR(100) ,
	IN BirthDate_Regulation_NumberTitle VARCHAR(100) ,
	IN BirthDate_Regulation_Programme VARCHAR(100) ,
	IN BirthDate_Regulation_PublicationUrl VARCHAR(500) ,
	IN Identification_Number TEXT,
	IN Identification_Diplomatic VARCHAR(100) ,
	IN Identification_KnownExpired VARCHAR(100) ,
	IN Identification_KnownFalse VARCHAR(100) ,
	IN Identification_ReportedLost VARCHAR(100) ,
	IN Identification_RevokedByIssuer VARCHAR(100) ,
	IN Identification_IssuedBy VARCHAR(500) ,
	IN Identification_IssuedDate VARCHAR(100),
	IN Identification_ValidFrom VARCHAR(100),
	IN Identification_ValidTo VARCHAR(100),
	IN Identification_LatinNumber VARCHAR(100),
	IN Identification_NameOnDocument VARCHAR(100) ,
	IN Identification_TypeCode VARCHAR(100),
	IN Identification_TypeDescription VARCHAR(100),
	IN Identification_Region VARCHAR(100),
	IN Identification_CountryIso2Code VARCHAR(100),
	IN Identification_CountryDescription VARCHAR(100),
	IN Identification_LogicalId VARCHAR(100) ,
	IN Identification_RegulationLanguage VARCHAR(100),
	IN Identification_Remark VARCHAR(500),
	IN Identification_Regulation_Type VARCHAR(100) ,
	IN Identification_Regulation_OrganisationType VARCHAR(100),
	IN Identification_Regulation_PublicationDate VARCHAR(100),
	IN Identification_Regulation_EntryIntoForceDate VARCHAR(100),
	IN Identification_Regulation_NumberTitle VARCHAR(100),
	IN Identification_Regulation_Programme VARCHAR(100),
	IN Identification_Regulation_PublicationUrl TEXT,
	IN Citizenship_Region VARCHAR(100),
	IN Citizenship_CountryIso2Code VARCHAR(100) ,
	IN Citizenship_CountryDescription VARCHAR(100),
	IN Citizenship_LogicalId VARCHAR(100),
	IN Citizenship_RegulationLanguage VARCHAR(100),
	IN Citizenship_Remark TEXT,
	IN Citizenship_Regulation_Type VARCHAR(100) ,
	IN Citizenship_Regulation_OrganisationType VARCHAR(100),
	IN Citizenship_Regulation_PublicationDate VARCHAR(100),
	IN Citizenship_Regulation_EntryIntoForceDate VARCHAR(100),
	IN Citizenship_Regulation_NumberTitle VARCHAR(100),
	IN Citizenship_Regulation_Programme VARCHAR(100),
	IN Citizenship_Regulation_PublicationUrl TEXT,
	IN DATE_INSERTED VARCHAR(100)
	)
BEGIN   
  INSERT INTO eufs (Entity_LogicalId,Entity_EU_ReferenceNumber,Entity_UnitedNationId,Entity_DesignationDate,Entity_DesignationDetails,Entity_Remark,Entity_SubjectType,Entity_SubjectType_ClassificationCode,Entity_Regulation_Type,Entity_Regulation_OrganisationType,Entity_Regulation_PublicationDate,Entity_Regulation_EntryIntoForceDate,Entity_Regulation_NumberTitle,Entity_Regulation_Programme,Entity_Regulation_PublicationUrl,NameAlias_LastName,NameAlias_FirstName,NameAlias_MiddleName,NameAlias_WholeName,NameAlias_NameLanguage,NameAlias_Gender,NameAlias_Title,NameAlias_Function,NameAlias_LogicalId,NameAlias_RegulationLanguage,NameAlias_Remark,NameAlias_Regulation_Type,NameAlias_Regulation_OrganisationType,	NameAlias_Regulation_PublicationDate,NameAlias_Regulation_EntryIntoForceDate,NameAlias_Regulation_NumberTitle,NameAlias_Regulation_Programme,	NameAlias_Regulation_PublicationUrl,	Address_City ,	Address_Street  ,	Address_PoBox,	Address_ZipCode,Address_Region,	Address_Place,Address_AsAtListingTime,Address_ContactInfo,Address_CountryIso2Code,Address_CountryDescription,Address_LogicalId,Address_RegulationLanguage,Address_Remark,Address_Regulation_Type,Address_Regulation_OrganisationType,	Address_Regulation_PublicationDate,	Address_Regulation_EntryIntoForceDate,	Address_Regulation_NumberTitle,	Address_Regulation_Programme,	Address_Regulation_PublicationUrl,	BirthDate_BirthDate,BirthDate_Day,BirthDate_Month,BirthDate_Year,BirthDate_YearRangeFrom,BirthDate_YearRangeTo,	BirthDate_Circa,BirthDate_CalendarType,	BirthDate_ZipCode,BirthDate_Region,BirthDate_Place,BirthDate_City,BirthDate_CountryIso2Code,BirthDate_CountryDescription,BirthDate_LogicalId,BirthDate_RegulationLanguage,BirthDate_Remark,BirthDate_Regulation_Type,BirthDate_Regulation_OrganisationType,BirthDate_Regulation_PublicationDate,BirthDate_Regulation_EntryIntoForceDate,BirthDate_Regulation_NumberTitle,BirthDate_Regulation_Programme,BirthDate_Regulation_PublicationUrl,Identification_Number,Identification_Diplomatic,Identification_KnownExpired,Identification_KnownFalse,Identification_ReportedLost,Identification_RevokedByIssuer,Identification_IssuedBy,Identification_IssuedDate,Identification_ValidFrom,Identification_ValidTo,Identification_LatinNumber,Identification_NameOnDocument,Identification_TypeCode,Identification_TypeDescription,	Identification_Region,	Identification_CountryIso2Code,	Identification_CountryDescription,Identification_LogicalId,Identification_RegulationLanguage,Identification_Remark,Identification_Regulation_Type,Identification_Regulation_OrganisationType,	Identification_Regulation_PublicationDate,	Identification_Regulation_EntryIntoForceDate,	Identification_Regulation_NumberTitle,	Identification_Regulation_Programme,	Identification_Regulation_PublicationUrl,Citizenship_Region,Citizenship_CountryIso2Code,Citizenship_CountryDescription,Citizenship_LogicalId,Citizenship_RegulationLanguage,Citizenship_Remark,Citizenship_Regulation_Type,Citizenship_Regulation_OrganisationType,Citizenship_Regulation_PublicationDate,Citizenship_Regulation_EntryIntoForceDate,Citizenship_Regulation_NumberTitle,Citizenship_Regulation_Programme,Citizenship_Regulation_PublicationUrl,DATE_INSERTED)
  VALUES (Entity_LogicalId,Entity_EU_ReferenceNumber,Entity_UnitedNationId,Entity_DesignationDate,Entity_DesignationDetails,Entity_Remark,Entity_SubjectType,Entity_SubjectType_ClassificationCode,Entity_Regulation_Type,Entity_Regulation_OrganisationType,Entity_Regulation_PublicationDate,Entity_Regulation_EntryIntoForceDate,Entity_Regulation_NumberTitle,Entity_Regulation_Programme,Entity_Regulation_PublicationUrl,NameAlias_LastName,NameAlias_FirstName,NameAlias_MiddleName,NameAlias_WholeName,NameAlias_NameLanguage,NameAlias_Gender,NameAlias_Title,NameAlias_Function,NameAlias_LogicalId,NameAlias_RegulationLanguage,NameAlias_Remark,NameAlias_Regulation_Type,NameAlias_Regulation_OrganisationType,	NameAlias_Regulation_PublicationDate,NameAlias_Regulation_EntryIntoForceDate,NameAlias_Regulation_NumberTitle,NameAlias_Regulation_Programme,	NameAlias_Regulation_PublicationUrl,	Address_City ,	Address_Street  ,	Address_PoBox,	Address_ZipCode,Address_Region,	Address_Place,Address_AsAtListingTime,Address_ContactInfo,Address_CountryIso2Code,Address_CountryDescription,Address_LogicalId,Address_RegulationLanguage,Address_Remark,Address_Regulation_Type,Address_Regulation_OrganisationType,	Address_Regulation_PublicationDate,	Address_Regulation_EntryIntoForceDate,	Address_Regulation_NumberTitle,	Address_Regulation_Programme,	Address_Regulation_PublicationUrl,	BirthDate_BirthDate,BirthDate_Day,BirthDate_Month,BirthDate_Year,BirthDate_YearRangeFrom,BirthDate_YearRangeTo,	BirthDate_Circa,BirthDate_CalendarType,	BirthDate_ZipCode,BirthDate_Region,BirthDate_Place,BirthDate_City,BirthDate_CountryIso2Code,BirthDate_CountryDescription,BirthDate_LogicalId,BirthDate_RegulationLanguage,BirthDate_Remark,BirthDate_Regulation_Type,BirthDate_Regulation_OrganisationType,BirthDate_Regulation_PublicationDate,BirthDate_Regulation_EntryIntoForceDate,BirthDate_Regulation_NumberTitle,BirthDate_Regulation_Programme,BirthDate_Regulation_PublicationUrl,Identification_Number,Identification_Diplomatic,Identification_KnownExpired,Identification_KnownFalse,Identification_ReportedLost,Identification_RevokedByIssuer,Identification_IssuedBy,Identification_IssuedDate,Identification_ValidFrom,Identification_ValidTo,Identification_LatinNumber,Identification_NameOnDocument,Identification_TypeCode,Identification_TypeDescription,	Identification_Region,	Identification_CountryIso2Code,	Identification_CountryDescription,Identification_LogicalId,Identification_RegulationLanguage,Identification_Remark,Identification_Regulation_Type,Identification_Regulation_OrganisationType,	Identification_Regulation_PublicationDate,	Identification_Regulation_EntryIntoForceDate,	Identification_Regulation_NumberTitle,	Identification_Regulation_Programme,	Identification_Regulation_PublicationUrl,Citizenship_Region,Citizenship_CountryIso2Code,Citizenship_CountryDescription,Citizenship_LogicalId,Citizenship_RegulationLanguage,Citizenship_Remark,Citizenship_Regulation_Type,Citizenship_Regulation_OrganisationType,Citizenship_Regulation_PublicationDate,Citizenship_Regulation_EntryIntoForceDate,Citizenship_Regulation_NumberTitle,Citizenship_Regulation_Programme,Citizenship_Regulation_PublicationUrl,DATE_INSERTED);
END //

-- CALL EUFS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')
-- -------------------------EUFS_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE EUFS_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM eufs  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL EUFS_COUNT_REC('12-05-2021 17:16')

-- -----------------------------------------------------------------------------------------NACTA_PROSCRIBED_ORGANIZATIONS STORE PROCEDURE-----------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_ORGANIZATIONS_INSERT(
	IN Name_of_Organization VARCHAR(500),
	IN Date_of_Notification VARCHAR(100),
	IN Affiliated_Organizations VARCHAR(500),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_organizations (Name_of_Organization, Date_of_Notification, Affiliated_Organizations, DATE_INSERTED) 
  VALUES (Name_of_Organization, Date_of_Notification, Affiliated_Organizations, DATE_INSERTED);
END //

-- CALL NACTA_PROSCRIBED_ORGANIZATIONS_INSERT('TEST','TEST','TEST','TEST')

-- -------------------------NACTA_PROSCRIBED_ORGANIZATIONS_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_ORGANIZATIONS_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_organizations  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL NACTA_PROSCRIBED_ORGANIZATIONS_REC('12-06-2021 06:57')

-- -----------------------------------------------------------------------------------------NACTA_PROSCRIBED_PERSONS_DENOTIFIED STORE PROCEDURE-----------------------------------------------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_PERSONS_DENOTIFIED_INSERT(
	IN `NAME` VARCHAR(100),
	IN FATHER_NAME VARCHAR(100),	
	IN CNIC VARCHAR(100),
	IN PROVINCE VARCHAR(100),
	IN DISTRICT VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO nacta_proscribed_persons_denotified (`NAME`, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DATE_INSERTED) 
  VALUES (`NAME`, FATHER_NAME, CNIC, PROVINCE, DISTRICT, DATE_INSERTED);
END //

-- CALL NACTA_PROSCRIBED_PERSONS_DENOTIFIED_INSERT('TEST','TEST','TEST','TEST','TEST','TEST')

-- -------------------------NACTA_PROSCRIBED_PERSONS_DENOTIFIED_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE NACTA_PROSCRIBED_PERSONS_DENOTIFIED_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM nacta_proscribed_persons_denotified  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL NACTA_PROSCRIBED_PERSONS_DENOTIFIED_COUNT_REC('12-06-2021 06:54')

-- --------------------------------------------------------------------------------------------OFAC SDN STORE PROCEDURE-----------------------------------------------------------------------------------------------
-- -------------------------OFAC_SDN_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_INSERT(
	IN DATAID VARCHAR(100),
	IN FIRST_NAME VARCHAR(500),
	IN LAST_NAME VARCHAR(500),
	IN TITLE VARCHAR(500),
	IN SDN_TYPE VARCHAR(100),
	IN REMARKS TEXT,
	IN PROGRAM_LIST VARCHAR(100),
	IN DATE_INSERTED VARCHAR(100) 
	)
BEGIN   
  INSERT INTO ofac_sdn (DATAID, FIRST_NAME, LAST_NAME, TITLE, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED) 
  VALUES (DATAID, FIRST_NAME, LAST_NAME, TITLE, SDN_TYPE, REMARKS, PROGRAM_LIST, DATE_INSERTED);
END //

-- CALL OFAC_SDN_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','12-05-2021 17:07')

-- -------------------------OFAC_SDN_COUNT_REC---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_COUNT_REC(
	IN MY_DATE_INSERTED VARCHAR(100)
	)
BEGIN
  SELECT COUNT(*)
  FROM ofac_sdn  
  WHERE DATE_INSERTED = MY_DATE_INSERTED;
END //

-- CALL OFAC_SDN_COUNT_REC('12-05-2021 17:07')

-- -------------------------OFAC_SDN_ALIAS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_ALIAS_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN `TYPE` VARCHAR(100),
	IN FIRST_NAME VARCHAR(300),
	IN LAST_NAME VARCHAR(300),
	IN CATEGORY VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_alias (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) 
  VALUES (DATAID, UID, `TYPE`, FIRST_NAME, LAST_NAME, CATEGORY, DATE_INSERTED) ;
END //

-- CALL OFAC_SDN_ALIAS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- ---------------------------OFAC_SDN_DATE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_DATE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN DATE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_date_of_birth (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, DATE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_SDN_DATE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST')

-- ---------------------------OFAC_SDN_PLACE_OF_BIRTH_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_PLACE_OF_BIRTH_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN PLACE_OF_BIRTH VARCHAR(100),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_place_of_birth (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, PLACE_OF_BIRTH, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_SDN_PLACE_OF_BIRTH_INSERT('TEST','TEST','TEST','TEST','TEST')

-- ---------------------------OFAC_SDN_ADDRESS_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_ADDRESS_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN STATE_OR_PROVINCE VARCHAR(500),	
	IN POSTAL_CODE VARCHAR(100),
	IN COUNTRY VARCHAR(500), 		
	IN CITY VARCHAR(500), 		
	IN ADDRESS_1 VARCHAR(500), 		
	IN ADDRESS_2 VARCHAR(500), 		
	IN ADDRESS_3 VARCHAR(500), 	
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_address (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED) 
  VALUES (DATAID, UID, STATE_OR_PROVINCE, POSTAL_CODE, COUNTRY, CITY, ADDRESS_1, ADDRESS_2, ADDRESS_3, DATE_INSERTED);
END //

-- CALL OFAC_SDN_ADDRESS_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

-- ---------------------------OFAC_SDN_CITIZENSHIP_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_CITIZENSHIP_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_citizenship (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_SDN_CITIZENSHIP_INSERT('TEST','TEST','TEST','TEST','TEST')

-- ---------------------------OFAC_SDN_NATIONALITY INSERT---------------------------
DELIMITER //
CREATE PROCEDURE OFAC_SDN_NATIONALITY_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN COUNTRY VARCHAR(300),	
	IN MAIN_ENTRY VARCHAR(50),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_nationality (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED) 
  VALUES (DATAID, UID, COUNTRY, MAIN_ENTRY, DATE_INSERTED);
END //

-- CALL OFAC_SDN_NATIONALITY_INSERT('TEST','TEST','TEST','TEST','TEST')

/*---------------------------OFAC_SDN_ID_INSERT---------------------------*/
DELIMITER //
CREATE PROCEDURE OFAC_SDN_ID_INSERT(
	IN DATAID VARCHAR(100),
	IN UID VARCHAR(100),
	IN ID_TYPE VARCHAR(500),	
	IN ID_NUMBER VARCHAR(500), 		
	IN ID_COUNTRY VARCHAR(500), 
	IN ISSUE_DATE VARCHAR(100),
	IN EXPIRATION_DATE VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_id (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, ISSUE_DATE, EXPIRATION_DATE, DATE_INSERTED) 
  VALUES (DATAID, UID, ID_TYPE, ID_NUMBER, ID_COUNTRY, ISSUE_DATE, EXPIRATION_DATE, DATE_INSERTED);
END //

-- CALL OFAC_SDN_ID_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')

/*---------------------------OFAC_SDN_VESSEL_INFO_INSERT---------------------------*/
DELIMITER //
CREATE PROCEDURE OFAC_SDN_VESSEL_INFO_INSERT(
	IN DATAID VARCHAR(100),
	IN CALL_SIGN VARCHAR(100),	
	IN VESSEL_TYPE VARCHAR(200),	
	IN VESSEL_FLAG VARCHAR(200), 		
	IN VESSEL_OWNER VARCHAR(200), 	
	IN TONNAGE VARCHAR(100),
	IN GROSS_REGISTERED_TONNAGE VARCHAR(100),
	IN DATE_INSERTED VARCHAR (100)
	)
BEGIN   
  INSERT INTO ofac_sdn_vessel_info (DATAID, CALL_SIGN, VESSEL_TYPE, VESSEL_FLAG, VESSEL_OWNER, TONNAGE, GROSS_REGISTERED_TONNAGE, DATE_INSERTED) 
  VALUES (DATAID, CALL_SIGN, VESSEL_TYPE, VESSEL_FLAG, VESSEL_OWNER, TONNAGE, GROSS_REGISTERED_TONNAGE, DATE_INSERTED);
END //

-- CALL OFAC_SDN_VESSEL_INFO_INSERT('TEST','TEST','TEST','TEST','TEST','TEST','TEST','TEST')
--  -------------------------CONSOLIDATE_LIST_INSERT---------------------------
DELIMITER //
CREATE PROCEDURE CONSOLIDATE_LIST_SELECT()
BEGIN
  SELECT *
  FROM consolidate_list
  WHERE DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
			FROM consolidate_list);
END //

-- CALL CONSOLIDATE_LIST_SELECT