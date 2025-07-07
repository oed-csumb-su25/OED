-- Does not return a value

UPDATE day_pattern
    SET day_name = ${day_name},
        note = ${note}
    WHERE id = ${id};