import os
import json
import base64
import argparse
from getpass import getpass
from cryptography.fernet import Fernet

VAULT_FILE = "vault.json"
KEY_FILE = "glyphcore.key"
LOCK_FILE = "glyph.lock"

def is_locked():
    return os.path.exists(LOCK_FILE)

def lock_vault():
    with open(LOCK_FILE, 'w') as f:
        f.write("🔒 Vault is locked")
    print("🔒 Vault locked.")

def unlock_vault():
    if os.path.exists(LOCK_FILE):
        os.remove(LOCK_FILE)
        print("🔓 Vault unlocked.")
    else:
        print("⚠️ Vault is already unlocked.")

def load_key():
    if not os.path.exists(KEY_FILE):
        key = Fernet.generate_key()
        with open(KEY_FILE, 'wb') as f:
            f.write(key)
        print("🔐 New encryption key generated.")
    else:
        with open(KEY_FILE, 'rb') as f:
            key = f.read()
    return Fernet(key)

def load_vault():
    if not os.path.exists(VAULT_FILE):
        return {}
    with open(VAULT_FILE, 'r') as f:
        return json.load(f)

def save_vault(vault):
    with open(VAULT_FILE, 'w') as f:
        json.dump(vault, f, indent=2)

def add_entry(service, username, password, fernet):
    vault = load_vault()
    data = f"{username}:{password}"
    encrypted = fernet.encrypt(data.encode()).decode()
    vault[service] = encrypted
    save_vault(vault)
    print(f"✅ Added glyph for {service}")

def get_entry(service, fernet):
    vault = load_vault()
    if service not in vault:
        print(f"❌ No glyph found for {service}")
        return
    decrypted = fernet.decrypt(vault[service].encode()).decode()
    username, password = decrypted.split(":", 1)
    print(f"🔑 {service} login → {username} / {password}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="🔐 GlyphGuard — TrinityAI Password Vault")
    parser.add_argument("--add", metavar="SERVICE", help="Add a new glyph")
    parser.add_argument("--get", metavar="SERVICE", help="Retrieve a glyph")
    parser.add_argument("--lock", action="store_true", help="Lock the vault")
    parser.add_argument("--unlock", action="store_true", help="Unlock the vault")

    args = parser.parse_args()

    if args.lock:
        lock_vault()
        exit(0)
    if args.unlock:
        unlock_vault()
        exit(0)
    if is_locked():
        print("⛔ Vault is locked. Use --unlock to access.")
        exit(1)

    fernet = load_key()

    if args.add:
        username = input("Username: ")
        password = getpass("Password: ")
        add_entry(args.add, username, password, fernet)
    elif args.get:
        get_entry(args.get, fernet)
    else:
        parser.print_help()