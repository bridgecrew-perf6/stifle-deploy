DELIMITER //
CREATE PROCEDURE UNSC_INDIVIDUAL_COMPARISION ()
  BEGIN
  DECLARE DATE_INSERTED_CURRENT VARCHAR(100);
  DECLARE DATE_INSERTED_PREVIOUS  VARCHAR(100);
  

	SET @DATE_INSERTED_CURRENT = (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i')   AS DATE_INSERTED 
				FROM unsc_individual
				GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
				ORDER BY DATE_INSERTED DESC
				LIMIT 1);

	SET @DATE_INSERTED_PREVIOUS = (SELECT DATE_INSERTED 
				FROM (SELECT DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') AS DATE_INSERTED 
					FROM unsc_individual 
					GROUP BY DATE_FORMAT(STR_TO_DATE(DATE_INSERTED, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i') 
					ORDER BY DATE_INSERTED DESC
					LIMIT 2) 
				AS unsc_individual 
				ORDER BY DATE_INSERTED ASC 
				LIMIT 1);  
			
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp;
  
	CREATE TEMPORARY TABLE compliance.tmp ( 
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
		DATE_INSERTED VARCHAR(100) 
		);
  
	INSERT INTO compliance.tmp
	SELECT 
	 T1.DATAID, T1.VERSIONNUM, T1.FIRST_NAME, T1.SECOND_NAME, T1.THIRD_NAME, T1.FOURTH_NAME, T1.GENDER, T1.TITLE, T1.UN_LIST_TYPE, T1.REFERENCE_NUMBER, T1.LISTED_ON, T1.COMMENTS1,
	 T1.DESIGNATION, T1.NATIONALITY, T1.LIST_TYPE, T1.LAST_DAY_UPDATED, T1.SORT_KEY, T1.SORT_KEY_LAST_MOD, T1.NAME_ORIGINAL_SCRIPT, T1.SUBMITTED_BY, T1.DATE_INSERTED
	FROM unsc_individual AS T1
		LEFT JOIN unsc_individual AS T2 
		ON T1.DATAID = T2.DATAID  
		AND T2.DATE_INSERTED = @DATE_INSERTED_PREVIOUS 
	WHERE T1.DATE_INSERTED = @DATE_INSERTED_CURRENT
		AND IF(T2.DATAID IS NULL, TRUE, ((T1.VERSIONNUM <> T2.VERSIONNUM) 
		OR (T1.FIRST_NAME <> T2.FIRST_NAME) 
		OR (T1.SECOND_NAME <> T2.SECOND_NAME) 
		OR (T1.THIRD_NAME <> T2.THIRD_NAME) 
		OR (T1.FOURTH_NAME <> T2.FOURTH_NAME)
		OR (T1.GENDER <> T2.GENDER) 
		OR (T1.TITLE <> T2.TITLE) 
		OR (T1.UN_LIST_TYPE <> T2.UN_LIST_TYPE) 
		OR (T1.REFERENCE_NUMBER <> T2.REFERENCE_NUMBER) 
		OR (T1.LISTED_ON <> T2.LISTED_ON)
		OR (T1.COMMENTS1 <> T2.COMMENTS1) 
		OR (T1.DESIGNATION <> T2.DESIGNATION) 
		OR (T1.NATIONALITY <> T2.NATIONALITY) 
		OR (T1.LIST_TYPE <> T2.LIST_TYPE) 
		OR (T1.LAST_DAY_UPDATED <> T2.LAST_DAY_UPDATED)
		OR (T1.SORT_KEY <> T2.SORT_KEY) 
		OR (T1.SORT_KEY_LAST_MOD <> T2.SORT_KEY_LAST_MOD) 
		OR (T1.NAME_ORIGINAL_SCRIPT <> T2.NAME_ORIGINAL_SCRIPT) 
		OR (T1.SUBMITTED_BY <> T2.SUBMITTED_BY)));
		
	DROP TEMPORARY TABLE IF EXISTS compliance.tmp2;

	CREATE TEMPORARY TABLE compliance.tmp2 ( 
		DATAID VARCHAR(100) NOT NULL,
		xmldoc TEXT
		);
		
	INSERT INTO compliance.tmp2
	SELECT
	   l.DATAID,
	   CONCAT('<DATAID DATA_ID="', l.DATAID, '">',
	    (
		SELECT
		    CONCAT('<DATA>',
		    GROUP_CONCAT('<FNP="', IFNULL(FirstName.PREVIOUS_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FNC="', IFNULL(FirstName.CURRENT_FIRST_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SNP="', IFNULL(SecondName.PREVIOUS_SECOND_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SNC="', IFNULL(SecondName.CURRENT_SECOND_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<VNP="', IFNULL(VERSION_NUM.PREVIOUS_VERSIONNUM, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<VNC="', IFNULL(VERSION_NUM.CURRENT_VERSIONNUM, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TNP="', IFNULL(THIRDNAME.PREVIOUS_THIRD_NAME, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TNC="', IFNULL(THIRDNAME.CURRENT_THIRD_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FOURTHNP="', IFNULL(FOURTHNAME.PREVIOUS_FOURTH_NAME, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<FOURTHNC="', IFNULL(FOURTHNAME.CURRENT_FOURTH_NAME, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GP="', IFNULL(GENDER1.PREVIOUS_GENDER, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<GC="', IFNULL(GENDER1.CURRENT_GENDER, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TP="', IFNULL(TITLE1.PREVIOUS_TITLE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<TC="', IFNULL(TITLE1.CURRENT_TITLE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UN_LIST_TYPEP="', IFNULL(UN_LIST_TYPE1.PREVIOUS_UN_LIST_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<UN_LIST_TYPEC="', IFNULL(UN_LIST_TYPE1.CURRENT_UN_LIST_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REFERENCENUMBERP="', IFNULL(REFERENCENUMBER.PREVIOUS_REFERENCE_NUMBER, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<REFERENCENUMBERC="', IFNULL(REFERENCENUMBER.CURRENT_REFERENCE_NUMBER, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LISTEDONP="', IFNULL(LISTEDON.PREVIOUS_LISTED_ON, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LISTEDONC="', IFNULL(LISTEDON.CURRENT_LISTED_ON, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<COMMENTSP="', IFNULL(COMMENTS.PREVIOUS_COMMENTS1, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<COMMENTSC="', IFNULL(COMMENTS.CURRENT_COMMENTS1, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DESIGNATIONP="', IFNULL(DESIGNATION1.PREVIOUS_DESIGNATION, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<DESIGNATIONC="', IFNULL(DESIGNATION1.CURRENT_DESIGNATION, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NATIONALITYP="', IFNULL(NATIONALITY1.PREVIOUS_NATIONALITY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NATIONALITYC="', IFNULL(NATIONALITY1.CURRENT_NATIONALITY, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LIST_TYPEP="', IFNULL(LISTTYPE.PREVIOUS_LIST_TYPE, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LIST_TYPEC="', IFNULL(LISTTYPE.CURRENT_LIST_TYPE, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LAST_DAY_UPDATEDP="', IFNULL(LASTDAYUPDATED.PREVIOUS_LAST_DAY_UPDATED, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<LAST_DAY_UPDATEDC="', IFNULL(LASTDAYUPDATED.CURRENT_LAST_DAY_UPDATED, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEYP="', IFNULL(SORTKEY.PREVIOUS_SORT_KEY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEYC="', IFNULL(SORTKEY.CURRENT_SORT_KEY, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEY_LAST_MODP="', IFNULL(SORTKEYLASTMOD.PREVIOUS_SORT_KEY_LAST_MOD, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SORT_KEY_LAST_MODC="', IFNULL(SORTKEYLASTMOD.CURRENT_SORT_KEY_LAST_MOD, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NAME_ORIGINAL_SCRIPTP="', IFNULL(NAMEORIGINALSCRIPT.PREVIOUS_NAME_ORIGINAL_SCRIPT, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<NAME_ORIGINAL_SCRIPTC="', IFNULL(NAMEORIGINALSCRIPT.CURRENT_NAME_ORIGINAL_SCRIPT, 'NULL'), '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SUBMITTED_BYP="', IFNULL(SUBMITTEDBY.PREVIOUS_SUBMITTED_BY, 'NULL'),  '"/>'  SEPARATOR ''),
		    GROUP_CONCAT('<SUBMITTED_BYC="', IFNULL(SUBMITTEDBY.CURRENT_SUBMITTED_BY, 'NULL'), '"/>'  SEPARATOR ''),
		    '</DATA>')
	    FROM(
		(SELECT pre.DATAID,
		    pre.FIRST_NAME AS PREVIOUS_FIRST_NAME,
		    cur.FIRST_NAME AS CURRENT_FIRST_NAME
		FROM unsc_individual pre
		    LEFT JOIN unsc_individual cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.FIRST_NAME <=> cur.FIRST_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FirstName

		LEFT JOIN (
		SELECT pre.DATAID,
		    pre.SECOND_NAME AS PREVIOUS_SECOND_NAME,
		    cur.SECOND_NAME AS CURRENT_SECOND_NAME
		FROM unsc_individual pre
		    LEFT JOIN unsc_individual cur
		    ON cur.DATAID = pre.DATAID
		    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
		WHERE NOT (pre.SECOND_NAME <=> cur.SECOND_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SecondName
		ON FirstName.DATAID = SecondName.DATAID 
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.VERSIONNUM AS PREVIOUS_VERSIONNUM,
			    cur.VERSIONNUM AS CURRENT_VERSIONNUM
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.VERSIONNUM <=> cur.VERSIONNUM) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS VERSION_NUM
		    ON FirstName.DATAID = VERSION_NUM.DATAID    
		  
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.THIRD_NAME AS PREVIOUS_THIRD_NAME,
			    cur.THIRD_NAME AS CURRENT_THIRD_NAME
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.THIRD_NAME <=> cur.THIRD_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS THIRDNAME
		    ON FirstName.DATAID = THIRDNAME.DATAID  
		    

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.FOURTH_NAME AS PREVIOUS_FOURTH_NAME,
			    cur.FOURTH_NAME AS CURRENT_FOURTH_NAME
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.FOURTH_NAME <=> cur.FOURTH_NAME) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS FOURTHNAME
		    ON FirstName.DATAID = FOURTHNAME.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.GENDER AS PREVIOUS_GENDER,
			    cur.GENDER AS CURRENT_GENDER
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.GENDER <=> cur.GENDER) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS GENDER1
		    ON FirstName.DATAID = GENDER1.DATAID
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.TITLE AS PREVIOUS_TITLE,
			    cur.TITLE AS CURRENT_TITLE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.TITLE <=> cur.TITLE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS TITLE1
		    ON FirstName.DATAID = TITLE1.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.UN_LIST_TYPE AS PREVIOUS_UN_LIST_TYPE,
			    cur.UN_LIST_TYPE AS CURRENT_UN_LIST_TYPE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.UN_LIST_TYPE <=> cur.UN_LIST_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS UN_LIST_TYPE1
		    ON FirstName.DATAID = UN_LIST_TYPE1.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.REFERENCE_NUMBER AS PREVIOUS_REFERENCE_NUMBER,
			    cur.REFERENCE_NUMBER AS CURRENT_REFERENCE_NUMBER
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.REFERENCE_NUMBER <=> cur.REFERENCE_NUMBER) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS REFERENCENUMBER
		    ON FirstName.DATAID = REFERENCENUMBER.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LISTED_ON AS PREVIOUS_LISTED_ON,
			    cur.LISTED_ON AS CURRENT_LISTED_ON
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LISTED_ON <=> cur.LISTED_ON) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LISTEDON
		    ON FirstName.DATAID = LISTEDON.DATAID  
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.COMMENTS1 AS PREVIOUS_COMMENTS1,
			    cur.COMMENTS1 AS CURRENT_COMMENTS1
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.COMMENTS1 <=> cur.COMMENTS1) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS COMMENTS
		    ON FirstName.DATAID = COMMENTS.DATAID   
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.DESIGNATION AS PREVIOUS_DESIGNATION,
			    cur.DESIGNATION AS CURRENT_DESIGNATION
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.DESIGNATION <=> cur.DESIGNATION) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS DESIGNATION1
		    ON FirstName.DATAID = DESIGNATION1.DATAID   

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.NATIONALITY AS PREVIOUS_NATIONALITY,
			    cur.NATIONALITY AS CURRENT_NATIONALITY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NATIONALITY <=> cur.NATIONALITY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS NATIONALITY1
		    ON FirstName.DATAID = NATIONALITY1.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LIST_TYPE AS PREVIOUS_LIST_TYPE,
			    cur.LIST_TYPE AS CURRENT_LIST_TYPE
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LIST_TYPE <=> cur.LIST_TYPE) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LISTTYPE
		    ON FirstName.DATAID = LISTTYPE.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.LAST_DAY_UPDATED AS PREVIOUS_LAST_DAY_UPDATED,
			    cur.LAST_DAY_UPDATED AS CURRENT_LAST_DAY_UPDATED
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.LAST_DAY_UPDATED <=> cur.LAST_DAY_UPDATED) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS LASTDAYUPDATED
		    ON FirstName.DATAID = LASTDAYUPDATED.DATAID 

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SORT_KEY AS PREVIOUS_SORT_KEY,
			    cur.SORT_KEY AS CURRENT_SORT_KEY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SORT_KEY <=> cur.SORT_KEY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SORTKEY
		    ON FirstName.DATAID = SORTKEY.DATAID 
		  
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SORT_KEY_LAST_MOD AS PREVIOUS_SORT_KEY_LAST_MOD,
			    cur.SORT_KEY_LAST_MOD AS CURRENT_SORT_KEY_LAST_MOD
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SORT_KEY_LAST_MOD <=> cur.SORT_KEY_LAST_MOD) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SORTKEYLASTMOD
		    ON FirstName.DATAID = SORTKEYLASTMOD.DATAID

		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.NAME_ORIGINAL_SCRIPT AS PREVIOUS_NAME_ORIGINAL_SCRIPT,
			    cur.NAME_ORIGINAL_SCRIPT AS CURRENT_NAME_ORIGINAL_SCRIPT
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.NAME_ORIGINAL_SCRIPT <=> cur.NAME_ORIGINAL_SCRIPT) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS NAMEORIGINALSCRIPT
		    ON FirstName.DATAID = NAMEORIGINALSCRIPT.DATAID
		    
		LEFT JOIN (
			SELECT pre.DATAID,
			    pre.SUBMITTED_BY AS PREVIOUS_SUBMITTED_BY,
			    cur.SUBMITTED_BY AS CURRENT_SUBMITTED_BY
			FROM unsc_individual pre
			    LEFT JOIN unsc_individual cur
			    ON cur.DATAID = pre.DATAID
			    AND cur.DATE_INSERTED = @DATE_INSERTED_CURRENT
			WHERE NOT (pre.SUBMITTED_BY <=> cur.SUBMITTED_BY) AND pre.DATE_INSERTED = @DATE_INSERTED_PREVIOUS) AS SUBMITTEDBY
		    ON FirstName.DATAID = SUBMITTEDBY.DATAID	  
	    )     
	    GROUP BY FirstName.DATAID
		HAVING FirstName.DATAID = l.DATAID
		),
	    '</DATAID>') AS xmldoc
	FROM tmp l;
	
	BEGIN
	UPDATE compliance.unsc_individual AS A
	INNER JOIN compliance.tmp2 AS B
		ON A.DATAID = B.DATAID
	SET A.xml_col = B.xmldoc	
	WHERE B.xmldoc IS NOT NULL
	AND A.DATE_INSERTED = DATE_FORMAT(STR_TO_DATE(@DATE_INSERTED_CURRENT, '%Y-%m-%d %H:%i'),'%Y-%m-%d %H:%i');
	END;
  END
  //
DELIMITER ;