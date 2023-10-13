SELECT
	bg."name",
	bg.rating,
	ca."name" AS category_name
FROM
	board_games AS bg
JOIN
	categories AS ca
ON
	bg.category_id = ca.id
JOIN
	players_ranges AS pr
ON
	bg.players_range_id = pr.id
WHERE
	(bg.rating > 7 OR bg.name LIKE '%a%' AND bg.rating > 7.50)
	 AND pr.min_players >= 2
	 AND pr.max_players <= 5
ORDER BY
	bg."name" ASC,
	bg.rating DESC
LIMIT 5;