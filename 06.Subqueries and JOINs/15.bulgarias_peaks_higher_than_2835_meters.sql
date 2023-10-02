SELECT
	mc.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	peaks AS p
JOIN
	mountains_countries as mc
USING
	(mountain_id)
JOIN
	mountains AS m
ON
	m.id = mc.mountain_id
WHERE p.elevation > 2835
	AND
	mc.country_code = 'BG'
ORDER BY
	p.elevation DESC;