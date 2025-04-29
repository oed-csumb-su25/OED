/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

const { log } = require('../log');

const refreshDailyReadingViews = require('./refreshReadingViews').refreshReadingViews;
const { refreshHourlyReadingViews } = require('./refreshHourlyReadingViews');

/** 
* @deprecated Please use the new refreshAllReadingViews() function
		      where hourly readings are refreshed before daily readings
**/
async function refreshAllReadingViewsOld() {

	log.info('Refreshing All Reading Views...');
	await Promise.all([refreshDailyReadingViews(), refreshHourlyReadingViews()]);
	log.info('...Views Refreshed!');
}

async function refreshAllReadingViews() {

	log.info('Refreshing All Reading Views...');
	await refreshHourlyReadingViews();
	await refreshDailyReadingViews();
	log.info('...Views Refreshed!');
}


module.exports = { refreshAllReadingViews };
module.exports = { refreshAllReadingViewsOld };