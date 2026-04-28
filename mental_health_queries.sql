-- MENTAL HEALTH IN TECH - SQL ANALYSIS
-- Dataset: OSMI Mental Health in Tech Survey

-- QUERY 1: Gender distribution

SELECT  gender,
	ROUND(COUNT(gender) *100.0 / (SELECT COUNT(gender) FROM survey),2) as porcentaje FROM survey
GROUP BY gender

-- QUERY 2: Age and treatment profile by gender

SELECT  gender,
	ROUND(AVG(age),2) as avg_edad,
	treatment,
	COUNT(*) as cant
FROM Survey
GROUP BY treatment, gender
ORDER BY treatment, gender

-- QUERY 3: Treatment rate by country (min 30 responses)

SELECT country,
       COUNT(*) AS total,
       SUM(CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END) AS seek_treatment ,
	   ROUND ( SUM(CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT (*),2 ) as Percent
	   FROM survey
GROUP BY country
HAVING COUNT(*) > 30
ORDER BY Percent

-- QUERY 4: Does talking to supervisor relate to treatment?

SELECT  supervisor,
	COUNT (*) as total,
	SUM( CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END ) as ask_for_help , 
	ROUND (   	
		SUM( CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END) * 100.0  / COUNT (*), 2 ) as percent
	FROM survey
GROUP BY supervisor
ORDER BY percent ASC


-- QUERY 5: Gender + benefits impact on treatment seekers
-- Filtered to people whose mental health affects work

SELECT  gender,
	Benefits,
	COUNT(*) as total,
	SUM(CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END) as ask_for_help,
	ROUND (
		SUM(CASE WHEN treatment = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT (*) , 2 )  as percent
FROM survey
WHERE work_interfere IN ('Often' , 'Sometimes')
	 AND gender IN ('Male' , 'Female')
GROUP BY gender, benefits
ORDER BY percent ASC