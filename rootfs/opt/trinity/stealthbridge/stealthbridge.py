#!/usr/bin/env python3

import os
import subprocess
from datetime import datetime

LOG_FILE = "/opt/stealthbridge/logs/stealthbridge.log"

def log(message):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    os.makedirs(os.path.dirname(LOG_FILE), exist_ok=True)
    with open(LOG_FILE, "a") as f:
        f.write(f"[{timestamp}] {message}\n")

def run(cmd):
    try:
        subprocess.run(cmd, shell=True, check=True)
        log(f"✅ Ran: {cmd}")
    except subprocess.CalledProcessError as e:
        log(f"❌ Failed: {cmd}\n{e}")

def setup_namespace():
    log("🔧 Initializing StealthBridge namespace...")

    run("ip netns add stealthns")
    run("ip link add veth0 type veth peer name veth1")
    run("ip link set veth1 netns stealthns")
    run("ip addr add 10.200.1.1/24 dev veth0")
    run("ip link set veth0 up")

    run("ip netns exec stealthns ip addr add 10.200.1.2/24 dev veth1")
    run("ip netns exec stealthns ip link set veth1 up")
    run("ip netns exec stealthns ip link set lo up")

    run("iptables -t nat -A POSTROUTING -s 10.200.1.0/24 -o eth0 -j MASQUERADE")
    run("echo 1 > /proc/sys/net/ipv4/ip_forward")
    run("ip netns exec stealthns ip route add default via 10.200.1.1")

    log("🌉 StealthBridge namespace and virtual network setup complete.")

if __name__ == "__main__":
    setup_namespace()