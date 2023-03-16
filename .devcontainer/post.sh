#!/bin/bash

npm install -g http-server
sudo apt-get update
sudo apt-get install wabt
sudo dotnet workload install wasm-tools
curl https://get.wasmer.io -sSfL | sh
curl https://raw.githubusercontent.com/wasienv/wasienv/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/wapc/cli/master/install/install.sh | /bin/bash
curl -fsSL https://deno.land/install.sh | sh