
# Dev MacBook Setup
Untested - Just reviewed - Accepting contributions

This project provides a modular script to fully automate the setup of a developer's macOS environment from a single command. It installs specified software via Homebrew and deploys personalized shell configurations, dotfiles, and SSH keys from this repository.


# Installation

```shell
git clone https://github.com/AJ-ajay-AY/setup.git && cd setup/macBook_setup && chmod +x setup.sh && ./setup.sh
```



# Repo Structure and Explanation

<img width="615" height="350" alt="Screenshot 2025-08-21 at 12 49 08 PM" src="https://github.com/user-attachments/assets/39cc99f7-9628-4867-8fce-daf69fa38f7f" />



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
