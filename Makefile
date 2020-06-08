#Makefile generated by amake
#On Mon Jun  8 10:41:00 2020
#To print amake help use 'amake --help'.
CC=gcc
CPPC=g++
LINK=g++
SRCDIR=src
OBJDIR=obj
FLAGS=-g -Wall -std=c++11 -pthread -fPIC -shared 
LIBS=
OBJS=$(OBJDIR)/overlay_params.o $(OBJDIR)/overlay.o $(OBJDIR)/hash_table.o $(OBJDIR)/u_atomic.o $(OBJDIR)/u_math.o $(OBJDIR)/ralloc.o $(OBJDIR)/u_debug.o $(OBJDIR)/vk_enum_to_str.o $(OBJDIR)/debug.o $(OBJDIR)/imgui_draw.o $(OBJDIR)/os_misc.o $(OBJDIR)/os_socket.o $(OBJDIR)/os_time.o $(OBJDIR)/imgui.o $(OBJDIR)/bitscan.o $(OBJDIR)/u_cpu_detect.o $(OBJDIR)/vk_util.o $(OBJDIR)/imgui_widgets.o 
EXEC=vkdto.so
DATE=$(shell date +"%Y-%m-%d")

$(EXEC) : $(OBJS)
	$(LINK) $(OBJS) -o $(EXEC) $(FLAGS) $(LIBS)

$(OBJDIR)/overlay_params.o: src/overlay_params.c src/overlay_params.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/overlay_params.c -c -o $@

$(OBJDIR)/overlay.o: src/overlay.cpp src/imgui.h src/imconfig.h \
 src/overlay_params.h src/debug.h src/hash_table.h src/c99_compat.h \
 src/no_extern_c.h src/macros.h src/c11_compat.h src/list.h src/ralloc.h \
 src/os_time.h src/os_socket.h src/simple_mtx.h src/futex.h src/threads.h \
 src/threads_posix.h src/vk_enum_to_str.h src/vk_util.h \
 src/overlay.vert.spv.h src/overlay.frag.spv.h $(OBJDIR)/__setup_obj_dir
	$(CPPC) $(FLAGS) src/overlay.cpp -c -o $@

$(OBJDIR)/hash_table.o: src/hash_table.c src/hash_table.h src/c99_compat.h \
 src/no_extern_c.h src/macros.h src/c11_compat.h src/ralloc.h \
 src/u_memory.h src/u_debug.h src/os_misc.h src/detect_os.h \
 src/os_memory.h src/os_memory_stdc.h src/os_memory_aligned.h \
 src/fast_urem_by_const.h src/xxhash.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/hash_table.c -c -o $@

$(OBJDIR)/u_atomic.o: src/u_atomic.c $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/u_atomic.c -c -o $@

$(OBJDIR)/u_math.o: src/u_math.c src/p_config.h src/u_endian.h src/detect_os.h \
 src/u_math.h src/c99_math.h src/c99_compat.h src/no_extern_c.h \
 src/bitscan.h src/u_cpu_detect.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/u_math.c -c -o $@

$(OBJDIR)/ralloc.o: src/ralloc.c src/ralloc.h src/macros.h src/c99_compat.h \
 src/no_extern_c.h src/c11_compat.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/ralloc.c -c -o $@

$(OBJDIR)/u_debug.o: src/u_debug.c src/p_config.h src/u_endian.h src/detect_os.h \
 src/u_debug.h src/os_misc.h src/macros.h src/c99_compat.h \
 src/no_extern_c.h src/c11_compat.h src/p_format.h src/p_state.h \
 src/p_compiler.h src/p_defines.h src/u_string.h src/u_math.h \
 src/c99_math.h src/bitscan.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/u_debug.c -c -o $@

$(OBJDIR)/vk_enum_to_str.o: src/vk_enum_to_str.c src/macros.h src/c99_compat.h \
 src/no_extern_c.h src/c11_compat.h src/vk_enum_to_str.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/vk_enum_to_str.c -c -o $@

$(OBJDIR)/debug.o: src/debug.c src/debug.h src/u_string.h src/macros.h \
 src/c99_compat.h src/no_extern_c.h src/c11_compat.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/debug.c -c -o $@

$(OBJDIR)/imgui_draw.o: src/imgui_draw.cpp src/imgui.h src/imconfig.h \
 src/imgui_internal.h src/imstb_textedit.h src/imstb_rectpack.h \
 src/imstb_truetype.h $(OBJDIR)/__setup_obj_dir
	$(CPPC) $(FLAGS) src/imgui_draw.cpp -c -o $@

$(OBJDIR)/os_misc.o: src/os_misc.c src/os_misc.h src/detect_os.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/os_misc.c -c -o $@

$(OBJDIR)/os_socket.o: src/os_socket.c src/os_socket.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/os_socket.c -c -o $@

$(OBJDIR)/os_time.o: src/os_time.c src/os_time.h src/detect_os.h src/u_atomic.h \
 src/no_extern_c.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/os_time.c -c -o $@

$(OBJDIR)/imgui.o: src/imgui.cpp src/imgui.h src/imconfig.h src/imgui_internal.h \
 src/imstb_textedit.h $(OBJDIR)/__setup_obj_dir
	$(CPPC) $(FLAGS) src/imgui.cpp -c -o $@

$(OBJDIR)/bitscan.o: src/bitscan.c src/bitscan.h src/c99_compat.h src/no_extern_c.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/bitscan.c -c -o $@

$(OBJDIR)/u_cpu_detect.o: src/u_cpu_detect.c src/p_config.h src/u_endian.h \
 src/detect_os.h src/p_compiler.h src/c99_compat.h src/no_extern_c.h \
 src/macros.h src/c11_compat.h src/u_debug.h src/os_misc.h \
 src/u_cpu_detect.h src/threads.h src/threads_posix.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/u_cpu_detect.c -c -o $@

$(OBJDIR)/vk_util.o: src/vk_util.c src/vk_util.h $(OBJDIR)/__setup_obj_dir
	$(CC) $(FLAGS) src/vk_util.c -c -o $@

$(OBJDIR)/imgui_widgets.o: src/imgui_widgets.cpp src/imgui.h src/imconfig.h \
 src/imgui_internal.h src/imstb_textedit.h $(OBJDIR)/__setup_obj_dir
	$(CPPC) $(FLAGS) src/imgui_widgets.cpp -c -o $@

$(OBJDIR)/__setup_obj_dir :
	mkdir -p $(OBJDIR)
	touch $(OBJDIR)/__setup_obj_dir

.PHONY: clean bzip release

clean :
	rm -rf $(OBJDIR)/*.o
	rm -rf $(EXEC)

bzip :
	tar -cvf "$(DATE).$(EXEC).tar" $(SRCDIR)/* Makefile
	bzip2 "$(DATE).$(EXEC).tar"

release : FLAGS +=-O3 -D_RELEASE
release : $(EXEC)

