
bomb:     file format elf64-x86-64

SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000              Scrt1.o
000000000000038c l     O .note.ABI-tag	0000000000000020              __abi_tag
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000013b0 l     F .text	0000000000000000              deregister_tm_clones
00000000000013e0 l     F .text	0000000000000000              register_tm_clones
0000000000001420 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000005aa8 l     O .bss	0000000000000001              completed.0
0000000000004cf8 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000001460 l     F .text	0000000000000000              frame_dummy
0000000000004cf0 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              bomb.c
0000000000000000 l    df *ABS*	0000000000000000              phases.c
0000000000003200 l     O .rodata	0000000000000040              array.0
0000000000000000 l    df *ABS*	0000000000000000              support.c
0000000000001a1c l     F .text	0000000000000062              sig_handler
00000000000064a0 l     O .bss	0000000000000004              grade_bomb
0000000000000000 l    df *ABS*	0000000000000000              driverlib.c
0000000000001f95 l     F .text	00000000000000cc              rio_readlineb
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000003be4 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000004d00 l     O .dynamic	0000000000000000              _DYNAMIC
00000000000035b8 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000004ef0 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000001bbb g     F .text	0000000000000056              skip
0000000000000000       F *UND*	0000000000000000              getenv@GLIBC_2.2.5
0000000000001ea6 g     F .text	00000000000000b9              phase_defused
00000000000055f0 g     O .data	0000000000000018              n31
0000000000000000       F *UND*	0000000000000000              __libc_start_main@GLIBC_2.34
0000000000000000       F *UND*	0000000000000000              __errno_location@GLIBC_2.2.5
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000005a80 g     O .bss	0000000000000008              stdout@GLIBC_2.2.5
0000000000005000  w      .data	0000000000000000              data_start
0000000000005b40 g     O .bss	0000000000000960              input_strings
0000000000000000       F *UND*	0000000000000000              strcpy@GLIBC_2.2.5
00000000000055d0 g     O .data	0000000000000018              n33
0000000000000000       F *UND*	0000000000000000              puts@GLIBC_2.2.5
0000000000005a90 g     O .bss	0000000000000008              stdin@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              write@GLIBC_2.2.5
0000000000005a80 g       .data	0000000000000000              _edata
0000000000005080 g     O .data	0000000000000018              n44
00000000000050e0 g     O .data	0000000000000018              n46
00000000000050a0 g     O .data	0000000000000018              n42
0000000000005100 g     O .data	0000000000000018              n48
0000000000002ab8 g     F .fini	0000000000000000              .hidden _fini
0000000000000000       F *UND*	0000000000000000              strlen@GLIBC_2.2.5
0000000000001b2c g     F .text	0000000000000012              strings_are_equal
0000000000005b38 g     O .bss	0000000000000004              num_input_strings
000000000000182f g     F .text	000000000000004c              phase_5
0000000000001b77 g     F .text	0000000000000005              initialize_bomb_solve
0000000000001b7c g     F .text	000000000000003f              blank_line
0000000000002061 g     F .text	00000000000007dc              submitr
000000000000163a g     F .text	0000000000000161              phase_3
00000000000015c7 g     F .text	0000000000000024              phase_1
0000000000001a7e g     F .text	000000000000002d              invalid_phase
000000000000286d g     F .text	00000000000001cc              init_driver
0000000000000000       F *UND*	0000000000000000              alarm@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              close@GLIBC_2.2.5
0000000000005650 g     O .data	0000000000000010              node3
0000000000000000       F *UND*	0000000000000000              read@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              fgets@GLIBC_2.2.5
0000000000001ce5 g     F .text	000000000000004d              explode_bomb
0000000000005630 g     O .data	0000000000000010              node1
0000000000005000 g       .data	0000000000000000              __data_start
0000000000000000       F *UND*	0000000000000000              strcmp@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              signal@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              gethostbyname@GLIBC_2.2.5
0000000000005670 g     O .data	0000000000000010              node5
0000000000000000       F *UND*	0000000000000000              __memmove_chk@GLIBC_2.3.4
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000000000       F *UND*	0000000000000000              strtol@GLIBC_2.2.5
000000000000197f g     F .text	0000000000000041              fun7
0000000000005008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000003000 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000005590 g     O .data	0000000000000018              n22
0000000000005680 g     O .data	0000000000000400              host_table
000000000000179b g     F .text	000000000000003b              func4
0000000000005550 g     O .data	0000000000000018              n1
0000000000001aab g     F .text	0000000000000021              string_length
0000000000000000       F *UND*	0000000000000000              fflush@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __isoc99_sscanf@GLIBC_2.7
0000000000005610 g     O .data	0000000000000018              n34
00000000000055b0 g     O .data	0000000000000018              n32
00000000000064a8 g       .bss	0000000000000000              _end
0000000000001380 g     F .text	0000000000000026              _start
00000000000019c0 g     F .text	000000000000005c              secret_phase
0000000000005ab0 g     O .bss	0000000000000008              infile
0000000000001f5f g     F .text	0000000000000036              sigalrm_handler
000000000000283d g     F .text	0000000000000030              init_timeout
0000000000005a80 g       .bss	0000000000000000              __bss_start
0000000000005140 g     O .data	0000000000000400              userid
0000000000001469 g     F .text	000000000000015e              main
0000000000000000       F *UND*	0000000000000000              __printf_chk@GLIBC_2.3.4
0000000000005060 g     O .data	0000000000000018              n47
00000000000050c0 g     O .data	0000000000000018              n43
0000000000005040 g     O .data	0000000000000018              n41
0000000000001d77 g     F .text	000000000000012f              read_line
0000000000005020 g     O .data	0000000000000018              n45
0000000000001acc g     F .text	0000000000000060              strings_not_equal
00000000000017d6 g     F .text	0000000000000059              phase_4
0000000000000000       F *UND*	0000000000000000              fopen@GLIBC_2.2.5
000000000000187b g     F .text	0000000000000104              phase_6
0000000000005ac0 g     O .bss	0000000000000078              scratch
0000000000002a39 g     F .text	000000000000007c              driver_post
0000000000001c11 g     F .text	00000000000000d4              send_msg
00000000000015eb g     F .text	000000000000004f              phase_2
0000000000000000       F *UND*	0000000000000000              exit@GLIBC_2.2.5
0000000000005540 g     O .data	0000000000000004              bomb_id
0000000000000000       F *UND*	0000000000000000              connect@GLIBC_2.2.5
0000000000005a80 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000       F *UND*	0000000000000000              __fprintf_chk@GLIBC_2.3.4
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000005640 g     O .data	0000000000000010              node2
0000000000005660 g     O .data	0000000000000010              node4
0000000000000000       F *UND*	0000000000000000              sleep@GLIBC_2.2.5
0000000000005120 g     O .data	0000000000000010              node6
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@GLIBC_2.2.5
0000000000001000 g     F .init	0000000000000000              .hidden _init
0000000000001d32 g     F .text	0000000000000045              read_six_numbers
0000000000005570 g     O .data	0000000000000018              n21
0000000000001b3e g     F .text	0000000000000039              initialize_bomb
0000000000000000       F *UND*	0000000000000000              __ctype_b_loc@GLIBC_2.3
0000000000005aa0 g     O .bss	0000000000000008              stderr@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __sprintf_chk@GLIBC_2.3.4
0000000000000000       F *UND*	0000000000000000              socket@GLIBC_2.2.5


