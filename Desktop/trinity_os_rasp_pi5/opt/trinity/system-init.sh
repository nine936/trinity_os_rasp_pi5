#!/bin/bash
# ===============================================
# Trinity OS Raspberry Pi 5 — System Init Script
# Version: 1.0.0-store
# Location: /opt/trinity/system-init.sh
# Purpose: This script runs once at boot time
# ===============================================

echo "🧬 [TrinityOS] Boot sequence initiated."

# 1. Display system identity
echo "Trinity OS — Raspberry Pi 5 Edition"
echo "Built by nine9 + Trinity. Light & modular."

# 2. Load custom boot splash (optional)
# Uncomment if you have splash.txt
# cat /opt/trinity/splash.txt

# 3. Launch minimal shell UI (if present)
if [ -f /opt/trinity/modules/public_shell/ui.py ]; then
    echo "📟 Launching Trinity Shell UI..."
    python3 /opt/trinity/modules/public_shell/ui.py
fi

# 4. Optional: Launch system voice (if present)
if [ -f /opt/trinity/modules/public_shell/voice.py ]; then
    echo "🔊 Activating voice system..."
    python3 /opt/trinity/modules/public_shell/voice.py &
fi

# 5. Final message
echo "✅ Trinity OS system-init complete."
exit 0
