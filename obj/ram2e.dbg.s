;
; File generated by cc65 v 2.18 - Git N/A
;
	.fopt		compiler,"cc65 v 2.18 - Git N/A"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_get_ostype
	.import		_clrscr
	.import		_gotoxy
	.import		_cputs
	.import		_cgetc
	.import		_printf
	.import		_putchar
	.import		_toupper
	.export		_SPIN_HALFCYCLES
	.export		_SPIN_FRAMESPERCHAR
	.export		__cmd
	.export		__arg
	.export		__detect
	.export		__rwsize
	.export		_main

.segment	"RODATA"

_SPIN_HALFCYCLES:
	.byte	$03
_SPIN_FRAMESPERCHAR:
	.byte	$04
L0159:
	.byte	$6E,$6F,$6E,$76,$6F,$6C,$61,$74,$69,$6C,$65,$20,$6D,$65,$6D,$6F
	.byte	$72,$79,$2C,$20,$70,$72,$65,$73,$73,$20,$41,$70,$70,$6C,$65,$2B
	.byte	$6E,$75,$6D,$62,$65,$72,$2E,$00
L014D:
	.byte	$43,$61,$70,$61,$63,$69,$74,$79,$20,$77,$69,$6C,$6C,$20,$62,$65
	.byte	$20,$73,$61,$76,$65,$64,$20,$75,$6E,$74,$69,$6C,$20,$70,$6F,$77
	.byte	$65,$72,$2D,$6F,$66,$66,$2E,$00
L01BD:
	.byte	$20,$54,$48,$49,$53,$20,$50,$52,$4F,$47,$52,$41,$4D,$20,$52,$45
	.byte	$51,$55,$49,$52,$45,$53,$20,$41,$4E,$20,$41,$50,$50,$4C,$45,$20
	.byte	$49,$49,$45,$2E,$00
L022B:
	.byte	$52,$41,$4D,$32,$45,$20,$63,$61,$70,$61,$63,$69,$74,$79,$20,$73
	.byte	$61,$76,$65,$64,$20,$73,$75,$63,$63,$65,$73,$73,$66,$75,$6C,$6C
	.byte	$79,$2E,$00
L023E:
	.byte	$59,$6F,$75,$20,$6D,$61,$79,$20,$61,$6C,$73,$6F,$20,$74,$75,$72
	.byte	$6E,$20,$6F,$66,$66,$20,$79,$6F,$75,$72,$20,$41,$70,$70,$6C,$65
	.byte	$2E,$00
L015F:
	.byte	$50,$72,$65,$73,$73,$20,$5B,$51,$5D,$20,$74,$6F,$20,$71,$75,$69
	.byte	$74,$20,$77,$69,$74,$68,$6F,$75,$74,$20,$73,$61,$76,$69,$6E,$67
	.byte	$2E,$00
L0232:
	.byte	$52,$41,$4D,$32,$45,$20,$63,$61,$70,$61,$63,$69,$74,$79,$20,$73
	.byte	$65,$74,$20,$73,$75,$63,$63,$65,$73,$73,$66,$75,$6C,$6C,$79,$2E
	.byte	$00
L0129:
	.byte	$53,$65,$6C,$65,$63,$74,$20,$64,$65,$73,$69,$72,$65,$64,$20,$6D
	.byte	$65,$6D,$6F,$72,$79,$20,$63,$61,$70,$61,$63,$69,$74,$79,$3A,$00
L0153:
	.byte	$54,$6F,$20,$72,$65,$6D,$65,$6D,$62,$65,$72,$20,$63,$61,$70,$61
	.byte	$63,$69,$74,$79,$20,$73,$65,$74,$74,$69,$6E,$67,$20,$69,$6E,$00
L0219:
	.byte	$53,$61,$76,$69,$6E,$67,$20,$52,$41,$4D,$32,$45,$20,$63,$61,$70
	.byte	$61,$63,$69,$74,$79,$20,$73,$65,$74,$74,$69,$6E,$67,$2E,$00
L0122:
	.byte	$43,$75,$72,$72,$65,$6E,$74,$20,$52,$41,$4D,$32,$45,$20,$63,$61
	.byte	$70,$61,$63,$69,$74,$79,$3A,$20,$25,$64,$20,$6B,$42,$00
L011C:
	.byte	$2D,$2D,$20,$52,$41,$4D,$32,$45,$20,$43,$61,$70,$61,$63,$69,$74
	.byte	$79,$20,$53,$65,$74,$74,$69,$6E,$67,$73,$20,$2D,$2D,$00
