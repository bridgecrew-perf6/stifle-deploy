-- ----------------------------------------------------------UNSC_INDIVIDUAL INDEXING------------------------------------------------------------
-- ------------------UNSC_INDIVIDUAL INDEXING DATAID, DATE_INSERTED, FIRST_NAME, CITY, STATE_PROVINCE AND COUNTRY--------------------
CREATE INDEX indexUNSC_INDIVIDUAL_DATE_INSERTED ON unsc_individual (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_DATAID ON unsc_individual (DATAID);
CREATE INDEX indexUNSC_INDIVIDUAL_FIRST_NAME ON unsc_individual (FIRST_NAME);

-- ------------------UNSC_INDIVIDUAL_ALIAS INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_INDIVIDUAL_ALIAS_DATE_INSERTED ON unsc_individual_alias (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_ALIAS_DATAID ON unsc_individual_alias (DATAID);

-- ------------------UNSC_UNSC_INDIVIDUAL_ADDRESS INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_INDIVIDUAL_ADDRESS_DATE_INSERTED ON unsc_individual_address (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_ADDRESS_DATAID ON unsc_individual_address (DATAID);
CREATE INDEX indexUNSC_INDIVIDUAL_ADDRESS_CITY ON unsc_individual_address (CITY);
CREATE INDEX indexUNSC_INDIVIDUAL_ADDRESS_STATE_PROVINCE ON unsc_individual_address (STATE_PROVINCE);
CREATE INDEX indexUNSC_INDIVIDUAL_ADDRESS_COUNTRY ON unsc_individual_address (COUNTRY);

-- ------------------UNSC_UNSC_INDIVIDUAL_DATE_OF_BIRTH INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_INDIVIDUAL_DATE_OF_BIRTH_DATE_INSERTED ON unsc_individual_date_of_birth (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_DATE_OF_BIRTH_DATAID ON unsc_individual_date_of_birth (DATAID);

-- ------------------UNSC_INDIVIDUAL_PLACE_OF_BIRTH INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUUNSC_INDIVIDUAL_PLACE_OF_BIRTH_DATE_INSERTED ON unsc_individual_place_of_birth (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_PLACE_OF_BIRTH_DATAID ON unsc_individual_place_of_birth (DATAID);

-- ------------------UNSC_UNSC_INDIVIDUAL_DOCUMENT INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_INDIVIDUAL_DOCUMENT_DATE_INSERTED ON unsc_individual_document (DATE_INSERTED);
CREATE INDEX indexUNSC_INDIVIDUAL_DOCUMENT_DATAID ON unsc_individual_document (DATAID);

-- ----------------------------------------------------------UNSC_ENTITY INDEXING------------------------------------------------------------
-- ------------------UNSC_ENTITY INDEXING DATAID, DATE_INSERTED AND FIRST_NAME--------------------
CREATE INDEX indexUNSC_ENTITY_DATE_INSERTED ON unsc_entity (DATE_INSERTED);
CREATE INDEX indexUNSC_ENTITY_DATAID ON unsc_entity (DATAID);
CREATE INDEX indexUNSC_ENTITY_FIRST_NAME ON unsc_entity (FIRST_NAME);

-- ------------------UNSC_ENTITY_ALIAS INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_ENTITY_ALIAS_DATE_INSERTED ON unsc_entity_alias (DATE_INSERTED);
CREATE INDEX indexUNSC_ENTITY_ALIAS_DATAID ON unsc_entity_alias (DATAID);

-- ------------------UNSC_ENTITY_ADDRESS INDEXING DATAID AND DATE_INSERTED--------------------
CREATE INDEX indexUNSC_ENTITY_ADDRESS_DATE_INSERTED ON unsc_entity_address (DATE_INSERTED);
CREATE INDEX indexUNSC_ENTITY_ADDRESS_DATAID ON unsc_entity_address (DATAID);
CREATE INDEX indexUNSC_ENTITY_ADDRESS_CITY ON unsc_entity_address (CITY);
CREATE INDEX indexUNSC_ENTITY_ADDRESS_STATE_PROVINCE ON unsc_entity_address (STATE_PROVINCE);
CREATE INDEX indexUNSC_ENTITY_ADDRESS_COUNTRY ON unsc_entity_address (COUNTRY);

-- ----------------------------------------------------------NACTA_PROSCRIBED_PERSONS INDEXING ON DATE_INSERTED, NAME, CNIC AND FATHER_NAME------------------------
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_DATE_INSERTED ON nacta_proscribed_persons (DATE_INSERTED);
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_NAME ON nacta_proscribed_persons (`NAME`);
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_CNIC ON nacta_proscribed_persons (CNIC);
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_FATHER_NAME ON nacta_proscribed_persons (FATHER_NAME);
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_ALIAS ON nacta_proscribed_persons (ALIAS);
-- DROP INDEX indexNACTA_DATE_INSERTED ON NACTA_PROSCRIBED_PERSONS;

-- ----------------------------------------------------------OFAC INDEXING-----------------------------------------------------------
CREATE INDEX indexOFAC_DATAID ON ofac (DATAID);
CREATE INDEX indexOFAC_DATE_INSERTED ON ofac (DATE_INSERTED);
CREATE INDEX indexOFAC_FIRST_NAME ON ofac (FIRST_NAME);
CREATE INDEX indexOFAC_SDN_TYPE ON ofac (SDN_TYPE);

-- ----------------------------------------------------------OFAC_ALIAS INDEXING--------------------------------------------------------
CREATE INDEX indexOFAC_ALIAS_DATAID ON ofac_alias (DATAID);
CREATE INDEX indexOFAC_ALIAS_UID ON ofac_alias (UID);
CREATE INDEX indexOFAC_ALIAS_DATE_INSERTED ON ofac_alias (DATE_INSERTED);
CREATE INDEX indexOFAC_ALIAS_FIRST_NAME ON ofac_alias (FIRST_NAME);

-- ----------------------------------------------------------OFAC_DATE_OF_BIRTH------------------------------------------------------------
CREATE INDEX indexOFAC_DATE_OF_BIRTH_DATAID ON ofac_date_of_birth (DATAID);
CREATE INDEX indexOFAC_DATE_OF_BIRTH_UID ON ofac_date_of_birth (UID);
CREATE INDEX indexOFAC_DATE_OF_BIRTH_DATE_INSERTED ON ofac_date_of_birth (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_PLACE_OF_BIRTH------------------------------------------------------------
CREATE INDEX indexOFAC_PLACE_OF_BIRTH_DATAID ON ofac_place_of_birth (DATAID);
CREATE INDEX indexOFAC_PLACE_OF_BIRTH_UID ON ofac_place_of_birth (UID);
CREATE INDEX indexOFAC_PLACE_OF_BIRTH_DATE_INSERTED ON ofac_place_of_birth (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_ADDRESS INDEXING-----------------------------------------------------------
CREATE INDEX indexOFAC_ADDRESS_DATAID ON ofac_address (DATAID);
CREATE INDEX indexOFAC_ADDRESS_UID ON ofac_address (UID);
CREATE INDEX indexOFAC_ADDRESS_INSERTED ON ofac_address (DATE_INSERTED);
CREATE INDEX indexOFAC_ADDRESS_STATE_OR_PROVINCE ON ofac_address (STATE_OR_PROVINCE);
CREATE INDEX indexOFAC_ADDRESS_COUNTRY ON ofac_address (COUNTRY);
CREATE INDEX indexOFAC_ADDRESS_CITY ON ofac_address (CITY);
CREATE INDEX indexOFAC_ADDRESS_ADDRESS_1 ON ofac_address (ADDRESS_1);
CREATE INDEX indexOFAC_ADDRESS_ADDRESS_2 ON ofac_address (ADDRESS_2);
CREATE INDEX indexOFAC_ADDRESS_ADDRESS_3 ON ofac_address (ADDRESS_3);

-- ----------------------------------------------------------OFAC_CITIZENSHIP INDEXING---------------------------------------------------------
CREATE INDEX indexOFAC_CITIZENSHIP_DATAID ON ofac_citizenship (DATAID);
CREATE INDEX indexOFAC_CITIZENSHIP_UID ON ofac_citizenship (UID);
CREATE INDEX indexOFAC_CITIZENSHIP_DATE_INSERTED ON ofac_citizenship (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_ID INDEXING------------------------------------------------------
CREATE INDEX indexOFAC_ID_DATAID ON OFAC_ID (DATAID);
CREATE INDEX indexOFAC_ID_UID ON OFAC_ID (UID);
CREATE INDEX indexOFAC_ID_DATE_INSERTED ON OFAC_ID (DATE_INSERTED);

-- ----------------------------------------------------------OFSI INDEXING--------------------------------------------------------
CREATE INDEX indexOFSI_ID_GroupID ON ofsi (GroupID);
CREATE INDEX indexOFSI_ID_OFSI_ID ON ofsi (OFSI_ID);
CREATE INDEX indexOFSI_ID_DATE_INSERTED ON ofsi (DATE_INSERTED);
CREATE INDEX indexOFSI_ID_DATE_FullName ON ofsi (FullName);
CREATE INDEX indexOFSI_ID_DATE_address1 ON ofsi (address1);
CREATE INDEX indexOFSI_ID_DATE_address2 ON ofsi (address2);
CREATE INDEX indexOFSI_ID_DATE_address3 ON ofsi (address3);
CREATE INDEX indexOFSI_ID_DATE_address4 ON ofsi (address4);
CREATE INDEX indexOFSI_ID_DATE_address5 ON ofsi (address5);
CREATE INDEX indexOFSI_ID_DATE_address6 ON ofsi (address6);

-- ----------------------------------------------------------EUFS INDEXING ON Entity_EU_ReferenceNumber, Entity_LogicalId, DATE_INSERTED AND FullName------------------------------------------------------------
CREATE INDEX indexEUFS_Entity_EU_ReferenceNumber ON eufs (Entity_EU_ReferenceNumber);
CREATE INDEX indexEUFS_Entity_LogicalId ON eufs (Entity_LogicalId);
CREATE INDEX indexEUFS_INSERTED ON eufs (DATE_INSERTED);
CREATE INDEX indexEUFS_NameAlias_FirstName ON eufs (NameAlias_FirstName);
CREATE INDEX indexEUFS_Entity_SubjectType_ClassificationCode ON eufs (Entity_SubjectType_ClassificationCode);
CREATE INDEX indexEUFS_NameAlias_WholeName ON eufs (NameAlias_WholeName);
CREATE INDEX indexEUFS_Address_CountryDescription ON eufs (Address_CountryDescription);

-- ----------------------------------------------------------NACTA_PROSCRIBED_PERSONS_DENOTIFIED INDEXING ON DATE_INSERTED------------------------------------------------------------
CREATE INDEX indexNACTA_PROSCRIBED_ORGANIZATIONS_DATE_INSERTED ON nacta_proscribed_organizations (DATE_INSERTED);

-- ----------------------------------------------------------NACTA_PROSCRIBED_ORGANIZATION INDEXING ON DATE_INSERTED------------------------------------------------------------
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_DENOTIFIED_DATE_INSERTED ON nacta_proscribed_persons_denotified (DATE_INSERTED);
CREATE INDEX indexNACTA_PROSCRIBED_PERSONS_DENOTIFIED_CNIC ON nacta_proscribed_persons_denotified (CNIC);

-- ----------------------------------------------------------OFAC INDEXING------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_DATAID ON ofac_sdn (DATAID);
CREATE INDEX indexOFAC_SDN_DATE_INSERTED ON ofac_sdn (DATE_INSERTED);
CREATE INDEX indexOFAC_SDN_FIRST_NAME ON ofac_sdn (FIRST_NAME);
CREATE INDEX indexOFAC_SDN_LAST_NAME ON ofac_sdn (LAST_NAME);
CREATE INDEX indexOFAC_SDN_SDN_TYPE ON ofac_sdn (SDN_TYPE);

-- ----------------------------------------------------------OFAC_ALIAS--------------------------------------------------------
CREATE INDEX indexOFAC_SDN_ALIAS_DATAID ON ofac_sdn_alias (DATAID);
CREATE INDEX indexOFAC_SDN_ALIAS_UID ON ofac_sdn_alias (UID);
CREATE INDEX indexOFAC_SDN_ALIAS_DATE_INSERTED ON ofac_sdn_alias (DATE_INSERTED);
CREATE INDEX indexOFAC_SDN_ALIAS_FIRST_NAME ON ofac_sdn_alias (FIRST_NAME);

-- ----------------------------------------------------------OFAC_DATE_OF_BIRTH INDEXING------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_DATE_OF_BIRTH_DATAID ON ofac_sdn_date_of_birth (DATAID);
CREATE INDEX indexOFAC_SDN_DATE_OF_BIRTH_UID ON ofac_sdn_date_of_birth (UID);
CREATE INDEX indexOFAC_SDN_DATE_OF_BIRTH_DATE_INSERTED ON ofac_sdn_date_of_birth (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_PLACE_OF_BIRTH------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_PLACE_OF_BIRTH_DATAID ON ofac_sdn_place_of_birth (DATAID);
CREATE INDEX indexOFAC_SDN_PLACE_OF_BIRTH_UID ON ofac_sdn_place_of_birth (UID);
CREATE INDEX indexOFAC_SDN_PLACE_OF_BIRTH_DATE_INSERTED ON ofac_sdn_place_of_birth (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_SDN_ADDRESS INDEXING------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_ADDRESS_DATAID ON ofac_sdn_address (DATAID);
CREATE INDEX indexOFAC_SDN_ADDRESS_UID ON ofac_sdn_address (UID);
CREATE INDEX indexOFAC_SDN_ADDRESS_INSERTED ON ofac_sdn_address (DATE_INSERTED);
CREATE INDEX indexOFAC_SDN_ADDRESS_STATE_OR_PROVINCE ON ofac_sdn_address (STATE_OR_PROVINCE);
CREATE INDEX indexOFAC_SDN_ADDRESS_COUNTRY ON ofac_sdn_address (COUNTRY);
CREATE INDEX indexOFAC_SDN_ADDRESS_CITY ON ofac_sdn_address (CITY);
CREATE INDEX indexOFAC_SDN_ADDRESS_ADDRESS_1 ON ofac_sdn_address (ADDRESS_1);
CREATE INDEX indexOFAC_SDN_ADDRESS_ADDRESS_2 ON ofac_sdn_address (ADDRESS_2);
CREATE INDEX indexOFAC_SDN_ADDRESS_ADDRESS_3 ON ofac_sdn_address (ADDRESS_3);

-- ----------------------------------------------------------OFAC_SDN_CITIZENSHIP INDEXING------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_CITIZENSHIP_DATAID ON ofac_sdn_citizenship (DATAID);
CREATE INDEX indexOFAC_SDN_CITIZENSHIP_UID ON ofac_sdn_citizenship (UID);
CREATE INDEX indexOFAC_SDN_CITIZENSHIP_DATE_INSERTED ON ofac_sdn_citizenship (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_SDN_NATIONALITY INDEXING------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_NATIONALITY_DATAID ON ofac_sdn_nationality (DATAID);
CREATE INDEX indexOFAC_SDN_NATIONALITY_UID ON ofac_sdn_nationality (UID);
CREATE INDEX indexOFAC_SDN_NATIONALITY_DATE_INSERTED ON ofac_sdn_nationality (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_SDN_ID INDEXING ------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_ID_DATAID ON ofac_sdn_id (DATAID);
CREATE INDEX indexOFAC_SDN_ID_UID ON ofac_sdn_id (UID);
CREATE INDEX indexOFAC_SDN_ID_DATE_INSERTED ON ofac_sdn_id (DATE_INSERTED);

-- ----------------------------------------------------------OFAC_SDN_ID INDEXING ------------------------------------------------------------
CREATE INDEX indexOFAC_SDN_VESSEL_INFO_DATAID ON ofac_sdn_vessel_info (DATAID);
CREATE INDEX indexOFAC_SDN_VESSEL_INFO_CALL_SIGN ON ofac_sdn_vessel_info (CALL_SIGN );
CREATE INDEX indexOFAC_SDN_VESSEL_INFO_DATE_INSERTED ON ofac_sdn_vessel_info (DATE_INSERTED);

-- ----------------------------------------------------------CONSOLIDATE LIST INDEXING ------------------------------------------------------------
CREATE INDEX indexConsolidate_list_DATAID ON consolidate_list (DATAID);

-- ----------------------------------------------------------Geographic Location INDEXING ------------------------------------------------------------
CREATE INDEX indexGeographic_Location_City ON geographic_location (City);

-- ----------------------------------------------------------Customer TYPE INDEXING ------------------------------------------------------------
CREATE INDEX indexcustomer_type_Cust_Type ON customer_type (Cust_Type);

-- ----------------------------------------------------------Product TYPE INDEXING ------------------------------------------------------------
CREATE INDEX indexproduct_type_prod_type ON product_type (prod_type);

-- ----------------------------------------------------------Delivery Channel INDEXING ------------------------------------------------------------
CREATE INDEX indexDelivery_Channel_prod_type ON delivery_channel (channel);

-- ----------------------------------------------------------Country Nationality INDEXING ------------------------------------------------------------
CREATE INDEX indexCountry_Nationality_Nationality ON country_nationality (Nationality);
CREATE INDEX indexCountry_Nationality_Language ON country_nationality (`Language`);