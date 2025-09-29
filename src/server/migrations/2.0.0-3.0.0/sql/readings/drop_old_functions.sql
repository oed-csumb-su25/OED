--- Drops all functions that are being updated to use new views.
drop function IF EXISTS meter_line_readings_unit;
drop function IF EXISTS meter_bar_readings_unit;
drop function IF EXISTS shrink_tsrange_to_meter_readings_by_day;
drop function IF EXISTS meter_3d_readings_unit;
drop function IF EXISTS meter_compare_readings_unit;