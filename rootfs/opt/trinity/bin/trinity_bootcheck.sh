#!/bin/bash

# 📅 Timestamp
NOW=$(date "+%Y-%m-%d %H:%M:%S")

# 📁 Log file path (PI build only)
LOG_FILE="/opt/trinity/logs/bootcheck.log"
mkdir -p /opt/trinity/logs

# 🧠 Begin log
echo "==============================" >> $LOG_FILE
echo "🧠 Trinity Pi Boot Check" >> $LOG_FILE
echo "🕓 Boot Timestamp: $NOW" >> $LOG_FILE

# ✅ Check GlyphGuard
if [ -f /opt/glyphguard/glyphguard.py ]; then
  echo "✅ GlyphGuard present" >> $LOG_FILE
else
  echo "❌ GlyphGuard missing!" >> $LOG_FILE
fi

# 📦 Optional: check vault file
if [ -f /opt/glyphguard/vault.json ]; then
  echo "✅ Vault file found" >> $LOG_FILE
else
  echo "⚠️  No vault file present" >> $LOG_FILE
fi

echo "✅ Boot check complete" >> $LOG_FILE
echo "==============================" >> $LOG_FILE