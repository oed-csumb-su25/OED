INSERT INTO day_pattern(day_name, note)
VALUES (${day_name}, ${note})
RETURNING id;