L021F:
	.byte	$44,$6F,$20,$6E,$6F,$74,$20,$74,$75,$72,$6E,$20,$6F,$66,$66,$20
	.byte	$79,$6F,$75,$72,$20,$41,$70,$70,$6C,$65,$2E,$00
L01D5:
	.byte	$20,$50,$72,$65,$73,$73,$20,$61,$6E,$79,$20,$6B,$65,$79,$20,$74
	.byte	$6F,$20,$71,$75,$69,$74,$2E,$00
L01C3:
	.byte	$20,$50,$52,$45,$53,$53,$20,$41,$4E,$59,$20,$4B,$45,$59,$20,$54
	.byte	$4F,$20,$51,$55,$49,$54,$2E,$00
L01CF:
	.byte	$20,$4E,$6F,$20,$52,$41,$4D,$32,$45,$20,$49,$49,$20,$64,$65,$74
	.byte	$65,$63,$74,$65,$64,$2E,$00
L0238	:=	L01D5+1
L0135:
	.byte	$32,$2E,$20,$35,$31,$32,$20,$6B,$69,$6C,$6F,$62,$79,$74,$65,$73
	.byte	$00
L012F:
	.byte	$31,$2E,$20,$36,$34,$20,$6B,$69,$6C,$6F,$62,$79,$74,$65,$73,$00
L0141:
	.byte	$34,$2E,$20,$34,$20,$6D,$65,$67,$61,$62,$79,$74,$65,$73,$00
L0147:
	.byte	$35,$2E,$20,$38,$20,$6D,$65,$67,$61,$62,$79,$74,$65,$73,$00
L013B:
	.byte	$33,$2E,$20,$31,$20,$6D,$65,$67,$61,$62,$79,$74,$65,$00

.segment	"BSS"

__cmd:
	.res	1,$00
__arg:
	.res	1,$00
__detect:
	.res	1,$00
__rwsize:
	.res	1,$00

