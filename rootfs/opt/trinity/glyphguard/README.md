# 🔐 GlyphGuard — TrinityAI Native Password Manager

**GlyphGuard** is the official in-house password manager and authentication vault for TrinityAI OS. It is designed to function independently from third-party providers and operates entirely within Trinity’s protected domain.

---

## 🧬 Purpose

- Store and retrieve login credentials securely
- Use **glyphs** instead of plain-text passwords
- Perform all encryption/decryption through a custom Glyph Encryption Layer
- Support biometric unlock, gesture unlock, and USB token verification (planned)

---

## 📁 Structure

- `glyphguard.py` — Main logic and interface
- `vault.json` — Encrypted glyph-to-secret mapping
- `glyphcore.key` — Private master key used for local encryption
- `tests/` — All trials, edge case validations, and test cases

---

## 🛡 Security Principles

- No plain text passwords are ever stored
- All secrets are encrypted using Trinity’s private key (stored securely)
- The vault is only accessible to the TrinityAI OS instance

---

## 🔧 Usage (CLI Mode)

```bash
python3 glyphguard.py --add <service> --user <username> --pass <password>
python3 glyphguard.py --get <service>
```

---

## 🔒 Future Features

- Biometric unlock (if hardware supports)
- Mobile bridge pairing for unlock gestures
- Auto-fill into Trinity WebApp Manager

---

**Do not edit this vault manually.** All changes must go through the `glyphguard.py` interface.
