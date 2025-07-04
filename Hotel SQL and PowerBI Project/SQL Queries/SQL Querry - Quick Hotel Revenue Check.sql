SELECT 
	hotel,
	arrival_date_year,
	ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights) * adr),2) AS 'hotel revenue'
FROM hotels
GROUP BY arrival_date_year, hotel