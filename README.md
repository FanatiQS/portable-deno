# Intro

This is both a Powershell and Bash script that runs a Deno script with the required deno binary and javascript dependencies downloaded to the same directory the executable is placed in. This way, everything is portable.

# Usage

1. Download the repository and unzip it so you have a directory with just `main.ps1` and `main`.
2. Update the scripts to run your deno script, either by manually replacing the URL after `deno run` with your parameters in both `main` and `main.ps1` or by running the executable with your parameters as command line arguments. The parameters are a url or path to your deno script and any required permissions.
3. You might need to make `main` executable on macOS or Linux with `chmod +x main`.
4. Run `main.ps1` if you are on windows or `main` if you are on macOS or Linux.

# External links

* For more info about Deno, visit https://deno.land
* For details about Denos permissions, visit https://deno.land/manual/getting_started/permissions
