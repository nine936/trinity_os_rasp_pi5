#!/bin/bash
# 🛡️ TrinityOS: StealthBridge Entry Script
# Launches the internal VPN layer within TrinityOS

LOG_DIR="/opt/trinity/stealthbridge/logs"
SCRIPT="/opt/trinity/stealthbridge/stealthbridge.py"
YAML_CONFIG="/opt/trinity/stealthbridge/stealthbridge.yml"

echo "🛡️  StealthBridge initializing..." | tee -a "$LOG_DIR/stealthbridge.log"

if [ ! -f "$SCRIPT" ]; then
    echo "❌ Error: stealthbridge.py not found!" | tee -a "$LOG_DIR/stealthbridge.log"
    exit 1
fi

if [ ! -f "$YAML_CONFIG" ]; then
    echo "⚠️  Warning: stealthbridge.yml config missing. Proceeding with defaults." | tee -a "$LOG_DIR/stealthbridge.log"
fi

python3 "$SCRIPT" --config "$YAML_CONFIG" 2>&1 | tee -a "$LOG_DIR/stealthbridge.log"
