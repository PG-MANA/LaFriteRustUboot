#!/bin/sh

mkdir -p bin
cargo build --release
mv target/aarch64-unknown-none-softfloat/release/la_frite_rust_uboot bin/kernel.elf
mkimage -A arm -T script -C none -e 0 -a 0 -d config/aarch64/boot.txt bin/boot.scr

