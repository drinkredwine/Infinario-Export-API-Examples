#!/bin/bash

#
# Example of analysis export API: Get report "30 day revenue by country" from demo account
# Demo report: https://cloud.infinario.com/#/p/infinario-demo-game/analytics/reports/561f58dbbdc8c75e65e3a539
#
# Author: jozo.kovac@infinario.com
#

# From project overview screen
PROJECT=e5e1ec64-cedc-11e4-874e-b083fedeed2e
# From project overview screen
SECRET=62345ac0-a476-4381-b89b-4b52ebfeb7c8
# Analyses: funnel, report, retention, segmentation
ANALYSIS=report
# Open existing analysis and read from URL
ANALYSISID=561f58dbbdc8c75e65e3a538
# Execution time
TIME=1447446145
# Available export formats: 'native-json' (default), 'table-json', 'csv'
FORMAT=native-json

curl  -H "X-Infinario-Secret: $SECRET" \
 -H "Content-Type: application/json" \
 -X POST \
 -d "{\"format\": \"$FORMAT\",\"analysis_id\": \"$ANALYSISID\", \"timezone\": \"UTC\", \"execution_time\": $TIME, \"project_id\": \"$PROJECT\"}" https://api.infinario.com/analytics/report

 
