CREATE TABLE IF NOT EXISTS week_patterns (
    id SERIAL PRIMARY KEY,
    week_name TEXT,
    note TEXT,
    sunday INTEGER NOT NULL REFERENCES day_patterns(id),
    monday INTEGER NOT NULL REFERENCES day_patterns(id),
    tuesday INTEGER NOT NULL REFERENCES day_patterns(id),
    wednesday INTEGER NOT NULL REFERENCES day_patterns(id),
    thursday INTEGER NOT NULL REFERENCES day_patterns(id),
    friday INTEGER NOT NULL REFERENCES day_patterns(id),
    saturday INTEGER NOT NULL REFERENCES day_patterns(id)
);