#!/bin/bash

set -e
set -x

# Install Zig
cd /tmp
rm -rf /tmp/zig
curl https://ziglang.org/builds/zig-linux-x86_64-0.12.0-dev.1802+56deb5b05.tar.xz -O
tar -xf zig-linux-x86_64-0.12.0-dev.1802+56deb5b05.tar.xz
mv zig-linux-x86_64-0.12.0-dev.1802+56deb5b05/ zig/
ln -s /tmp/zig/zig /usr/bin/
