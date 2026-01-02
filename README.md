🛠️ Ansible Ubuntu Workstation Setup

This repository contains a production-grade Ansible project to fully provision and configure an Ubuntu workstation for security engineering, blue teaming, pentesting, and daily development.

It is designed to be:

✅ Idempotent

✅ ansible-lint clean (production profile)

✅ Snap-free where possible

✅ VM & laptop friendly

✅ Security-focused

📁 Project Structure
ansible-ubuntu/
├── ansible.cfg
├── inventory/
│   └── local
├── playbooks/
│   └── site.yml
├── roles/
│   ├── base/
│   ├── browser/
│   ├── burp/
│   ├── dotfiles/
│   ├── i3/
│   ├── nvim/
│   ├── packages/
│   ├── pictures/
│   ├── security-tools/
│   ├── terminal/
│   └── tmux/
└── README.md


Each role is self-contained, lint-clean, and can be run independently.

🚀 How to Run
1️⃣ Prerequisites

Ubuntu 22.04+ / 24.04

Python 3

Ansible installed

sudo apt update
sudo apt install -y ansible ansible-lint git

2️⃣ Run full setup
ansible-playbook -i inventory/local playbooks/site.yml --ask-become-pass

3️⃣ Dry run (recommended)
ansible-playbook -i inventory/local playbooks/site.yml --check

🧩 Roles Overview
🧱 base

System updates

Timezone & locale

Core OS defaults

Canonical modules only

🌐 browser

Firefox ESR (official Mozilla tarball)

Snap Firefox removed

Enterprise policies enabled

Forced extensions:

uBlock Origin

FoxyProxy

Containers

Policy-driven configuration (no user clicks)

🔐 burp

Installs NSS tools

Automatically imports Burp CA

Detects Firefox profile

ESR-compatible

🧠 nvim

Neovim with Lua config

Lazy.nvim plugin manager

Treesitter, LSP, Telescope, Harpoon

Fully reproducible setup

🖥️ i3

i3 window manager

i3status + rofi

VPN-aware status bar (HTB-ready)

Custom configs deployed to ~/.config

⌨️ terminal

GNOME Terminal (default profile)

Ubuntu/Yaru color palette

Custom font

Disabled bell & menubar

No custom profile hacks

🧵 tmux

Ubuntu-style tmux bar

Clean status line

No plugins required

🧾 dotfiles

Bash / Zsh / X / i3 compatible

Dotfiles stored without dots (Ansible best practice)

Clean copy & ownership handling

🖼️ pictures

Wallpapers & assets

Copied to ~/Pictures

🧪 security-tools

Blue team:

Suricata

Fail2ban

Auditd

Pentest:

Burp

Hydra

Gobuster

Nikto

SQLMap

Malware / analysis:

YARA

Binwalk

ExifTool

🧼 Code Quality

This repository is fully lint-clean:

ansible-lint
# ✔ Passed: 0 failure(s), 0 warning(s)
# ✔ Profile: production


Practices used:

FQCN everywhere

No free-form modules

No risky shell usage

Schema-correct YAML

Idempotent tasks

🔒 Security Notes

Firefox is snap-proof

Enterprise policies enforce extensions

Burp CA imported safely

No secrets stored in repo

User-level configs separated from root configs

🧠 Design Philosophy

This project favors:

Explicit over magic

Policies over clicks

Reproducibility over convenience

Linting over “works on my machine”

📌 Tested On

Ubuntu 24.04 (VM & bare metal)

GNOME + i3

Firefox ESR (Mozilla tarball)

📜 License

MIT — use, fork, adapt.
