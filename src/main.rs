#![no_std]
#![no_main]
#![feature(global_asm)]
#![feature(lang_items)]
#![feature(asm)]

#[no_mangle]
fn main() {
    loop {
        unsafe {
            asm!("wfi");
        }
    }
}

#[panic_handler]
#[no_mangle]
pub fn panic(_: &core::panic::PanicInfo) -> ! {
    loop {
        unsafe {
            asm!("wfi");
        }
    }
}

global_asm!(
    "#
.section .text.boot
_start:
    b main
#"
);
