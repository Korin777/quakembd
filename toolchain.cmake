set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv)

set(TOOLCHAIN_PREFIX "/opt/riscv/bin/riscv64-unknown-elf-")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_OBJCOPY ${TOOLCHAIN_PREFIX}objcopy)
set(CMAKE_SIZE ${TOOLCHAIN_PREFIX}size)

set(ARCH_FLAGS "-march=rv32i -mabi=ilp32")

set(CMAKE_C_FLAGS "${ARCH_FLAGS} -std=gnu11 -Wall -ffunction-sections -fdata-sections")
set(CMAKE_ASM_FLAGS "${ARCH_FLAGS} -x assembler-with-cpp")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/output.map -Wl,--gc-sections -u _printf_float -u _scanf_float -lm")

set(CMAKE_C_FLAGS_DEBUG "-Og -g")
set(CMAKE_ASM_FLAGS_DEBUG "-g")

set(CMAKE_C_FLAGS_RELEASE "-Os")
set(CMAKE_ASM_FLAGS_RELEASE "")


function(add_embedded_binary TARGET)
	add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND ${CMAKE_OBJCOPY} -O binary ${TARGET} ${TARGET}.bin)
	add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND ${CMAKE_OBJCOPY} -O ihex ${TARGET} ${TARGET}.hex)
	add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND ${CMAKE_SIZE} ${TARGET})
endfunction()
