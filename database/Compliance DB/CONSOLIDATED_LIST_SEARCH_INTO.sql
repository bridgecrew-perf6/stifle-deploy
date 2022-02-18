DELIMITER //
CREATE PROCEDURE CONSOLIDATED_LIST_SEARCH_INTO()
BEGIN
TRUNCATE TABLE consolidate_list;
INSERT INTO compliance.consolidate_list
SELECT 0, B.*
FROM(
	SELECT A.DATAID, A.`Name`, A.Alias, A.ALIAS_QUALITY, A.ID_NUMBER, A.Father_Name, A.Gender, 
	CASE
	    WHEN STR_TO_DATE(A.DOB, '%Y-%m-%d') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%Y-%m-%d')
	    WHEN STR_TO_DATE(A.DOB, '%d %b %Y') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%d %b %Y')     
	    WHEN STR_TO_DATE(A.DOB, '%d/%m/%Y') != '(NULL)' THEN STR_TO_DATE(A.DOB, '%d/%m/%Y')
	    ELSE "1000-01-01"
	END AS DOB,
	A.POB, A.Address, A.Province, A.District, A.Nationality, A.Country, A.City, A.DISCREPANT_CHECK, A.List, A.Type, CURRENT_TIMESTAMP() AS DATE_INSERTED
	FROM (
		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.SECOND_NAME, A.THIRD_NAME, A.FOURTH_NAME) AS 'Name', IFNULL(C.ALIAS_NAME,' ') AS Alias, IFNULL(C.QUALITY ,'') AS ALIAS_QUALITY, IFNULL(F.NUMBER ,'') AS ID_NUMBER, ' ' AS Father_Name, IFNULL(A.Gender,'Unspecified') AS Gender,IFNULL(D.Date, ' ') AS DOB, IFNULL(CONCAT_WS(' ',E.CITY, E.COUNTRY, E.STATE_PROVINCE), ' ') AS POB, CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', IFNULL(B.STATE_PROVINCE, '')  AS PROVINCE, ' ' AS DISTRICT, IFNULL(A.NATIONALITY, '') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(E.CITY, '') AS City, '' AS DISCREPANT_CHECK, 'UNSC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM unsc_individual AS A
		LEFT JOIN unsc_individual_address AS B
		ON A.DATAID = B.DATAID
		LEFT JOIN unsc_individual_alias AS C
		ON A.DATAID = C.DATAID	
		LEFT JOIN unsc_individual_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN unsc_individual_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN unsc_individual_document AS F
		ON A.DATAID = F.DATAID
		WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
					FROM unsc_individual)
				
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME) AS 'Name', IFNULL(C.ALIAS_NAME,' ') AS Alias, IFNULL(C.QUALITY ,'') AS ALIAS_QUALITY, ' ' AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender,' ' AS DOB,' ' AS POB, CONCAT_WS(' ',B.CITY, B.STATE_PROVINCE, B.COUNTRY) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT, ' ' AS Nationality,' ' AS Country, ' ' AS City, '' AS DISCREPANT_CHECK, 'UNSC' AS 'List', 'ENTITY' AS 'Type'
		FROM unsc_entity AS A
		LEFT JOIN unsc_entity_address AS B
		ON A.DATAID = B.DATAID
		LEFT JOIN unsc_entity_alias AS C
		ON A.DATAID = C.DATAID
		WHERE A.DATE_INSERTED = (SELECT MAX(DATE_INSERTED)
					FROM unsc_entity)		
				
		UNION

		SELECT CNIC AS 'DATAID', `Name`, IFNULL(ALIAS,' ') AS Alias, '' AS ALIAS_QUALITY, CNIC AS ID_NUMBER, Father_Name AS Father_Name, 'Unspecified' AS Gender, ' ' AS DOB, ' ' AS POB, ' ' AS 'Address', IFNULL(PROVINCE,'') AS PROVINCE, IFNULL(DISTRICT,'') AS DISTRICT, ' ' AS Nationality,' ' AS Country, ' ' AS City, DISCREPANT_CHECK, 'NACTA_PROSCRIBED_PERSONS' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM nacta_proscribed_persons
		WHERE DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM nacta_proscribed_persons)

		UNION
		

		SELECT DISTINCT (A.DATAID), A.FIRST_NAME AS `Name`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, A.LAST_NAME AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT, IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(B.City, '') AS City, '' AS DISCREPANT_CHECK, 'OFAC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofac AS A
		LEFT JOIN ofac_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_date_of_birth  AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_place_of_birth  AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN  ofac_citizenship AS F
		ON A.DATAID = F.DATAID
		LEFT JOIN  ofac_id AS G
		ON A.DATAID = G.DATAID
		WHERE SDN_TYPE = 'Individual'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac)
					
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.LAST_NAME) AS `Name`,IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, ' ' AS Father_Name, 'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT, IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY, '') AS Country, IFNULL(B.City, '') AS City, '' AS DISCREPANT_CHECK, 'OFAC' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofac AS A
		LEFT JOIN ofac_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_date_of_birth  AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_place_of_birth  AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN  ofac_citizenship AS F
		ON A.DATAID = F.DATAID
		LEFT JOIN  ofac_id AS G
		ON A.DATAID = G.DATAID
		WHERE SDN_TYPE = 'Entity'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac)
					
					
		UNION
		
		SELECT DISTINCT (A.DATAID), A.FIRST_NAME AS `NAME`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, A.LAST_NAME AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH,' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT,  IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY,' ') AS Country, IFNULL(B.CITY,' ') AS City, '' AS DISCREPANT_CHECK, 'OFAC_SDN' AS 'List', 'INDIVIDUAL' AS 'Type'	
		FROM ofac_sdn AS A
		LEFT JOIN ofac_sdn_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_sdn_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_sdn_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_sdn_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN ofac_sdn_nationality AS F
		ON A.DATAID = F.DATAID	
		LEFT JOIN ofac_sdn_id AS G
		ON A.DATAID = G.DATAID
		WHERE A.SDN_TYPE = 'Individual'
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac_sdn)
					
		UNION

		SELECT DISTINCT (A.DATAID), CONCAT_WS(' ',A.FIRST_NAME, A.LAST_NAME) AS `NAME`, IFNULL(CONCAT_WS(' ',C.FIRST_NAME ,C.LAST_NAME),' ') AS Alias, IFNULL(C.CATEGORY, '') AS ALIAS_QUALITY, IFNULL(G.ID_NUMBER,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(D.DATE_OF_BIRTH, ' ') AS DOB, IFNULL(E.PLACE_OF_BIRTH, ' ') AS POB, CONCAT_WS(' ', ADDRESS_1, ADDRESS_2, ADDRESS_3, B.STATE_OR_PROVINCE, B.CITY, B.COUNTRY) AS 'Address', IFNULL(B.STATE_OR_PROVINCE, '') AS PROVINCE, ' ' AS DISTRICT,  IFNULL(F.COUNTRY,' ') AS Nationality, IFNULL(B.COUNTRY,' ') AS Country, IFNULL(B.CITY,' ') AS City, '' AS DISCREPANT_CHECK, 'OFAC_SDN' AS 'List', 'INDIVIDUAL' AS 'Type'	
		FROM ofac_sdn AS A
		LEFT JOIN ofac_sdn_address AS B 
		ON A.DATAID = B.DATAID
		LEFT JOIN ofac_sdn_alias AS C
		ON A.DATAID = C.DATAID
		LEFT JOIN ofac_sdn_date_of_birth AS D
		ON A.DATAID = D.DATAID
		LEFT JOIN ofac_sdn_place_of_birth AS E
		ON A.DATAID = E.DATAID
		LEFT JOIN ofac_sdn_nationality AS F
		ON A.DATAID = F.DATAID	
		LEFT JOIN ofac_sdn_id AS G
		ON A.DATAID = G.DATAID
		WHERE A.SDN_TYPE = 'Entity'	
		AND A.DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofac_sdn) 
		
		UNION

		SELECT GROUPID AS DATAID, FullName AS `NAME`, IFNULL(CONCAT_WS(' ', name1, name2, name3, name4, name5, name6),' ') AS Alias, IFNULL(AliasType, '') AS ALIAS_QUALITY, IFNULL(NationalIdNumber,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(DateofBirth, ' ') AS DOB, IFNULL(TownOfBirth, ' ') AS POB, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(Nationality,' ') AS Nationality, IFNULL(Country,' ') AS Country, IFNULL(TownOfBirth, '') AS City, '' AS DISCREPANT_CHECK, 'OFSI' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofsi
		WHERE GroupTypeDescription = 'INDIVIDUAL' 
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofsi)			
					
		UNION

		SELECT GROUPID AS DATAID, FullName AS `NAME`, IFNULL(CONCAT_WS(' ', name1, name2, name3, name4, name5, name6),' ') AS Alias, IFNULL(AliasType, '') AS ALIAS_QUALITY, IFNULL(NationalIdNumber,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender, IFNULL(DateofBirth, ' ') AS DOB, IFNULL(TownOfBirth, ' ') AS POB, CONCAT_WS(' ',address1, address2, address3, address4, address5, address6) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(Nationality,' ') AS Nationality, IFNULL(Country,' ') AS Country, IFNULL(TownOfBirth, '') AS City, '' AS DISCREPANT_CHECK, 'OFSI' AS 'List', 'INDIVIDUAL' AS 'Type'
		FROM ofsi
		WHERE GroupTypeDescription = 'Entity' 
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM ofsi)
					
		UNION

		SELECT Entity_LogicalId AS DATAID, NameAlias_WholeName AS `Name`, IFNULL(CONCAT_WS(' ', NameAlias_FirstName, NameAlias_MiddleName),' ') AS `Alias`, '' AS ALIAS_QUALITY, IFNULL(Identification_Number,' ') AS ID_NUMBER, NameAlias_LastName AS Father_Name,'Unspecified' AS Gender, IFNULL(BirthDate_BirthDate,' ') AS DOB , IFNULL(CONCAT_WS('-', BirthDate_Region, BirthDate_Place, BirthDate_City),' ') AS POB, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(CONCAT_WS(' ',Citizenship_Region,Citizenship_CountryIso2Code),' ') AS Nationality, IFNULL(Address_CountryDescription, '') AS Country, IFNULL(BirthDate_City, '') AS City,'' AS DISCREPANT_CHECK, 'EUFS' AS 'List' , 'INDIVIDUAL' AS 'Type'
		FROM eufs
		WHERE NameAlias_FirstName IS NOT NULL 
		AND Entity_SubjectType_ClassificationCode = 'person'
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM eufs)
		UNION			
					
		SELECT Entity_LogicalId AS DATAID, NameAlias_WholeName AS `Name`, IFNULL(CONCAT_WS(' ', NameAlias_FirstName, NameAlias_MiddleName, NameAlias_LastName),' ') AS `Alias`, '' AS ALIAS_QUALITY, IFNULL(Identification_Number,' ') AS ID_NUMBER, ' ' AS Father_Name,'Unspecified' AS Gender,  IFNULL(BirthDate_BirthDate,' ') AS DOB , IFNULL(CONCAT_WS('-', BirthDate_Region, BirthDate_Place, BirthDate_City), ' ') AS POB, CONCAT_WS(' ', Address_Street, Address_City, Address_CountryDescription) AS 'Address', ' ' AS PROVINCE, ' ' AS DISTRICT,  IFNULL(CONCAT_WS(' ',Citizenship_Region,Citizenship_CountryIso2Code),' ') AS Nationality, IFNULL(Address_CountryDescription, '') AS Country, IFNULL(BirthDate_City, '') AS City, '' AS DISCREPANT_CHECK, 'EUFS' AS 'List' , 'INDIVIDUAL' AS 'Type'
		FROM eufs
		WHERE Entity_SubjectType_ClassificationCode = 'enterprise'
		AND DATE_INSERTED =(SELECT MAX(DATE_INSERTED)
					FROM eufs)
	)AS A
)AS B;
END //