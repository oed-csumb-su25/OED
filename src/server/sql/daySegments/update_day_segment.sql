-- Does not return a value

UPDATE day_segments
    SET day_pattern_id = ${day_pattern_id},
        start_hour = ${start_hour},
        end_hour = ${end_hour},
        slope = ${slope},
        intercept = ${intercept},
        note = ${note}
    WHERE id = ${id};