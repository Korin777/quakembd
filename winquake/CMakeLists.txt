set(WQ_SRCS
	chase.c
	cmd.c
	common.c
	console.c
	crc.c
	cvar.c
	draw.c
	host.c
	host_cmd.c
	keys.c
	mathlib.c
	menu.c
	model.c
	nonintel.c
	screen.c
	sbar.c
	zone.c
	view.c
	wad.c
	world.c
	cl_demo.c
	cl_input.c
	cl_main.c
	cl_parse.c
	cl_tent.c
	d_edge.c
	d_fill.c
	d_init.c
	d_modech.c
	d_part.c
	d_polyse.c
	d_scan.c
	d_sky.c
	d_sprite.c
	d_surf.c
	d_vars.c
	d_zpoint.c
	net_loop.c
	net_main.c
	net_vcr.c
	pr_cmds.c
	pr_edict.c
	pr_exec.c
	r_aclip.c
	r_alias.c
	r_bsp.c
	r_light.c
	r_draw.c
	r_efrag.c
	r_edge.c
	r_misc.c
	r_main.c
	r_sky.c
	r_sprite.c
	r_surf.c
	r_part.c
	r_vars.c
	sv_main.c
	sv_phys.c
	sv_move.c
	sv_user.c
)

list(APPEND WQ_SRCS net_none.c)

#	set(WQ_ASM_SRCS
#		x86/d_draw.s
#		x86/d_draw16.s
#		x86/d_parta.s
#		x86/d_polysa.s
#		x86/d_scana.s
#		x86/d_spr8.s
#		x86/d_varsa.s
#		x86/math.s
#		x86/r_aliasa.s
#		x86/r_drawa.s
#		x86/r_edgea.s
#		x86/r_varsa.s
#		x86/surf16.s
#		x86/surf8.s
#		x86/worlda.s
#		x86/r_aclipa.s
#	)

add_library(winquake OBJECT ${WQ_SRCS} ${WQ_ASM_SRCS})

target_include_directories(winquake PUBLIC
	${PROJECT_SOURCE_DIR}/winquake
)