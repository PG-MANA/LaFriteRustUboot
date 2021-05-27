OUTPUT_FORMAT(elf64-littleaarch64)
ENTRY(_start)

__ALIGN_SIZE = 0x1000;

SECTIONS {

  . = 0x13000000 + SIZEOF_HEADERS;

  .text : ALIGN(__ALIGN_SIZE) {
    KEEP(*(.text.boot))
    *(.text .text.*)
  }

  .data : ALIGN(__ALIGN_SIZE) {
    *(.data .data.*)
  }

  .rodata : ALIGN(__ALIGN_SIZE) {
    *(.rodata .rodata.*)
  }

  .bss : ALIGN(__ALIGN_SIZE) {
    *(.bss .bss.*)
  }

  .got : ALIGN(__ALIGN_SIZE) {
    *(.got .got.*)
  }
}
