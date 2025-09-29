const database = require('../../models/database');
const sqlFile = database.sqlFile;

module.exports = {
    fromVersion: '2.0.0',
    toVersion: '3.0.0',
    up: async db => {
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/cik/alter_cik_table.sql'));
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/readings/drop_old_functions.sql'));
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/readings/drop_old_views.sql'));
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/readings/create_reading_views.sql'));
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/readings/create_function_get_3d_readings.sql'));
        await db.none(sqlFile('../migrations/2.0.0-3.0.0/sql/readings/create_function_get_compare_readings.sql'));
    }
};