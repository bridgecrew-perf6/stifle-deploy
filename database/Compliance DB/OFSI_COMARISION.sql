DELIMITER //
CREATE PROCEDURE OFSI_COMPARISION ()
  BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM ofsi
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM ofsi 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS ofsi 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp_ofsi;
  
	CREATE TEMPORARY TABLE compliance.tmp_ofsi ( 
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
  
	INSERT INTO compliance.tmp_ofsi
	SELECT 
	 T1.GroupID, T1.OFSI_ID, T1.AliasType, T1.AliasTypeName, T1.FullName, T1.FullAddress, T1.name1, T1.name2, T1.name3, T1.name4, T1.name5, T1.Name6, T1.address1, T1.address2, T1.address3, T1.address4,
	 T1.address5, T1.address6, T1.Gender, T1.BusinessRegNumber, T1.Country,	T1.CountryOfBirth, T1.CurrentOwners, T1.DateListed, T1.DateListedDay, T1.DateListedMonth, T1.DateListedYear, T1.DateOfBirth,
	 T1.DateOfBirthId, T1.DayOfBirth, T1.EmailAddress, T1.FCOId, T1.FlagOfVessel, T1.FurtherIdentifiyingInformation, T1.GroupStatus, T1.GroupTypeDescription, T1.GrpStatus, T1.HIN, T1.IMONumber,
	 T1.LastUpdated, T1.LastUpdatedDay, T1.LastUpdatedMonth, T1.LastUpdatedYear, T1.LengthOfVessel, T1.ListingType, T1.MonthOfBirth, T1.NameTitle, T1.NationalIdNumber, T1.Nationality, T1.OrgType, 
	 T1.OtherInformation, T1.ParentCompany,	T1.PassportDetails, T1.PhoneNumber, T1.`Position`, T1.PostCode, T1.PreviousFlags, T1.PreviousOwners, T1.RegimeName, T1.Subsidiaries, T1.TonnageOfVessel,
	 T1.TownOfBirth, T1.TypeOfVessel, T1.UKStatementOfReasons, T1.Website, T1.YearBuilt, T1.YearOfBirth, T1.DATE_INSERTED
	FROM ofsi AS T1
		LEFT JOIN ofsi AS T2 
		ON T1.OFSI_ID = T2.OFSI_ID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.OFSI_ID IS NULL, TRUE, ((T1.GroupID <> T2.GroupID) 
		OR (T1.AliasType <> T2.AliasType)
		OR (T1.AliasTypeName <> T2.AliasTypeName) 
		OR (T1.FullName <> T2.FullName)
		OR (T1.FullAddress <> T2.FullAddress)
		OR (T1.name1 <> T2.name1)
		OR (T1.name2 <> T2.name2)
		OR (T1.name3 <> T2.name3)
		OR (T1.name4 <> T2.name4)
		OR (T1.name5 <> T2.name5)
		OR (T1.Name6 <> T2.Name6)
		OR (T1.address1 <> T2.address1)
		OR (T1.address2 <> T2.address2)
		OR (T1.address3 <> T2.address3)
		OR (T1.address4 <> T2.address4)
		OR (T1.address5 <> T2.address5)
		OR (T1.address6 <> T2.address6)
		OR (T1.Gender <> T2.Gender)
		OR (T1.BusinessRegNumber <> T2.BusinessRegNumber)
		OR (T1.Country <> T2.Country)
		OR (T1.CountryOfBirth <> T2.CountryOfBirth)
		OR (T1.CurrentOwners <> T2.CurrentOwners)
		OR (T1.DateListed <> T2.DateListed)
		OR (T1.DateListedMonth <> T2.DateListedMonth)
		OR (T1.DateListedYear <> T2.DateListedYear)
		OR (T1.DateOfBirth <> T2.DateOfBirth)
		OR (T1.DateOfBirthId <> T2.DateOfBirthId)
		OR (T1.DayOfBirth <> T2.DayOfBirth)
		OR (T1.EmailAddress <> T2.EmailAddress)
		OR (T1.FCOId <> T2.FCOId)
		OR (T1.FlagOfVessel <> T2.FlagOfVessel)
		OR (T1.FurtherIdentifiyingInformation <> T2.FurtherIdentifiyingInformation)
		OR (T1.GroupStatus <> T2.GroupStatus)
		OR (T1.GroupTypeDescription <> T2.GroupTypeDescription)
		OR (T1.GrpStatus <> T2.GrpStatus)
		OR (T1.HIN <> T2.HIN)
		OR (T1.IMONumber <> T2.IMONumber)
		OR (T1.LastUpdated <> T2.LastUpdated)
		OR (T1.LastUpdatedDay <> T2.LastUpdatedDay)
		OR (T1.LastUpdatedMonth <> T2.LastUpdatedMonth)
		OR (T1.LastUpdatedYear <> T2.LastUpdatedYear)
		OR (T1.LengthOfVessel <> T2.LengthOfVessel)
		OR (T1.ListingType <> T2.ListingType)
		OR (T1.MonthOfBirth <> T2.MonthOfBirth)
		OR (T1.NameTitle <> T2.NameTitle)
		OR (T1.NationalIdNumber <> T2.NationalIdNumber)
		OR (T1.Nationality <> T2.Nationality)
		OR (T1.OrgType <> T2.OrgType)
		OR (T1.OtherInformation <> T2.OtherInformation)
		OR (T1.ParentCompany <> T2.ParentCompany)
		OR (T1.PassportDetails <> T2.PassportDetails)
		OR (T1.PhoneNumber <> T2.PhoneNumber)
		OR (T1.`Position` <> T2.`Position`)
		OR (T1.PostCode <> T2.PostCode)
		OR (T1.PreviousFlags <> T2.PreviousFlags)
		OR (T1.PreviousOwners <> T2.PreviousOwners)
		OR (T1.RegimeName <> T2.RegimeName)
		OR (T1.Subsidiaries <> T2.Subsidiaries)
		OR (T1.TonnageOfVessel <> T2.TonnageOfVessel)
		OR (T1.TownOfBirth <> T2.TownOfBirth)
		OR (T1.TypeOfVessel <> T2.TypeOfVessel)
		OR (T1.UKStatementOfReasons <> T2.UKStatementOfReasons)
		OR (T1.Website <> T2.Website)
		OR (T1.YearBuilt <> T2.YearBuilt)
		OR (T1.YearOfBirth <> T2.YearOfBirth)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2_ofsi;

	CREATE TEMPORARY TABLE compliance.tmp2_ofsi ( 
		OFSI_ID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2_ofsi
	SELECT
	   l.OFSI_ID,
	   CONCAT('<OFSIID DATA_ID="', l.OFSI_ID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<GIP="', IFNULL(Group_ID.PREVIOUS_GroupID, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GIC="', IFNULL(Group_ID.CURRENT_GroupID, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATP="', IFNULL(Alias_Type.PREVIOUS_Alias_Type, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATC="', IFNULL(Alias_Type.CURRENT_Alias_Type, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATN_TYPEP="', IFNULL(Alias_Type_Name.PREVIOUS_Alias_Type_Name, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ATN_TYPEC="', IFNULL(Alias_Type_Name.CURRENT_Alias_Type_Name, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNP="', IFNULL(Full_Name.PREVIOUS_Full_Name, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(Full_Name.CURRENT_Full_Name, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FAP="', IFNULL(Full_Address.PREVIOUS_Full_Address, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FAC="', IFNULL(Full_Address.CURRENT_Full_Address, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N1P="', IFNULL(name_1.PREVIOUS_name1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N1C="', IFNULL(name_1.CURRENT_name1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N2P="', IFNULL(name_2.PREVIOUS_name2, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N2C="', IFNULL(name_2.CURRENT_name2, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N3P="', IFNULL(name_3.PREVIOUS_name3, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N3C="', IFNULL(name_3.CURRENT_name3, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N4P="', IFNULL(name_4.PREVIOUS_name_4, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N4C="', IFNULL(name_4.CURRENT_name_4, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N5P="', IFNULL(name_5.PREVIOUS_name5, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N5C="', IFNULL(name_5.CURRENT_name5, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N6P="', IFNULL(Name_6.PREVIOUS_Name6, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<N6C="', IFNULL(Name_6.CURRENT_Name6, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A1P="', IFNULL(address_1.PREVIOUS_address1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A1C="', IFNULL(address_1.CURRENT_address1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A2P="', IFNULL(address_2.PREVIOUS_address2, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A2C="', IFNULL(address_2.CURRENT_address2, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A3P="', IFNULL(address_3.PREVIOUS_address3, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A3C="', IFNULL(address_3.CURRENT_address3, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A4P="', IFNULL(address_4.PREVIOUS_address4, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A4C="', IFNULL(address_4.CURRENT_address4, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A5P="', IFNULL(address_5.PREVIOUS_address5, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A5C="', IFNULL(address_5.CURRENT_address5, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A6P="', IFNULL(address_6.PREVIOUS_address6, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<A6C="', IFNULL(address_6.CURRENT_address6, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GenderP="', IFNULL(Gender1.PREVIOUS_Gender, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GenderC="', IFNULL(Gender1.CURRENT_Gender, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<BusinessRegNumberP="', IFNULL(Business_Reg_Number.PREVIOUS_BusinessRegNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<BusinessRegNumberC="', IFNULL(Business_Reg_Number.CURRENT_BusinessRegNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryP="', IFNULL(Country1.PREVIOUS_Country, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryC="', IFNULL(Country1.CURRENT_Country, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryOfBirthP="', IFNULL(Country_Of_Birth.PREVIOUS_CountryOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CountryOfBirthC="', IFNULL(Country_Of_Birth.CURRENT_CountryOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CurrentOwnersP="', IFNULL(Current_Owners.PREVIOUS_CurrentOwners, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<CurrentOwnersC="', IFNULL(Current_Owners.CURRENT_CurrentOwners, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedP="', IFNULL(Date_Listed.PREVIOUS_DateListed, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedC="', IFNULL(Date_Listed.CURRENT_DateListed, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedMonthP="', IFNULL(Date_Listed_Month.PREVIOUS_DateListedMonth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedMonthC="', IFNULL(Date_Listed_Month.CURRENT_DateListedMonth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedYearP="', IFNULL(Date_Listed_Year.PREVIOUS_DateListedYear, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateListedYearC="', IFNULL(Date_Listed_Year.CURRENT_DateListedYear, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthP="', IFNULL(Date_Of_Birth.PREVIOUS_DateOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthC="', IFNULL(Date_Of_Birth.CURRENT_DateOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthIdP="', IFNULL(Date_Of_Birth_Id.PREVIOUS_DateOfBirthId, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DateOfBirthIdC="', IFNULL(Date_Of_Birth_Id.CURRENT_DateOfBirthId, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DayOfBirthP="', IFNULL(Day_Of_Birth.PREVIOUS_DayOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DayOfBirthC="', IFNULL(Day_Of_Birth.CURRENT_DayOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<EmailAddressP="', IFNULL(Email_Address.PREVIOUS_EmailAddress, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<EmailAddressC="', IFNULL(Email_Address.CURRENT_EmailAddress, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FCOIdP="', IFNULL(FCO_Id.PREVIOUS_FCOId, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FCOIdC="', IFNULL(FCO_Id.CURRENT_FCOId, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FlagOfVesselP="', IFNULL(Flag_Of_Vessel.PREVIOUS_FlagOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FlagOfVesselC="', IFNULL(Flag_Of_Vessel.CURRENT_FlagOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FurtherIdentifiyingInformationP="', IFNULL(Further_Identifiying_Information.PREVIOUS_FurtherIdentifiyingInformation, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FurtherIdentifiyingInformationC="', IFNULL(Further_Identifiying_Information.CURRENT_FurtherIdentifiyingInformation, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupStatusP="', IFNULL(Group_Status.PREVIOUS_GroupStatus, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupStatusC="', IFNULL(Group_Status.CURRENT_GroupStatus, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupTypeDescriptionP="', IFNULL(Group_Type_Description.PREVIOUS_GroupTypeDescription, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GroupTypeDescriptionC="', IFNULL(Group_Type_Description.CURRENT_GroupTypeDescription, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GrpStatusP="', IFNULL(Grp_Status.PREVIOUS_GrpStatus, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GrpStatusC="', IFNULL(Grp_Status.CURRENT_GrpStatus, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<HINP="', IFNULL(HIN1.PREVIOUS_HIN, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<HINC="', IFNULL(HIN1.CURRENT_HIN, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<IMONumberP="', IFNULL(IMO_Number.PREVIOUS_IMONumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<IMONumberC="', IFNULL(IMO_Number.CURRENT_IMONumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedP="', IFNULL(Last_Updated.PREVIOUS_LastUpdated, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedC="', IFNULL(Last_Updated.CURRENT_LastUpdated, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedDayP="', IFNULL(Last_Updated_Day.PREVIOUS_LastUpdatedDay, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedDayC="', IFNULL(Last_Updated_Day.CURRENT_LastUpdatedDay, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('LastUpdatedMonthP="', IFNULL(Last_Updated_Month.PREVIOUS_LastUpdatedMonth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedMonthC="', IFNULL(Last_Updated_Month.CURRENT_LastUpdatedMonth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedYearP="', IFNULL(Last_Updated_Year.PREVIOUS_LastUpdatedYear, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LastUpdatedYearC="', IFNULL(Last_Updated_Year.CURRENT_LastUpdatedYear, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LengthOfVesselP="', IFNULL(Length_Of_Vessel.PREVIOUS_LengthOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LengthOfVesselC="', IFNULL(Length_Of_Vessel.CURRENT_LengthOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ListingTypeP="', IFNULL(Listing_Type.PREVIOUS_ListingType, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ListingTypeC="', IFNULL(Listing_Type.CURRENT_ListingType, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<MonthOfBirthP="', IFNULL(Month_Of_Birth.PREVIOUS_MonthOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<MonthOfBirthC="', IFNULL(Month_Of_Birth.CURRENT_MonthOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NameTitleP="', IFNULL(Name_Title.PREVIOUS_NameTitle, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NameTitleC="', IFNULL(Name_Title.CURRENT_NameTitle, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalIdNumberP="', IFNULL(National_IdNumber.PREVIOUS_NationalIdNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalIdNumberC="', IFNULL(National_IdNumber.CURRENT_NationalIdNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalityP="', IFNULL(Nationality.PREVIOUS_Nationality1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NationalityC="', IFNULL(Nationality.CURRENT_Nationality1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OrgTypeP="', IFNULL(Org_Type.PREVIOUS_OrgType, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OrgTypeC="', IFNULL(Org_Type.CURRENT_OrgType, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OtherInformationP="', IFNULL(Other_Information.PREVIOUS_OtherInformation, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<OtherInformationC="', IFNULL(Other_Information.CURRENT_OtherInformation, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ParentCompanyP="', IFNULL(Parent_Company.PREVIOUS_ParentCompany, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<ParentCompanyC="', IFNULL(Parent_Company.CURRENT_ParentCompany, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PassportDetailsP="', IFNULL(Passport_Details.PREVIOUS_PassportDetails, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PassportDetailsC="', IFNULL(Passport_Details.CURRENT_PassportDetails, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PhoneNumberP="', IFNULL(Phone_Number.PREVIOUS_PhoneNumber, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PhoneNumberC="', IFNULL(Phone_Number.CURRENT_PhoneNumber, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PositionP="', IFNULL(Position1.PREVIOUS_Position, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PositionC="', IFNULL(Position1.CURRENT_Position, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PostCodeP="', IFNULL(Post_Code.PREVIOUS_PostCode, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PostCodeC="', IFNULL(Post_Code.CURRENT_PostCode, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousFlagsP="', IFNULL(Previous_Flags.PREVIOUS_PreviousFlags, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousFlagsC="', IFNULL(Previous_Flags.CURRENT_PreviousFlags, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousOwnersP="', IFNULL(Previous_Owners.PREVIOUS_PreviousOwners, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<PreviousOwnersC="', IFNULL(Previous_Owners.CURRENT_PreviousOwners, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<RegimeNameP="', IFNULL(Regime_Name.PREVIOUS_RegimeName, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<RegimeNameC="', IFNULL(Regime_Name.CURRENT_RegimeName, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SubsidiariesP="', IFNULL(Subsidiaries1.PREVIOUS_Subsidiaries, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SubsidiariesC="', IFNULL(Subsidiaries1.CURRENT_Subsidiaries, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TonnageOfVesselP="', IFNULL(Tonnage_Of_Vessel.PREVIOUS_TonnageOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TonnageOfVesselC="', IFNULL(Tonnage_Of_Vessel.CURRENT_TonnageOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TownOfBirthP="', IFNULL(Town_Of_Birth.PREVIOUS_TownOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TownOfBirthC="', IFNULL(Town_Of_Birth.CURRENT_TownOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TypeOfVesselP="', IFNULL(Type_Of_Vessel.PREVIOUS_TypeOfVessel, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TypeOfVesselC="', IFNULL(Type_Of_Vessel.CURRENT_TypeOfVessel, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UKStatementOfReasonsP="', IFNULL(UK_Statement_Of_Reasons.PREVIOUS_UKStatementOfReasons, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UKStatementOfReasonsC="', IFNULL(UK_Statement_Of_Reasons.CURRENT_UKStatementOfReasons, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<WebsiteP="', IFNULL(Website1.PREVIOUS_Website, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<WebsiteC="', IFNULL(Website1.CURRENT_Website, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearBuiltP="', IFNULL(Year_Built.PREVIOUS_YearBuilt, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearBuiltC="', IFNULL(Year_Built.CURRENT_YearBuilt, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearOfBirthP="', IFNULL(Year_Of_Birth.PREVIOUS_YearOfBirth, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<YearOfBirthC="', IFNULL(Year_Of_Birth.CURRENT_YearOfBirth, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.OFSI_ID,
		    pre.GroupID AS PREVIOUS_GroupID,
		    cur.GroupID AS CURRENT_GroupID
		FROM ofsi pre
		    LEFT JOIN ofsi cur
		    ON cur.OFSI_ID = pre.OFSI_ID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.GroupID <=> cur.GroupID) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_ID

		LEFT JOIN (
		SELECT pre.OFSI_ID,
		    pre.AliasType AS PREVIOUS_Alias_Type,
		    cur.AliasType AS CURRENT_Alias_Type
		FROM ofsi pre
		    LEFT JOIN ofsi cur
		    ON cur.OFSI_ID = pre.OFSI_ID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.AliasType <=> cur.AliasType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Alias_Type
		ON Group_ID.OFSI_ID = Alias_Type.OFSI_ID 
		    

		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.AliasTypeName AS PREVIOUS_Alias_Type_Name,
			    cur.AliasTypeName AS CURRENT_Alias_Type_Name
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.AliasTypeName <=> cur.AliasTypeName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Alias_Type_Name
		    ON Group_ID.OFSI_ID = Alias_Type_Name.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FullName AS PREVIOUS_Full_Name,
			    cur.FullName AS CURRENT_Full_Name
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FullName <=> cur.FullName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Full_Name
		    ON Group_ID.OFSI_ID = Full_Name.OFSI_ID
		    
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FullAddress AS PREVIOUS_Full_Address,
			    cur.FullAddress AS CURRENT_Full_Address
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FullAddress <=> cur.FullAddress) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Full_Address
		    ON Group_ID.OFSI_ID = Full_Address.OFSI_ID
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name1 AS PREVIOUS_name1,
			    cur.name1 AS CURRENT_name1
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name1 <=> cur.name1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_1
		    ON Group_ID.OFSI_ID = name_1.OFSI_ID
		    
		    
		 LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name2 AS PREVIOUS_name2,
			    cur.name2 AS CURRENT_name2
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name2 <=> cur.name2) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_2
		    ON Group_ID.OFSI_ID = name_2.OFSI_ID
		  
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name3 AS PREVIOUS_name3,
			    cur.name3 AS CURRENT_name3
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name3 <=> cur.name3) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_3
		    ON Group_ID.OFSI_ID = name_3.OFSI_ID
		    
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name4 AS PREVIOUS_name4,
			    cur.name4 AS CURRENT_name4
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name4 <=> cur.name4) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_4
		    ON Group_ID.OFSI_ID = name_4.OFSI_ID               
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.name5 AS PREVIOUS_name5,
			    cur.name5 AS CURRENT_name5
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.name5 <=> cur.name5) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS name_5
		    ON Group_ID.OFSI_ID = name_5.OFSI_ID   
		
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Name6 AS PREVIOUS_Name6,
			    cur.Name6 AS CURRENT_Name6
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Name6 <=> cur.Name6) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Name_6
		    ON Group_ID.OFSI_ID = Name_6.OFSI_ID
		    
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address1 AS PREVIOUS_address1,
			    cur.address1 AS CURRENT_address1
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address1 <=> cur.address1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_1
		    ON Group_ID.OFSI_ID = address_1.OFSI_ID
		    
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address2 AS PREVIOUS_address2,
			    cur.address2 AS CURRENT_address2
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address2 <=> cur.address2) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_2
		    ON Group_ID.OFSI_ID = address_2.OFSI_ID
		    
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address3 AS PREVIOUS_address3,
			    cur.address3 AS CURRENT_address3
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address3 <=> cur.address3) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_3
		    ON Group_ID.OFSI_ID = address_3.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address4 AS PREVIOUS_address4,
			    cur.address4 AS CURRENT_address4
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address4 <=> cur.address4) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_4
		    ON Group_ID.OFSI_ID = address_4.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address5 AS PREVIOUS_address5,
			    cur.address5 AS CURRENT_address5
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address5 <=> cur.address5) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_5
		    ON Group_ID.OFSI_ID = address_5.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.address6 AS PREVIOUS_address6,
			    cur.address6 AS CURRENT_address6
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.address6 <=> cur.address6) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS address_6
		    ON Group_ID.OFSI_ID = address_6.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Gender AS PREVIOUS_Gender,
			    cur.Gender AS CURRENT_Gender
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Gender <=> cur.Gender) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Gender1
		    ON Group_ID.OFSI_ID = Gender1.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.BusinessRegNumber AS PREVIOUS_BusinessRegNumber,
			    cur.BusinessRegNumber AS CURRENT_BusinessRegNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.BusinessRegNumber <=> cur.BusinessRegNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Business_Reg_Number
		    ON Group_ID.OFSI_ID = Business_Reg_Number.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Country AS PREVIOUS_Country,
			    cur.Country AS CURRENT_Country
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Country <=> cur.Country) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Country1
		    ON Group_ID.OFSI_ID = Country1.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.CountryOfBirth AS PREVIOUS_CountryOfBirth,
			    cur.CountryOfBirth AS CURRENT_CountryOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.CountryOfBirth <=> cur.CountryOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Country_Of_Birth
		    ON Group_ID.OFSI_ID = Country_Of_Birth.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.CurrentOwners AS PREVIOUS_CurrentOwners,
			    cur.CurrentOwners AS CURRENT_CurrentOwners
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.CurrentOwners <=> cur.CurrentOwners) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Current_Owners
		    ON Group_ID.OFSI_ID = Current_Owners.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListed AS PREVIOUS_DateListed,
			    cur.DateListed AS CURRENT_DateListed
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListed <=> cur.DateListed) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed
		    ON Group_ID.OFSI_ID = Date_Listed.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListedMonth AS PREVIOUS_DateListedMonth,
			    cur.DateListedMonth AS CURRENT_DateListedMonth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListedMonth <=> cur.DateListedMonth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed_Month
		    ON Group_ID.OFSI_ID = Date_Listed_Month.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateListedYear AS PREVIOUS_DateListedYear,
			    cur.DateListedYear AS CURRENT_DateListedYear
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateListedYear <=> cur.DateListedYear) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Listed_Year
		    ON Group_ID.OFSI_ID = Date_Listed_Year.OFSI_ID
		    
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateOfBirth AS PREVIOUS_DateOfBirth,
			    cur.DateOfBirth AS CURRENT_DateOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateOfBirth <=> cur.DateOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Of_Birth
		    ON Group_ID.OFSI_ID = Date_Of_Birth.OFSI_ID
		    
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DateOfBirthId AS PREVIOUS_DateOfBirthId,
			    cur.DateOfBirthId AS CURRENT_DateOfBirthId
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DateOfBirthId <=> cur.DateOfBirthId) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Date_Of_Birth_Id
		    ON Group_ID.OFSI_ID = Date_Of_Birth_Id.OFSI_ID
		    
		 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.DayOfBirth AS PREVIOUS_DayOfBirth,
			    cur.DayOfBirth AS CURRENT_DayOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DayOfBirth <=> cur.DayOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Day_Of_Birth
		    ON Group_ID.OFSI_ID = Day_Of_Birth.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.EmailAddress AS PREVIOUS_EmailAddress,
			    cur.EmailAddress AS CURRENT_EmailAddress
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.EmailAddress <=> cur.EmailAddress) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Email_Address
		    ON Group_ID.OFSI_ID = Email_Address.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FCOId AS PREVIOUS_FCOId,
			    cur.FCOId AS CURRENT_FCOId
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FCOId <=> cur.FCOId) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FCO_Id
		    ON Group_ID.OFSI_ID = FCO_Id.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FlagOfVessel AS PREVIOUS_FlagOfVessel,
			    cur.FlagOfVessel AS CURRENT_FlagOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FlagOfVessel <=> cur.FlagOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Flag_Of_Vessel
		    ON Group_ID.OFSI_ID = Flag_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.FurtherIdentifiyingInformation AS PREVIOUS_FurtherIdentifiyingInformation,
			    cur.FurtherIdentifiyingInformation AS CURRENT_FurtherIdentifiyingInformation
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FurtherIdentifiyingInformation <=> cur.FurtherIdentifiyingInformation) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Further_Identifiying_Information
		    ON Group_ID.OFSI_ID = Further_Identifiying_Information.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GroupStatus AS PREVIOUS_GroupStatus,
			    cur.GroupStatus AS CURRENT_GroupStatus
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GroupStatus <=> cur.GroupStatus) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_Status
		    ON Group_ID.OFSI_ID = Group_Status.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GroupTypeDescription AS PREVIOUS_GroupTypeDescription,
			    cur.GroupTypeDescription AS CURRENT_GroupTypeDescription
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GroupTypeDescription <=> cur.GroupTypeDescription) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Group_Type_Description
		    ON Group_ID.OFSI_ID = Group_Type_Description.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.GrpStatus AS PREVIOUS_GrpStatus,
			    cur.GrpStatus AS CURRENT_GrpStatus
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GrpStatus <=> cur.GrpStatus) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Grp_Status
		    ON Group_ID.OFSI_ID = Grp_Status.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.HIN AS PREVIOUS_HIN,
			    cur.HIN AS CURRENT_HIN
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.HIN <=> cur.HIN) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS HIN1
		    ON Group_ID.OFSI_ID = HIN1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.IMONumber AS PREVIOUS_IMONumber,
			    cur.IMONumber AS CURRENT_IMONumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.IMONumber <=> cur.IMONumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS IMO_Number
		    ON Group_ID.OFSI_ID = IMO_Number.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdated AS PREVIOUS_LastUpdated,
			    cur.LastUpdated AS CURRENT_LastUpdated
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdated <=> cur.LastUpdated) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated
		    ON Group_ID.OFSI_ID = Last_Updated.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedDay AS PREVIOUS_LastUpdatedDay,
			    cur.LastUpdatedDay AS CURRENT_LastUpdatedDay
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedDay <=> cur.LastUpdatedDay) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Day
		    ON Group_ID.OFSI_ID = Last_Updated_Day.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedMonth AS PREVIOUS_LastUpdatedMonth,
			    cur.LastUpdatedMonth AS CURRENT_LastUpdatedMonth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedMonth <=> cur.LastUpdatedMonth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Month
		    ON Group_ID.OFSI_ID = Last_Updated_Month.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LastUpdatedYear AS PREVIOUS_LastUpdatedYear,
			    cur.LastUpdatedYear AS CURRENT_LastUpdatedYear
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LastUpdatedYear <=> cur.LastUpdatedYear) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Last_Updated_Year
		    ON Group_ID.OFSI_ID = Last_Updated_Year.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.LengthOfVessel AS PREVIOUS_LengthOfVessel,
			    cur.LengthOfVessel AS CURRENT_LengthOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LengthOfVessel <=> cur.LengthOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Length_Of_Vessel
		    ON Group_ID.OFSI_ID = Length_Of_Vessel.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.ListingType AS PREVIOUS_ListingType,
			    cur.ListingType AS CURRENT_ListingType
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.ListingType <=> cur.ListingType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Listing_Type
		    ON Group_ID.OFSI_ID = Listing_Type.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.MonthOfBirth AS PREVIOUS_MonthOfBirth,
			    cur.MonthOfBirth AS CURRENT_MonthOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.MonthOfBirth <=> cur.MonthOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Month_Of_Birth
		    ON Group_ID.OFSI_ID = Month_Of_Birth.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.NameTitle AS PREVIOUS_NameTitle,
			    cur.NameTitle AS CURRENT_NameTitle
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NameTitle <=> cur.NameTitle) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Name_Title
		    ON Group_ID.OFSI_ID = Name_Title.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.NationalIdNumber AS PREVIOUS_NationalIdNumber,
			    cur.NationalIdNumber AS CURRENT_NationalIdNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NationalIdNumber <=> cur.NationalIdNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS National_IdNumber
		    ON Group_ID.OFSI_ID = National_IdNumber.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Nationality AS PREVIOUS_Nationality,
			    cur.Nationality AS CURRENT_Nationality
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Nationality <=> cur.Nationality) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Nationality1
		    ON Group_ID.OFSI_ID = Nationality1.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.OrgType AS PREVIOUS_OrgType,
			    cur.OrgType AS CURRENT_OrgType
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.OrgType <=> cur.OrgType) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Org_Type
		    ON Group_ID.OFSI_ID = Org_Type.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.OtherInformation AS PREVIOUS_OtherInformation,
			    cur.OtherInformation AS CURRENT_OtherInformation
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.OtherInformation <=> cur.OtherInformation) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Other_Information
		    ON Group_ID.OFSI_ID = Other_Information.OFSI_ID                                                 
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.ParentCompany AS PREVIOUS_ParentCompany,
			    cur.ParentCompany AS CURRENT_ParentCompany
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.ParentCompany <=> cur.ParentCompany) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Parent_Company
		    ON Group_ID.OFSI_ID = Parent_Company.OFSI_ID                                                 
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PassportDetails AS PREVIOUS_PassportDetails,
			    cur.PassportDetails AS CURRENT_PassportDetails
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PassportDetails <=> cur.PassportDetails) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Passport_Details
		    ON Group_ID.OFSI_ID = Passport_Details.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PhoneNumber AS PREVIOUS_PhoneNumber,
			    cur.PhoneNumber AS CURRENT_PhoneNumber
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PhoneNumber <=> cur.PhoneNumber) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Phone_Number
		    ON Group_ID.OFSI_ID = Phone_Number.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.`Position` AS PREVIOUS_Position,
			    cur.`Position` AS CURRENT_Position
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.`Position` <=> cur.`Position`) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Position1
		    ON Group_ID.OFSI_ID = Position1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PostCode AS PREVIOUS_PostCode,
			    cur.PostCode AS CURRENT_PostCode
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PostCode <=> cur.PostCode) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Post_Code
		    ON Group_ID.OFSI_ID = Post_Code.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PreviousFlags AS PREVIOUS_PreviousFlags,
			    cur.PreviousFlags AS CURRENT_PreviousFlags
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PreviousFlags <=> cur.PreviousFlags) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Previous_Flags
		    ON Group_ID.OFSI_ID = Previous_Flags.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.PreviousOwners AS PREVIOUS_PreviousOwners,
			    cur.PreviousOwners AS CURRENT_PreviousOwners
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.PreviousOwners <=> cur.PreviousOwners) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Previous_Owners
		    ON Group_ID.OFSI_ID = Previous_Owners.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.RegimeName AS PREVIOUS_RegimeName,
			    cur.RegimeName AS CURRENT_RegimeName
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.RegimeName <=> cur.RegimeName) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Regime_Name
		    ON Group_ID.OFSI_ID = Regime_Name.OFSI_ID                                                 
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Subsidiaries AS PREVIOUS_Subsidiaries,
			    cur.Subsidiaries AS CURRENT_Subsidiaries
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Subsidiaries <=> cur.Subsidiaries) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Subsidiaries1
		    ON Group_ID.OFSI_ID = Subsidiaries1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TonnageOfVessel AS PREVIOUS_TonnageOfVessel,
			    cur.TonnageOfVessel AS CURRENT_TonnageOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TonnageOfVessel <=> cur.TonnageOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Tonnage_Of_Vessel
		    ON Group_ID.OFSI_ID = Tonnage_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TownOfBirth AS PREVIOUS_TownOfBirth,
			    cur.TownOfBirth AS CURRENT_TownOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TownOfBirth <=> cur.TownOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Town_Of_Birth
		    ON Group_ID.OFSI_ID = Town_Of_Birth.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.TypeOfVessel AS PREVIOUS_TypeOfVessel,
			    cur.TypeOfVessel AS CURRENT_TypeOfVessel
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TypeOfVessel <=> cur.TypeOfVessel) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Type_Of_Vessel
		    ON Group_ID.OFSI_ID = Type_Of_Vessel.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.UKStatementOfReasons AS PREVIOUS_UKStatementOfReasons,
			    cur.UKStatementOfReasons AS CURRENT_UKStatementOfReasons
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.UKStatementOfReasons <=> cur.UKStatementOfReasons) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS UK_Statement_Of_Reasons
		    ON Group_ID.OFSI_ID = UK_Statement_Of_Reasons.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.Website AS PREVIOUS_Website,
			    cur.Website AS CURRENT_Website
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.Website <=> cur.Website) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Website1
		    ON Group_ID.OFSI_ID = Website1.OFSI_ID                                                 
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.YearBuilt AS PREVIOUS_YearBuilt,
			    cur.YearBuilt AS CURRENT_YearBuilt
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.YearBuilt <=> cur.YearBuilt) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Year_Built
		    ON Group_ID.OFSI_ID = Year_Built.OFSI_ID                                                 
		
		
		
		LEFT JOIN (
			SELECT pre.OFSI_ID,
			    pre.YearOfBirth AS PREVIOUS_YearOfBirth,
			    cur.YearOfBirth AS CURRENT_YearOfBirth
			FROM ofsi pre
			    LEFT JOIN ofsi cur
			    ON cur.OFSI_ID = pre.OFSI_ID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.YearOfBirth <=> cur.YearOfBirth) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS Year_Of_Birth
		    ON Group_ID.OFSI_ID = Year_Of_Birth.OFSI_ID
  
			  
	    )     
	    GROUP BY Group_ID.OFSI_ID
		HAVING Group_ID.OFSI_ID = l.OFSI_ID
		),
	    '</OFSIID>') AS xmldoc
	FROM tmp_ofsi l;
	
	BEGIN
	UPDATE compliance.ofsi AS A
	INNER JOIN compliance.tmp2_ofsi AS B
		ON A.OFSI_ID = B.OFSI_ID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;	
  END
  //
DELIMITER ;