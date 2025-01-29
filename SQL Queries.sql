--What is the gender distribution of respondents from India?
SELECT GENDER, COUNT(GENDER) AS GENDERCOUNT
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'
GROUP BY GENDER;

--What percentage of respondents from India are interested in education abroad and sponsorship?
SELECT (COUNT(`HIGHER EDUCATION ABROAD`)*100)/COUNT(*)  AS percentage
FROM KULTURE_HIRE
WHERE
`Country.` = 'India'
AND `Higher Education Abroad` = 'Yes'

--What are the 6 top influences on career aspirations for respondents in India?
SELECT DISTINCT(`INFLUENCING FACTORS`)
FROM KULTURE_HIRE 
WHERE `COUNTRY.` = 'INDIA' 
LIMIT 6;

--How do career aspiration influences vary by gender in India?
SELECT `ASPIRATIONAL JOB`, GENDER, COUNT(GENDER)
FROM KULTURE_HIRE
WHERE `Country.` = 'India'
GROUP BY GENDER, `ASPIRATIONAL JOB`

--What percentage of respondents are willing to work for a company for at least 3 years?
SELECT (COUNT(`TIME BOND OF 3 YEARS`)*100)/COUNT(*) AS percentage
FROM KULTURE_HIRE
WHERE
`Country.` = 'India'
AND `TIME BOND OF 3 YEARS` = 'Yes'

--How many respondents prefer to work for socially impactful companies?
SELECT COUNT(*) FROM KULTURE_HIRE
WHERE `NO SOCIAL IMPACT` IN (1,2,3,4,5)
AND `COUNTRY.` = 'INDIA'

--How does the preference for socially impactful companies vary by gender?
SELECT GENDER, COUNT(GENDER) FROM KULTURE_HIRE
WHERE `NO SOCIAL IMPACT` IN (1,2,3,4,5)
AND `COUNTRY.` = 'INDIA'
GROUP BY GENDER

--What is the distribution of minimum expected salary in the first three years among respondents?
SELECT DISTINCT(`Min. Expected Salary, 3 Years down the line`)
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'

--What is the expected minimum monthly salary in hand?
SELECT DISTINCT(`Min. Inhand Salary as a Fresher`)
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'

--What percentage of respondents prefer remote working?
SELECT (COUNT(`WORK MODE`)*100)/COUNT(*) AS percentage
FROM KULTURE_HIRE
WHERE
`Country.` = 'India'
AND `WORK MODE` = 'WFO'

--What is the preferred number of daily work hours?
SELECT DISTINCT(`Working hours/day`), COUNT(`Working hours/day`)
FROM KULTURE_HIRE
GROUP BY `Working hours/day`

--What are the common work frustrations among respondents?
SELECT DISTINCT(`Frustration`) FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'

--How does the need for work-life balance interventions vary by gender?
SELECT `Gender`, `Working hours/day`, COUNT(*) AS `Count`
FROM KULTURE_HIRE
WHERE `Working hours/day` IN ('6 hours', '8 hours')
GROUP BY `Gender`, `Working hours/day`
ORDER BY `Gender`, `Working hours/day`;

--How many respondents are willing to work under an abusive manager?
SELECT COUNT(`Toxic Manager`)
FROM KULTURE_HIRE
WHERE `Toxic Manager` IN (7,8,9,10)
AND `COUNTRY.` = 'INDIA'

--What is the distribution of minimum expected salary after five years?
SELECT DISTINCT(`Min. Expected Salary, 5 Years down the line (in hand)`)
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'

--What are the remote working preferences by gender?
SELECT `GENDER`, `WORK MODE`, COUNT(`WORK MODE`)
FROM KULTURE_HIRE
WHERE
`Country.` = 'India'
AND `WORK MODE` = 'WFO'
GROUP BY GENDER

--What are the top work frustrations for each gender?
SELECT `Gender`, `Frustration`
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'
GROUP BY `Gender`, `Frustration`;

--What factors boost work happiness and productivity for respondents?
SELECT DISTINCT(`Factors making you happy`)
FROM KULTURE_HIRE
WHERE `COUNTRY.` = 'INDIA'

--What percentage of respondents need sponsorship for education abroad?
SELECT (COUNT(`HIGHER EDUCATION ABROAD`)*100)/COUNT(*) AS percentage
FROM KULTURE_HIRE
WHERE
`Country.` = 'India'
AND `Higher Education Abroad` = 'Yes, only if sponsered'
