/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
-- Does not return a value

UPDATE day_segments
    SET day_id = ${day_id},
        start_hour = ${start_hour},
        end_hour = ${end_hour},
        slope = ${slope},
        intercept = ${intercept},
        note = ${note}
    WHERE id = ${id};