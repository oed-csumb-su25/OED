DROP TABLE cik;
-- Recreate cik table with start_time and end_time columns that have defaults
-- Primary composite key now includes start_time
CREATE TABLE IF NOT EXISTS cik (
    source_id INTEGER REFERENCES units(id),
    destination_id INTEGER REFERENCES units(id),
    slope FLOAT,
    intercept FLOAT,
    start_time TIMESTAMP DEFAULT '-infinity',
    end_time TIMESTAMP DEFAULT 'infinity',
    PRIMARY KEY (source_id, destination_id, start_time)
);