#!/bin/bash

LOG_DIR="/home/surojit/Downloads/logs"
REPORT_FILE="/home/surojit/Downloads/logs/log_analysis_report.txt"
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")

echo "analysing log file" >> "$REPORT_FILE"
echo "==================" >> "$REPORT_FILE"

echo -e "\n list of log files updated in last 15 days" >> "$REPORT_FILE"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -15)
echo "$LOG_FILES" >> "$REPORT_FILE"

for LOG_FILE  in $LOG_FILES; do

  # Loop through each log file

  echo -e "\n===================================================" >> "$REPORT_FILE"
  echo "============ $LOG_FILE ============" >> "$REPORT_FILE"
  echo "===================================================" >> "$REPORT_FILE"

 # shellcheck disable=SC2068
   for PATTERN in ${ERROR_PATTERNS[@]}; do

   echo -e "\n Search for $PATTERN logs found in $LOG_FILE" >> "$REPORT_FILE"
   grep "$PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

   echo -e "\nNumber of $PATTERN logs found in $LOG_FILE" >> "$REPORT_FILE"
   ERROR_COUNT=$(grep -c "$PATTERN" "$LOG_FILE")

   echo "$ERROR_COUNT" >> "$REPORT_FILE"
   if [ "$ERROR_COUNT" -gt 10 ]; then
      echo -e "\n ⚠️ Action Required: too many $PATTERN errors in log file $LOG_FILE"
      fi

  done
 done
 echo -e "\nLog analysis completed and report save in: $REPORT_FILE"
