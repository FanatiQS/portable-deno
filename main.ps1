# Sets current-working-directory to parent of executed file
Set-Location $PSScriptRoot

# Downloads deno executable to cwd if it does not exist
if (!(Test-Path ./bin/deno.exe)) {
	$env:DENO_INSTALL = "."
	iwr https://deno.land/x/install/install.ps1 -useb | iex
}

# Runs deno script ininately with executalbe and cache in cwd
$env:DENO_DIR = "."
& ./bin/deno run https://raw.githubusercontent.com/FanatiQS/portable-deno/hello_world/hello_world.js
