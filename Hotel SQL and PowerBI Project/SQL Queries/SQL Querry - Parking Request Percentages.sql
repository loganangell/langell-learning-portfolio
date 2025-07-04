WITH hotels AS (
	SELECT * FROM dbo.['2018$']
	UNION
	SELECT * FROM dbo.['2019$']
	UNION
	SELECT * FROM dbo.['2020$'])

SELECT
	arrival_date_year,
	hotel,
	concat(round((sum(required_car_parking_spaces) / sum(stays_in_week_nights + stays_in_weekend_nights)) * 100, 2), '%') AS Parking_Percentage
FROM hotels
	GROUP BY
		arrival_date_year,
		hotel;