#!/bin/bash
#
# Script to test generating config file.
#
# Based on a script originally written by maxiaohao in the aws-mock GitHub project,
# to update generated javadoc on the Github pages (gh-pages) of a project :
# https://github.com/treelogic-swe/aws-mock/blob/04746419b409e1689632da53a7ea6063dbe33ef8/.utility/push-javadoc-to-gh-pages.sh
#
# Copyright (C) 2014-2016 Dieter Adriaenssens <ruleant@users.sourceforge.net>
#
# This file is part of buildtimetrend/python-client
# <https://github.com/buildtimetrend/python-client/>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

# set default mode
mode=keen

# set enviroment variable for the analysis result file
export BUILD_TREND_CONFIGFILE=/tmp/config.js
export BUILD_TREND_SAMPLE_CONFIGFILE=dashboard/config_sample.js

# generate trend
./generate_trend.py --mode="$mode"

cat $BUILD_TREND_CONFIGFILE
