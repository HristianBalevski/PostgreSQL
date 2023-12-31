SELECT
	MIN(average) AS min_average_area
FROM(
	SELECT AVG(c.area_in_sq_km) AS average
	FROM
		countries AS c
GROUP BY
	continent_code) AS average_area;