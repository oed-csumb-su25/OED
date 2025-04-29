/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

const { log } = require('../log');

const { getConnection } = require('../db');
const Reading = require('../models/Reading');


/*
 * This function is changed from refreshing hourly and daily readings
 * views in parallel using Promise.all() into one by one because
 * daily readings calculation depends on hourly readings.
*/

async function refreshAllReadingViews() {
	const conn = getConnection();

	// Refresh hourly readings view

	log.info('Refreshing Materialized Hourly Reading Views');
	await Reading.refreshHourlyReadings(conn);
	log.info('Materialized Hourly View Refreshed');

	// Refresh daily readings view

	log.info('Refreshing Materialized Daily Reading Views');
	await Reading.refreshDailyReadings(conn);
	log.info('Daily View Refreshed');
}


module.exports = { refreshAllReadingViews };
