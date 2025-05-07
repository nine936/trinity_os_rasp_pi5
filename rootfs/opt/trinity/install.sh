#!/bin/bash
set -e

echo "✨ [TrinityOS] Resurrection Ritual: Begin"

# ─────────────────────────────────────────────────────────────
# SECTION: System Identity
# ─────────────────────────────────────────────────────────────
echo "🔧 Setting hostname to 'trinityos'"
echo "trinityos" > /etc/hostname
echo "127.0.1.1 trinityos" >> /etc/hosts

# ─────────────────────────────────────────────────────────────
# SECTION: Locale & Timezone
# ─────────────────────────────────────────────────────────────
echo "🌐 Configuring locale and timezone"
apt update && apt install -y locales tzdata
sed -i 's/^# *en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
update-locale LANG=en_US.UTF-8
ln -sf /usr/share/zoneinfo/UTC /etc/localtime

# ─────────────────────────────────────────────────────────────
# SECTION: User Setup
# ─────────────────────────────────────────────────────────────
echo "👤 Creating user: trinity"
useradd -m -s /bin/bash trinity
echo "trinity:trinity" | chpasswd
usermod -aG sudo trinity

# ─────────────────────────────────────────────────────────────
# SECTION: Autologin (optional)
# ─────────────────────────────────────────────────────────────
echo "🧞 Enabling autologin for user: trinity"
mkdir -p /etc/systemd/system/getty@tty1.service.d
cat <<EOF > /etc/systemd/system/getty@tty1.service.d/override.conf
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin trinity --noclear %I \$TERM
EOF

# ─────────────────────────────────────────────────────────────
# SECTION: Welcome Image (Optional)
# ─────────────────────────────────────────────────────────────
if [ -f /opt/trinity/welcome.jpg ]; then
  echo "🌄 Displaying welcome image on boot"
  apt install -y fbi
  cat <<EOF > /etc/systemd/system/trinity-welcome.service
[Unit]
Description=Trinity Welcome Screen
After=local-fs.target

[Service]
ExecStart=/usr/bin/fbi -T 1 --noverbose -a /opt/trinity/welcome.jpg
StandardInput=tty
StandardOutput=tty
Restart=no

[Install]
WantedBy=multi-user.target
EOF
  systemctl enable trinity-welcome.service
fi

# ─────────────────────────────────────────────────────────────
# SECTION: Cleanup and Lock-in
# ─────────────────────────────────────────────────────────────
touch /root/.trinity_installed
echo "🌌 TrinityOS Resurrection Complete"

# Self-destruct this script after first run (optional)
rm -f /etc/rc.local
