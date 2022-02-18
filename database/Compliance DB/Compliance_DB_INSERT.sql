
-- ----------------------Customer TYPE------------------------
INSERT INTO customer_type
    (Cust_Type,Risk_Category,Risk_Weight)
VALUES
('Accountant, Auditor and Tax Advisor','Medium',30), ('Agriculturist','Low',20), ('Arms/ Ammunition Dealers','High',40), ('High valuable/ Precious Metal Dealers (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),
('High Net worth customers with no clearly identifiable source of income, etc','High',40), ('Housewives/ Widows/ Households','High',40), ('Investment and Comodity Advisor','Medium',30), ('Land Lords','High',40),
('Landady','High',40), ('Lawyers','High',40), ('Minors','Low',20), ('Non Residents, Foreign Nationals','High',40), ('Notaries','Low',20), ('Old Auto Parts and/ or Metal Scrap Dealers','High',40),
('Pensioner','Low',10), ('Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',60), ('Real-Estate Dealer/Agent','Medium',30),
('Retired Person','Low',10), ('Salaried Individuals','Low',10), ('Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),
('Self Employed/ Proprietorship','Low',10), ('Student','Low',20), ('Trader of General Items','Medium',30), ('Travel/Tourism Agent','Medium',30), ('Unemployed','Low',20),
('Widow Account','Low',20), ('All other Customers not Specified above','High',40), ('Others','Low',20);




-- ----------------------Product TYPE-------------------------
INSERT INTO product_type
    (Prod_Type,Risk_Category,Risk_Weight)
VALUES
('Digital Account','Low',5),('Transactional accounts','Medium',10),('Checking accounts','Medium',10),
('Current accounts','Medium',10),('Savings accounts','Medium',10),
('Debit cards','Medium',10),('ATM cards','Medium',10),
('Credit cards','Medium',10),('Traveler cheques','Medium',10),
('Mortgages','Medium',10),('Home equity loans','Medium',10),
('Personal loans','Medium',10),('Certificates of deposit/Term deposits','Medium',10),
('Sweep accounts','Medium',10),('Money market accounts','Medium',10),
('Individual Retirement Accounts (IRAs)','Medium',10),('Checking accounts','Medium',10),
('Transactional accounts','Medium',10),('Checking accounts','Medium',10),
('Transactional accounts','Medium',10),('Checking accounts','Medium',10),
('Transactional accounts','Medium',10),('Checking accounts','Medium',10),
;

-- ----------------------Delivery Channel-------------------------
INSERT INTO delivery_channel
    (channel,Risk_Category,Risk_Weight)
VALUES
('Mobile Wallet','Medium',10);

-- ----------------------Country Nationality-------------------------
INSERT INTO Country_Nationality
    (Country,Nationality,`Language`)
VALUES
('Afghanistan','Afghan','Dari (Persian) - Pashto'), ('Albania','Albanian','Albanian'), ('Algeria','Algerian','Arabic'), ('Argentina','Argentine','Spanish'),
('Australia','Australian','English'), ('Austria','Austrian','German'), ('Bangladesh','Bangladeshi','Bengali'), ('Belgium','Belgian','French / Flemish'), ('Bolivia','Bolivian','Spanish'),
('Botswana','Batswana','English, Setswana'), ('Brazil','Brazilian','Portuguese'), ('Bulgaria','Bulgarian','Bulgarian'), ('Cambodia','Cambodian','Cambodian'), ('Cameroon','Cameroonian','French / English'),
('Canada','Canadian','English / French'), ('Chile','Chilean','Spanish'), ('China','Chinese','Chinese'), ('Colombia *','Colombian','Spanish'), ('Costa Rica','Costa Rican','Spanish'),
('Croatia','Croatian','Croatian'), ('Cuba','Cuban','Spanish'), ('Czech Republic','Czech','Czech'), ('Denmark','Danish','Danish'), ('Dominican Republic','Dominican','Spanish'),
('Ecuador','Ecuadorian','Spanish'), ('Egypt','Egyptian','Arabic'), ('El Salvador','Salvadorian','Spanish'), ('England','English','English'), ('Estonia','Estonian','Estonian'),
('Ethiopia','Ethiopian','Amharic'), ('Fiji','Fijian','English, Fijian'), ('Finland','Finnish','Finnish'), ('France','French','French'), ('Germany','German','German'),
('Ghana','Ghanaian','English'), ('Greece','Greek','Greek'), ('Guatemala','Guatemalan','Spanish'), ('Haiti','Haitian','French / Creole'), ('Honduras','Honduran','Spanish'),
('Hungary','Hungarian','Hungarian'), ('Iceland','Icelandic','Icelandic'), ('India','Indian','Hindi / English'), ('Indonesia','Indonesian','Indonesian'), ('Iran','Iranian','Persian'),
('Iraq','Iraqi','Arabic, Kurdish'), ('Ireland','Irish','Irish / English'), ('Israel','Israeli','Hebrew'), ('Italy','Italian','Italian'), ('Jamaica','Jamaican','English'),
('Japan','Japanese','Japanese'), ('Jordan','Jordanian','Arabic'), ('Kenya','Kenyan','Swahili'), ('Kuwait','Kuwaiti','Arabiv'), ('Laos','Lao','Laotian'),
('Latvia','Latvian','Latvian'), ('Lebanon','Lebanese','Arabic'), ('Libya','Libyan','Arabic'), ('Lithuania','Lithuanian','Lithuanian'), ('Madagascar','Malagasy','Malagasy / French'),
('Malaysia','Malaysian','Malay / Malaysian'), ('Mali','Malian','French'), ('Malta','Maltese','English, Maltese'), ('Mexico','Mexican','Spanish'), ('Mongolia','Mongolian','Mongolian'),
('Morocco','Moroccan','Arabic / French'), ('Mozambique','Mozambican','Portuguese'), ('Namibia','Namibian','English'), ('Nepal','Nepalese','Nepali, English'), ('Netherlands','Dutch','Dutch'),
('New Zealand','New Zealand','English / Maori'), ('Nicaragua','Nicaraguan','Spanish'), ('Nigeria','Nigerian','English'), ('Norway','Norwegian','Norwegian'), ('Pakistan','Pakistani','Urdu, English'),
('Panama','Panamanian','Spanish'), ('Paraguay','Paraguayan','Spanish'), ('Peru','Peruvian','Spanish'), ('Philippines','Philippine','Tagalog / Filipino'), ('Poland','Polish','Polish'),
('Portugal','Portuguese','Portuguese'), ('Romania','Romanian','Romanian'), ('Russia','Russian','Russian'), ('Saudi Arabia','Saudi','Arabic'), ('Scotland','Scottish','English'), ('Senegal','Senegalese','French'),
('Serbia','Serbian','Serbian'), ('Singapore','Singaporean','English, Malay, Mandarin, Tamil'), ('Slovakia','Slovak','Slovak'), ('South Africa','South African','Afrikaans, English, + 9 more'),
('South Korea','Korean','Korean'), ('Spain','Spanish','Spanish'), ('Sri Lanka','Sri Lankan','Sinhala, Tamil'), ('Sudan','Sudanese','Arabic, English'), ('Sweden','Swedish','Swedish'),
('Switzerland','Swiss','German, French, Italian, Romansh'), ('Syria','Syrian','Arabic'), ('Taiwan','Taiwanese','Chinese'), ('Tajikistan','Tajikistani','Tajik (Persian)'),
('Thailand','Thai','Thai'), ('Tonga','Tongan','English, Tongan'), ('Tunisia','Tunisian','Arabic'), ('Turkey','Turkish','Turkish'), ('Ukraine','Ukrainian','Ukrainian'),
('United Arab Emirates','Emirati','Arabic'), ('(The) United Kingdom','British','English'), ('(The) United States','American **','English'), ('Uruguay','Uruguayan','Spanish'),
('Venezuela','Venezuelan','Spanish'), ('Vietnam','Vietnamese','Vietnamese'), ('Wales','Welsh','Welsh / English'), ('Zambia','Zambian','English'), ('Zimbabwe','Zimbabwean','16 languages');

-- ----------------------Individual Account Purpose-------------------------
INSERT INTO Individual_Account_Purpose
    (Purpose)
VALUES
('Agriculture'), ('Self Employed/ Proprietorship'), ('Home Remittance'), ('Pension'), ('Personal Saving'), ('Property Rent'), ('Salary'), ('Stock/Investment'), ('Other');


