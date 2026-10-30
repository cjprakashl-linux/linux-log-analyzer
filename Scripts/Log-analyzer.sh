#!/bin/bash

LOGFILE="/var/log/messages"

echo "========================================"
echo "             LOG ANALYZER"
echo "========================================"

echo ""
echo "Date: $(date)"
echo ""

echo "ERROR COUNT:"
grep -i error "$LOGFILE" | wc -l

echo ""
echo "WARNING COUNT:"
grep -i warning "$LOGFILE" | wc -l

echo ""
echo "CRITICAL COUNT:"
grep -i critical "$LOGFILE" | wc -l

echo ""
