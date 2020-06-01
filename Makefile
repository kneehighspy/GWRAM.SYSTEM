all:    ram2e140.po ram2e140.dbg.po

.PHONY: clean

obj:
	@mkdir obj

bin:
	@mkdir bin

ram2e.c:

obj/ram2e.o: obj ram2e.c
	cc65 ram2e.c -O --cpu 6502 -t apple2enh -o obj/ram2e.s
	ca65 obj/ram2e.s -o obj/ram2e.o

obj/ram2e.dbg.o: obj ram2e.c
	cc65 ram2e.c -O --cpu 6502 -t apple2enh -o obj/ram2e.dbg.s -DSKIP_RAM2E_DETECT
	ca65 obj/ram2e.dbg.s -o obj/ram2e.dbg.o

bin/ram2e.sys: bin obj/ram2e.o
	ld65 -o bin/ram2e.sys obj/ram2e.o -C apple2enh-system.cfg --lib apple2enh.lib -D __EXEHDR__=0

bin/ram2e.dbg.sys: bin obj/ram2e.dbg.o
	ld65 -o bin/ram2e.dbg.sys obj/ram2e.dbg.o -C apple2enh-system.cfg --lib apple2enh.lib -D __EXEHDR__=0

ram2e140.po: bin/ram2e.sys
	cp prodos140.po bin/ram2e140.po
	cat bin/ram2e.sys | java -jar ./AppleCommander-ac-1.6.0.jar -p bin/ram2e140.po ram2e.system sys 0x2000

ram2e140.dbg.po: bin/ram2e.dbg.sys
	cp prodos140.po bin/ram2e140.dbg.po
	cat bin/ram2e.dbg.sys | java -jar ./AppleCommander-ac-1.6.0.jar -p bin/ram2e140.dbg.po ram2e.system sys 0x2000

clean:
	rm -fr bin obj
