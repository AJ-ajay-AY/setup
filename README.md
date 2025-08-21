
# Dev MacBook Setup
Untested - Just reviewed - Accepting contributions

This project provides a modular script to fully automate the setup of a developer's macOS environment from a single command. It installs specified software via Homebrew and deploys personalized shell configurations, dotfiles, and SSH keys from this repository.


# Installation

```shell
git clone https://github.com/AJ-ajay-AY/setup.git && cd setup && chmod +x setup.sh && ./setup.sh
```



# Repo Structure and Explanation

mac-setup/
├── setup.sh                 # MODIFIED - The main script you'll run
|
├── modules/
│   ├── 1_homebrew.sh        # MODIFIED - Oh My Zsh install removed
│   ├── 2_applications.sh    # No changes
│   ├── 3_languages.sh       # No changes
│   ├── 4_ssh.sh             # No changes
│   ├── 5_zsh_config.sh      # NEW - Installs Oh My Zsh, theme, and plugins
│   └── 6_dotfiles.sh        # RENAMED from 5_dotfiles.sh
|
├── config/
│   ├── zshrc                # MODIFIED - Theme and plugins added
│   ├── bashrc               # No changes
│   └── hosts_additions      # No changes
|
└── README.md                # MODIFIED - Reference link added


# 💻 My macOS Setup Script

This repository contains a set of scripts to automate the setup of a new macOS machine for development. It installs applications, development tools, and configures the Zsh shell with Powerlevel10k.

---

## ⚠️ Before You Start

This script is personalized for my workflow. It will install specific applications and overwrite existing configuration files (like `.zshrc`) or just use mine that I have added for now.

**It is strongly recommended that you fork this repository and customize the scripts to fit your own needs.**

* Review and edit the packages in `modules/1_homebrew.sh` and `modules/2_applications.sh`.
* Customize your shell configuration in `config/zshrc`.

---

## 🚀 Quick Start (One-Liner)

To run the setup, open your terminal, copy the entire command below, and press Enter.

```bash
git clone [https://github.com/AJ-ajay-AY/setup.git](https://github.com/AJ-ajay-AY/setup.git) && cd setup/macBook_setup && chmod +x setup.sh && ./setup.sh