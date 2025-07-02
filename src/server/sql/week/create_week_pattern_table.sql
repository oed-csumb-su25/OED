CREATE TABLE IF NOT EXISTS week_pattern (
    id SERIAL PRIMARY KEY,
    week_name TEXT,
    note TEXT,
    sunday INTEGER NOT NULL REFERENCES day_pattern(id),
    monday INTEGER NOT NULL REFERENCES day_pattern(id),
    tuesday INTEGER NOT NULL REFERENCES day_pattern(id),
    wednesday INTEGER NOT NULL REFERENCES day_pattern(id),
    thursday INTEGER NOT NULL REFERENCES day_pattern(id),
    friday INTEGER NOT NULL REFERENCES day_pattern(id),
    saturday INTEGER NOT NULL REFERENCES day_pattern(id)
);