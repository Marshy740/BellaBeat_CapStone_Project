--Calculate the number fo days each user tracked physical activity

/*SELECT
	DISTINCT Id,
	COUNT(ActivityDate) OVER (PARTITION BY Id) AS days_acitivty_recorded

FROM
	bellabeat.dbo.daily_activity_cleanedd

ORDER BY
	days_acitivty_recorded DESC*/

--Calculate average minutes for each activity 

SELECT
	ROUND(AVG(VeryActiveMinutes),2) AS AverageVeryActiveMinutes,
	ROUND(AVG(FairlyActiveMinutes),2) AS AverageFairlyActiveMinutes,
	ROUND(AVG(LightlyActiveMinutes)/60.0,2) AS AverageLightlyActiveHours,
	ROUND(AVG(SedentaryMinutes)/60.0,2) AS AverageSedentaryHours

FROM
	bellabeat.dbo.daily_activity_cleanedd