# Sets current-working-directory to parent of executed file
Set-Location $PSScriptRoot

# Updates script url if argument exists
if ($args[0]) {
	((Get-Content 'main.ps1' -Raw) -replace "(./bin/deno run )(.*)$", "`$1$args") | Set-Content -NoNewline 'main2.ps1'
	((Get-Content 'main' -Raw) -replace "(./bin/deno run )(.*)$", "`$1$args") | Set-Content -NoNewline 'main'
	exit
}

# Downloads deno executable to cwd if it does not exist
if (!(Test-Path ./bin/deno.exe)) {
	$env:DENO_INSTALL = "."
	iwr https://deno.land/x/install/install.ps1 -useb | iex
}

# Runs deno script ininately with executalbe and cache in cwd
$env:DENO_DIR = "."
& ./bin/deno run https://raw.githubusercontent.com/denoland/deno/std/0.76.0/std/examples/welcome.ts
