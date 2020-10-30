#!/bin/sh

# Sets current-working-directory to parent of executed file
cwd=$(dirname $0)
cd $cwd

# Downloads deno executable to cwd if it does not exist
if [ ! -f "./bin/deno" ]; then
	# DENO_INSTALL needs to be an absolute path since install script changes directory between downloading and unzipping
	curl -fsSL https://deno.land/x/install/install.sh | DENO_INSTALL=$cwd sh
fi

# Runs deno script ininately with executalbe and cache in cwd
DENO_DIR=./ ./bin/deno run https://raw.githubusercontent.com/beeman/deno-examples/master/apps/hello-world.ts
