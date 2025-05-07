#!/usr/bin/env python3

import os
import time
import subprocess
from datetime import datetime

VAULT_FILE = os.path.abspath("vault.json")

LOCK_CMD = ["python3", "/opt/trinity/glyphguard/glyphguard.py", "--lock"]
LOCK_FILE = os.path.abspath("glyph.lock")
LOG_FILE = os.path.abspath("glyphguard_watchdog.log")

IDLE_TIMEOUT = 90  # seconds

def log(msg):
    os.makedirs(os.path.dirname(LOG_FILE), exist_ok=True)
    with open(LOG_FILE, 'a') as logf:
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        logf.write(f"[{timestamp}] {msg}\n")

def has_sudo():
    return os.geteuid() == 0

def lock_vault():
    try:
        subprocess.run(LOCK_CMD, check=True)
        log("🔒 Vault auto-locked due to inactivity.")
    except Exception as e:
        log(f"⚠️ Failed to lock vault: {e}")

def main():
    if not has_sudo():
        log("⛔ Insufficient privileges. Must run as root.")
        return

    log("🛡 GlyphGuard Watchdog Daemon Activated (Self-Healing Enabled, Logging Active)...")

    last_mtime = None
    idle_time = 0

    while True:
        try:
            mtime = os.path.getmtime(VAULT_FILE)
            if last_mtime is None:
                last_mtime = mtime

            if mtime != last_mtime:
                idle_time = 0
                last_mtime = mtime
                log("📥 Vault activity detected, timer reset.")

            elif not os.path.exists(LOCK_FILE):
                idle_time += 5
                if idle_time >= IDLE_TIMEOUT:
                    lock_vault()
                    idle_time = 0

            time.sleep(5)
        except Exception as e:
            log(f"❌ Watchdog encountered an error: {e}")
            time.sleep(10)

if __name__ == "__main__":
    main()
