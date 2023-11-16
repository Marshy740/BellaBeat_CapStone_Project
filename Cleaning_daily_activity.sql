IF EXISTS (SELECT*
			FROM bellabeat.dbo.daily_activity_cleaned)

DROP TABLE bellabeat.dbo.daily_activity_cleanedd

CREATE TABLE bellabeat.dbo.daily_activity_cleanedd
(Id FLOAT, ActivityDate DATETIME2(7), TotalSteps INT, TotalDistance INT, VeryActiveDistance FLOAT, ModeratelyActiveDistance FLOAT, 
LightActiceDistance FLOAT, SedentaryActiveDistance FLOAT, VeryActiveMinutes INT, FairlyActiveMinutes INT, 
LightlyActiveMinutes INT, SedentaryMinutes INT, Calories FLOAT)

INSERT INTO bellabeat.dbo.daily_activity_cleanedd
(Id, ActivityDate, TotalSteps, TotalDistance, VeryActiveDistance, ModeratelyActiveDistance,
LightActiceDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes,
LightlyActiveMinutes, SedentaryMinutes, Calories)


SELECT
	Id,
	ActivityDate,
	TotalSteps,
	CAST (TotalDistance AS FLOAT) AS TotalDistance,
	CAST (VeryActiveDistance AS FLOAT) as VeryActiveDistance,
	CAST (ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
	CAST (LightActiveDistance AS FLOAT) AS LightActiveDistance,
	CAST (SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
	VeryActiveMinutes,
	FairlyActiveMinutes,
	LightlyActiveMinutes,
	SedentaryMinutes,
	Calories
FROM
	bellabeat.dbo.daily_activity