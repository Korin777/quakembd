set(USE_METAL_API ON)

add_executable(quakembd
	main.c
	display.c
	../../fio/fio_posix.c
)



target_link_libraries(quakembd
	winquake
	port
	m
)