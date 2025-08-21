# 🤝 Contributing to macOS Setup Script

Thank you for your interest in contributing! We welcome improvements, bug fixes, and suggestions. Following these guidelines helps to communicate that you respect the time of the developers managing and developing this open-source project.

---

## 📜 Code of Conduct

This project and everyone participating in it is governed by a simple code of conduct: be respectful. We are all here to learn and build something useful together. Harassment, trolling, or insulting comments will not be tolerated.

---

## 🤔 How Can I Contribute?

### 🐞 Reporting Bugs or Suggesting Enhancements

If you find a bug or have an idea for a new feature, please **open an issue** on GitHub.

Before creating an issue, please check the existing issues to see if your problem or idea has already been discussed. When you create an issue, please provide a clear title and a detailed description of the problem or your suggestion.

### ✨ Submitting Changes (Pull Requests)

If you'd like to contribute code, you can do so through a Pull Request (PR).

1.  **Fork the Repository:** Start by forking the project to your own GitHub account.

2.  **Create a Branch:** Create a new branch from `main` for your changes. Please use a descriptive name.
    ```bash
    git checkout -b feature/add-new-cli-tool
    ```

3.  **Make Your Changes:**
    * **Keep it Modular:** Add new logic to the appropriate module file in the `modules/` directory.
    * **Add Comments:** If you are adding complex logic, please add comments to explain what it does.
    * **Idempotency:** Ensure your script changes are "idempotent," meaning they can be run multiple times without causing errors. For example, check if a tool is already installed before trying to install it.

4.  **Test Your Changes:** Run the main `setup.sh` script to ensure that your changes work as expected and haven't introduced any new problems.

5.  **Commit Your Changes:** Write a clear and concise commit message explaining the purpose of your change.
    ```bash
    git commit -m "feat: Add installation for the 'htop' utility"
    ```

6.  **Push to Your Branch:** Push your changes up to your forked repository.
    ```bash
    git push origin feature/add-new-cli-tool
    ```

7.  **Create a Pull Request:** Open a pull request from your branch to the `main` branch of the original repository. Please provide a clear description of the changes you've made.

We will review your PR as soon as possible. Thank you for your contribution!