; ---------------------------------------------------------------
; unsigned char __near__ read_applekey (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_read_applekey: near

.segment	"CODE"

	ldx     #$00
	lda     $C062
	ora     $C061
	and     #$80
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ ram2e_cmd (unsigned char, unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ram2e_cmd: near

.segment	"CODE"

	jsr     pusha
	ldy     #$01
	lda     (sp),y
	sta     __cmd
	dey
	lda     (sp),y
	sta     __arg
	ldx     __cmd
	ldy     __arg
	lda     #0
	sta     $C073
	sta     $C073
	lda     #$FF
	sta     $C073
	lda     #$00
	sta     $C073
	lda     #$55
	sta     $C073
	lda     #$AA
	sta     $C073
	lda     #$C1
	sta     $C073
	lda     #$AD
	sta     $C073
	stx     $C073
	sty     $C073
	lda     #0
	sta     $C073
	jmp     incsp2

.endproc

; ---------------------------------------------------------------
; unsigned char __near__ auxram_detect (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_auxram_detect: near

.segment	"CODE"

	lda     #$00
	sta     $C009
	sta     $C073
	sta     $00
	lda     #$FF
	sta     $01
	lda     #$55
	sta     $02
	lda     #$AA
	sta     $03
	lda     $00
	bne     L0058
	lda     $01
	cmp     #$FF
	bne     L0058
	lda     $02
	cmp     #$55
	bne     L0058
	lda     $03
	cmp     #$AA
	bne     L0058
	sta     $C008
	ldx     #$00
	lda     #$01
	rts
L0058:	sta     $C008
	ldx     #$00
	txa
	rts

.endproc

; ---------------------------------------------------------------
; unsigned char __near__ ram2e_detect (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ram2e_detect: near

.segment	"CODE"

	ldx     #$00
	lda     #$01
	rts

.endproc

; ---------------------------------------------------------------
; unsigned char __near__ ramworks_getsize (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ramworks_getsize: near

.segment	"CODE"

	sta     $C009
	ldy     #$FF
L00B4:	sty     $C073
	sty     $00
	dey
	cpy     #$FF
	bne     L00B4
	iny
	ldx     #$00
L00C5:	sty     $C073
	cpy     $00
	bne     L00CD
	inx
L00CD:	iny
	bne     L00C5
	sta     $C008
	stx     __rwsize
	ldx     #$00
	lda     __rwsize
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ set_mask_temp (unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_set_mask_temp: near

.segment	"CODE"

	jsr     pusha
	lda     #$E0
	jsr     pusha
	ldy     #$01
	lda     (sp),y
	jsr     _ram2e_cmd
	jmp     incsp1

.endproc

; ---------------------------------------------------------------
; void __near__ ufm_bitbang (unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ufm_bitbang: near

.segment	"CODE"

	jsr     pusha
	lda     #$EA
	jsr     pusha
	ldy     #$01
	lda     (sp),y
	jsr     _ram2e_cmd
	jmp     incsp1

.endproc

; ---------------------------------------------------------------
; void __near__ ufm_program (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ufm_program: near

.segment	"CODE"

	lda     #$EF
	jsr     pusha
	lda     #$00
	jmp     _ram2e_cmd

.endproc

; ---------------------------------------------------------------
; void __near__ ufm_erase (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_ufm_erase: near

.segment	"CODE"

	lda     #$EE
	jsr     pusha
	lda     #$00
	jmp     _ram2e_cmd

.endproc

; ---------------------------------------------------------------
; void __near__ set_nvm (unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_set_nvm: near

.segment	"CODE"

	jsr     pusha
	jsr     decsp2
	ldx     #$00
	txa
L0244:	jsr     stax0sp
	cmp     #$02
	txa
	sbc     #$00
	bvc     L00F4
	eor     #$80
L00F4:	bpl     L00EE
	ldy     #$02
	lda     (sp),y
	lsr     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	asl     a
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	ldy     #$02
	lda     (sp),y
	asl     a
	asl     a
	asl     a
	asl     a
	asl     a
	asl     a
	and     #$40
	ora     #$80
	jsr     _ufm_bitbang
	jsr     ldax0sp
	jsr     incax1
	jmp     L0244
L00EE:	jsr     _ufm_program
	jmp     incsp3

.endproc

; ---------------------------------------------------------------
; void __near__ menu (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_menu: near

.segment	"CODE"

	lda     #$05
	jsr     pusha
	lda     #$01
	jsr     _gotoxy
	lda     #<(L011C)
	ldx     #>(L011C)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$03
	jsr     _gotoxy
	lda     #<(L0122)
	ldx     #>(L0122)
	jsr     pushax
	jsr     _ramworks_getsize
	jsr     shlax4
	jsr     shlax2
	jsr     pushax
	ldy     #$04
	jsr     _printf
	lda     #$01
	jsr     pusha
	lda     #$05
	jsr     _gotoxy
	lda     #<(L0129)
	ldx     #>(L0129)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$07
	jsr     _gotoxy
	lda     #<(L012F)
	ldx     #>(L012F)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$09
	jsr     _gotoxy
	lda     #<(L0135)
	ldx     #>(L0135)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$0B
	jsr     _gotoxy
	lda     #<(L013B)
	ldx     #>(L013B)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$0D
	jsr     _gotoxy
	lda     #<(L0141)
	ldx     #>(L0141)
	jsr     _cputs
	lda     #$04
	jsr     pusha
	lda     #$0F
	jsr     _gotoxy
	lda     #<(L0147)
	ldx     #>(L0147)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$12
	jsr     _gotoxy
	lda     #<(L014D)
	ldx     #>(L014D)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$14
	jsr     _gotoxy
	lda     #<(L0153)
	ldx     #>(L0153)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$15
	jsr     _gotoxy
	lda     #<(L0159)
	ldx     #>(L0159)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$17
	jsr     _gotoxy
	lda     #<(L015F)
	ldx     #>(L015F)
	jmp     _cputs

.endproc

; ---------------------------------------------------------------
; void __near__ spin (unsigned char, unsigned char)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_spin: near

.segment	"CODE"

	jsr     pusha
	jsr     decsp1
L0162:	ldx     $C019
	bpl     L0162
	lda     #$00
	tay
L0256:	sta     (sp),y
	cmp     _SPIN_HALFCYCLES
	jcs     L0252
	jsr     decsp1
	lda     #$00
	tay
L0254:	sta     (sp),y
	cmp     #$04
	bcs     L0171
	jsr     decsp2
	ldy     #$02
	lda     (sp),y
	beq     L024A
	cmp     #$01
	beq     L024B
	cmp     #$02
	beq     L024C
	cmp     #$03
	beq     L024E
	jmp     L024E
L024A:	lda     #$5C
	jmp     L0253
L024B:	lda     #$7C
	jmp     L0253
L024C:	lda     #$2F
	jmp     L0253
L024E:	lda     #$2D
L0253:	dey
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	jsr     pusha
	ldy     #$05
	lda     (sp),y
	jsr     _gotoxy
	ldy     #$01
	lda     (sp),y
	ldx     #$00
	jsr     _putchar
	lda     #$00
	tay
L0255:	sta     (sp),y
	cmp     _SPIN_FRAMESPERCHAR
	bcs     L0194
L0251:	lda     $C019
	asl     a
	bcs     L0251
L01A1:	ldx     $C019
	bpl     L01A1
	ldy     #$00
	lda     (sp),y
	clc
	adc     #$01
	jmp     L0255
L0194:	jsr     incsp2
	ldy     #$00
	lda     (sp),y
	clc
	adc     #$01
	jmp     L0254
L0171:	jsr     incsp1
	lda     (sp),y
	clc
	adc     #$01
	jmp     L0256
L0252:	lda     $C019
	asl     a
	bcs     L0252
L01AD:	ldx     $C019
	bpl     L01AD
	jmp     incsp3

.endproc

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

	jsr     decsp4
	jsr     _clrscr
	jsr     _get_ostype
	and     #$F0
	cmp     #$30
	beq     L01B5
	lda     #$00
	jsr     pusha
	lda     #$08
	jsr     _gotoxy
	lda     #<(L01BD)
	ldx     #>(L01BD)
	jsr     _cputs
	lda     #$00
	jsr     pusha
	lda     #$0A
	jsr     _gotoxy
	lda     #<(L01C3)
	ldx     #>(L01C3)
	jmp     L0264
L01B5:	jsr     _auxram_detect
	tax
	beq     L0259
	jsr     _ram2e_detect
	tax
	bne     L01C8
L0259:	jsr     pusha
	lda     #$08
	jsr     _gotoxy
	lda     #<(L01CF)
	ldx     #>(L01CF)
	jsr     _cputs
	lda     #$00
	jsr     pusha
	lda     #$0A
	jsr     _gotoxy
	lda     #<(L01D5)
	ldx     #>(L01D5)
	jmp     L0264
L01C8:	jsr     _menu
	lda     #$00
	ldy     #$03
	sta     (sp),y
	dey
	sta     (sp),y
	tax
L0262:	jsr     stax0sp
L01E1:	jsr     _cgetc
	ldx     #$00
	jsr     _toupper
	cpx     #$00
	bne     L01E1
	cmp     #$31
	beq     L025A
	cmp     #$32
	beq     L025B
	cmp     #$33
	beq     L025C
	cmp     #$34
	beq     L025D
	cmp     #$35
	beq     L025E
	cmp     #$51
	jeq     L0261
	cmp     #$52
	beq     L0202
	jmp     L01E1
L025A:	txa
	ldy     #$03
	sta     (sp),y
	jmp     L01E8
L025B:	lda     #$07
	ldy     #$03
	sta     (sp),y
	jmp     L01E8
L025C:	lda     #$0F
	ldy     #$03
	sta     (sp),y
	jmp     L01E8
L025D:	lda     #$3F
	ldy     #$03
	sta     (sp),y
	jmp     L01E8
L025E:	lda     #$7F
	ldy     #$03
	sta     (sp),y
	jmp     L01E8
L0202:	jsr     ldax0sp
	cmp     #$80
	txa
	sbc     #$00
	bvs     L0205
	eor     #$80
L0205:	bpl     L0203
	jsr     _ufm_erase
	ldx     #$00
	txa
	jmp     L0262
L0203:	jsr     ldax0sp
	jsr     incax1
	jmp     L0262
L01E8:	jsr     _read_applekey
	tax
	beq     L01E2
	lda     #$01
	ldy     #$02
	sta     (sp),y
L01E2:	ldy     #$03
	lda     (sp),y
	jsr     _set_mask_temp
	jsr     _clrscr
	ldy     #$02
	lda     (sp),y
	beq     L0213
	lda     #$01
	jsr     pusha
	lda     #$08
	jsr     _gotoxy
	lda     #<(L0219)
	ldx     #>(L0219)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$09
	jsr     _gotoxy
	lda     #<(L021F)
	ldx     #>(L021F)
	jsr     _cputs
	ldy     #$03
	lda     (sp),y
	jsr     _set_nvm
	lda     #$20
	jsr     pusha
	lda     #$08
	jsr     _spin
	jsr     _clrscr
	lda     #$01
	jsr     pusha
	lda     #$08
	jsr     _gotoxy
	lda     #<(L022B)
	ldx     #>(L022B)
	jmp     L0258
L0213:	lda     #$01
	jsr     pusha
	lda     #$08
	jsr     _gotoxy
	lda     #<(L0232)
	ldx     #>(L0232)
L0258:	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$0A
	jsr     _gotoxy
	lda     #<(L0238)
	ldx     #>(L0238)
	jsr     _cputs
	lda     #$01
	jsr     pusha
	lda     #$0B
	jsr     _gotoxy
	lda     #<(L023E)
	ldx     #>(L023E)
L0264:	jsr     _cputs
	jsr     _cgetc
L0261:	jsr     _clrscr
	ldx     #$00
	txa
	jmp     incsp4

.endproc

