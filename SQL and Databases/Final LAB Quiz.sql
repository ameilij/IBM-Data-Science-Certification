-- Problem 1
-- List the case number, type of crime and community area for all crimes in community area number 18.

SELECT CR.CASE_NUMBER, CR.PRIMARY_TYPE, CE.COMMUNITY_AREA_NAME
  FROM CHICAGO_CRIME_DATA CR INNER JOIN CHICAGO_CENSUS_DATA CE ON CR.COMMUNITY_AREA_NUMBER = CE.COMMUNITY_AREA_NUMBER
  WHERE CR.COMMUNITY_AREA_NUMBER = 18;
-- assert
SELECT CASE_NUMBER, PRIMARY_TYPE
  FROM CHICAGO_CRIME_DATA
  WHERE COMMUNITY_AREA_NUMBER = 18;

-- Problem 2
-- List all crimes that took place at a school. Include case number, crime type and community name.
SELECT *
  FROM CHICAGO_CRIME_DATA LIMIT 5;
SELECT CR.CASE_NUMBER, CR.PRIMARY_TYPE, CE.COMMUNITY_AREA_NAME, CR.LOCATION_DESCRIPTION
  FROM CHICAGO_CRIME_DATA CR INNER JOIN CHICAGO_CENSUS_DATA CE ON CR.COMMUNITY_AREA_NUMBER = CE.COMMUNITY_AREA_NUMBER
  WHERE CR.LOCATION_DESCRIPTION LIKE '%SCHOOL%';

-- Problem 3
-- For the communities of Oakland, Armour Square, Edgewater and CHICAGO list the associated community_area_numbers and the case_numbers.
SELECT CR.CASE_NUMBER, CR.COMMUNITY_AREA_NUMBER, CE.COMMUNITY_AREA_NAME
  FROM CHICAGO_CRIME_DATA CR INNER JOIN CHICAGO_CENSUS_DATA CE ON CR.COMMUNITY_AREA_NUMBER = CE.COMMUNITY_AREA_NUMBER
  WHERE CE.COMMUNITY_AREA_NAME IN ('Oakland', 'Armour Square', 'CHICAGO');

SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME
  FROM CHICAGO_CENSUS_DATA
  WHERE COMMUNITY_AREA_NAME IN ('Oakland', 'Edgewater', 'Armour Square', 'CHICAGO');
SELECT *
  FROM CHICAGO_CRIME_DATA
  WHERE COMMUNITY_AREA_NUMBER = 77;
