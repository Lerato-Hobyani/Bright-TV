-- Databricks notebook source
---Telling Databricks to use the "BRIGHT_TV" catalog and the "data" schema

USE bright_tv.data;

---Running the full tables
SELECT*
FROM bright_tv.data.user_profiles

SELECT*
FROM bright_tv.data.viewership

USE bright_tv.data;

---Gender checks 
SELECT DISTINCT Gender
FROM user_profiles;


SELECT DISTINCT
CASE
WHEN Gender = 'None' THEN 'unknown' --- Replace the value "None" with "unknown"
WHEN Gender = ' ' THEN 'unknown' ---Replace the blanks with "unknown"
WHEN Gender = 'NULL' THEN 'unknown'
ELSE Gender
END AS Gender_Clean
FROM user_profiles;

