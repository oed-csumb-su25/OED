--Remove old materialized views and index that are no longer used.
DROP MATERIALIZED VIEW IF EXISTS daily_readings_unit;
DROP MATERIALIZED VIEW IF EXISTS hourly_readings_unit;
DROP INDEX IF EXISTS idx_daily_readings_unit;

--Dropping group views since they will be recreated;
DROP MATERIALIZED VIEW IF EXISTS group_daily_readings_unit;
DROP MATERIALIZED VIEW IF EXISTS group_hourly_readings_unit;
DROP INDEX IF EXISTS idx_group_daily_readings_unit;
DROP INDEX IF EXISTS idx_group_hourly_readings_unit;