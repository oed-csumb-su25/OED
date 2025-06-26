/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

const { log } = require('../log');

const { getConnection } = require('../db');
const Group = require('../models/Group');



async function refreshGroupsDeepMetersView() {
    const conn = getConnection();

    log.info('Refreshing Materialized Groups Deep Meters View');
    await Group.refreshGroupsDeepMetersView(conn);
    log.info('Materialized Groups Deep Meters View Refreshed');
}

module.exports = { refreshGroupsDeepMetersView };