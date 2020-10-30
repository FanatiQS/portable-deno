# Intro

This is both a Powershell and Bash script that runs a Deno script with the required deno binary and javascript dependencies downloaded to the same directory the executable is placed in. This way, everything is portable.

# Usage

1. Download the repository and unzip it so you have a directory with just `main.ps1` and `main.sh`.
2. Replace the URL after deno run with the URL to your script in both `main.sh` and `main.ps1`.
3. On macOS or Linux, make sure `main.sh` is executable with `chmod +x main.sh`.
4. Run `main.ps1` if you are on windows or `main.sh` if you are on macOS or Linux.
