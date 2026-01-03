### 🛠️ Ansible Ubuntu Workstation Setup

This repository contains a production-grade Ansible project to fully provision and configure an Ubuntu workstation for security engineering, blue teaming, pentesting, and daily development.

Designed to be:
- [x] Idempotent
- [x] ansible-lint clean (production profile)
- [x] Snap-free where possible
- [x] VM & laptop friendly
- [x] Security-focused

```
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
```

Each role is self-contained, lint-clean, and can be executed independently.

### How to Run

1️⃣ Prerequisites
- Ubuntu 22.04 / 24.04
- Python 3
- Ansible
    
```
sudo apt update
sudo apt install -y ansible ansible-lint git
```
2️⃣ Run full setup
```
ansible-playbook -i inventory/local playbooks/site.yml --ask-become-pass
```

3️⃣ Dry run (recommended)
```
ansible-playbook -i inventory/local playbooks/site.yml --check
```

🧩 Roles Overview

🧱 base
- System updates
- Timezone & locale
- Core OS defaults
- Canonical modules only
- Lint-clean production profile

🌐 browser

- Firefox ESR (official Mozilla tarball)
- Snap Firefox fully removed
- Enterprise policies enabled
- Forced extensions:
  - uBlock Origin
  - FoxyProxy
  - Multi-Account Containers

🔐 burp
- Installs NSS tools
- Automatically imports Burp CA
- Detects Firefox profile
- ESR-compatible
- Safe idempotent cert handling

🧠 nvim
- Neovim with Lua configuration
- Lazy.nvim plugin manager
- Treesitter, LSP, Telescope, Harpoon
- Fully reproducible setup

🖥️ i3
- i3 window manager
- i3status + rofi
- VPN-aware status bar (HTB-ready)
- Custom configs deployed to ~/.config

⌨️ terminal
- GNOME Terminal (default profile only)
- Ubuntu / Yaru-style colors
- Custom font size
- Disabled bell & menubar
- No fragile profile hacks

🧵 tmux
- Ubuntu-style tmux status bar
- Clean, readable layout
- No plugin dependency
- Works in VM & bare metal

🧾 dotfiles
- Bash / Zsh / X / i3 compatible
- Dotfiles stored without leading dots (Ansible best practice)
- Correct ownership & permissions
- Safe to re-run

🖼️ pictures
- Wallpapers & assets
- Copied to ~/Pictures
- Desktop-ready out of the box

🧪 security-tools

Blue team
- Suricata
- Fail2ban
- Auditd

Pentesting
- Burp
- Hydra
- Gobuster
- Nikto
- SQLMap

Malware / analysis
- YARA
- Binwalk
- ExifTool

🧼 Code Quality
This repository is fully lint-clean:
```
ansible-lint
# ✔ Passed: 0 failure(s), 0 warning(s)
# ✔ Profile: production
```


📌 Tested On
- Ubuntu 24.04 (VM & bare metal)
- GNOME + i3
- Firefox ESR (Mozilla tarball)

📜 License
- MIT — use, fork, adapt.
