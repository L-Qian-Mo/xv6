# 1. 连接QEMU
target remote localhost:26000

# 2.先停在bootmain跳转到entry的指令前（call *0x10018）
break *0x7d91  
commands
printf "[BOOT] 准备跳转到entry内核入口\n"
# 这里不写continue，让程序停在这行！
end

# 3. 给entry设硬件断点（等下手动跳过来会停住）
hbreak *0x8010000c  
commands
printf "[ENTRY] kernel entry reached\n"
continue
end

# 4. [BOOT] enter bootmain
break *0x7d49
commands
printf "[BOOT] enter bootmain\n"
continue
end

# 5.[BOOT] elf header loaded
break *0x7d67
commands
printf "[BOOT] elf header loaded\n"
continue
end

# 6.[BOOT] kernel loaded
break *0x7d8f
commands
printf "[BOOT] kernel loaded\n"
continue
end

# 7.[KERNEL] main() started
break main
commands
printf "[KERNEL] main() started\n"
continue
end

# 8. 执行程序（会停在0x7d91）
continue