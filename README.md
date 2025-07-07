# 🎬 AutoFFmpeg  
> *Simple, effective, and ready to burn (your subtitles).*

[![Telegram](https://github.com/BLUEGAMINGID/AutoFFmpeg/blob/main/telegram.svg)](https://t.me/DANZMOVIES)
[![License](https://img.shields.io/github/license/BLUEGAMINGID/AutoFFmpeg?style=for-the-badge)](LICENSE)
[![Built for Termux](https://img.shields.io/badge/Built%20for-Termux-black?style=for-the-badge&logo=android)](https://termux.dev)
[![Powered by FFmpeg](https://img.shields.io/badge/Powered%20by-FFmpeg-lightgrey?style=for-the-badge&logo=ffmpeg)](https://ffmpeg.org)

---

## 📘 Overview

**AutoFFmpeg** is a lightweight shell script built to streamline the process of working with **FFmpeg**, particularly for **burning subtitles into video files**.  
This tool is intended to assist users — especially Termux or Ubuntu-on-Android users — who want to automate video processing without memorizing complex FFmpeg commands.

Whether you're managing subtitles for local playback or preparing media for release, AutoFFmpeg simplifies the task.

---

## ✅ Features

- 🔥 Burn subtitles directly into video files
- ⚡ Fast, automated workflow
- 🧩 Minimal dependencies (pure shell script)
- 📦 Compatible with Termux and Ubuntu
- 📂 Built-in support for accessing `/sdcard` storage

---

## 🧪 Installation (Termux)

Follow these steps to get started:

```bash
# 1. Update your packages
apt-get update && apt-get upgrade -y

# 2. Install Git
apt-get install git

# 3. Clone the repository
git clone https://github.com/BLUEGAMINGID/AutoFFmpeg

# 4. Navigate into the project
cd AutoFFmpeg

# 5. Grant storage access (if not already done)
termux-setup-storage

# 6. Start the script
sh gco.sh
```
---

## ⚠️ Compatibility

- 🖥️ **Primarily designed for Ubuntu running inside Termux** (Android).
- 🧪 **May also work** on other Linux distributions with minor adjustments.
- 📄 **File naming tips**: Use clean file names without spaces or special characters for best results.

---

## 💬 Community & Support

Need help, want to contribute, or just curious?

📌 **Join the Telegram community:**  
👉 [t.me/DANZMOVIES](https://t.me/DANZMOVIES)

---

## 📄 License

This project is licensed under the **MIT License**, meaning you are free to use, modify, and distribute it with proper credit.

> Please use it responsibly and avoid reselling the project for commercial purposes.

---

## 🌟 Final Note

**AutoFFmpeg** was built with one main goal:  
To save time and reduce complexity when working with FFmpeg — especially for subtitle burn-in tasks.

> It's a simple tool, but sometimes, simple is exactly what you need.

---
> Tip: Make sure your video and subtitle files are placed somewhere accessible, like your /sdcard directory.
