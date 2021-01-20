* Comments by Willi Kusche
;.PAGE 'VIC BASIC  "SVBAS"  7/13/82'
	INCLUDE	VMMAP.h
;
;	REFERENCES TO OPERATING SYSTEM
;
SMSGE	EQU	$FF90
HIMEME	EQU	$FF99
LOMEME	EQU	$FF9C
RSTATE	EQU	$FFB7
SIOPE	EQU	$FFBA
SFNAME	EQU	$FFBD
VOPEN	EQU	$FFC0
VCLOSE	EQU	$FFC3
SETIPD	EQU	$FFC6
SETOPD	EQU	$FFC9
RESTIO	EQU	$FFCC
INPCH	EQU	$FFCF
OUTCH	EQU	$FFD2
VLOAD	EQU	$FFD5
VSAVE	EQU	$FFD8
SCLKE	EQU	$FFDB
RCLKE	EQU	$FFDE
CKSTOP	EQU	$FFE1
GETCH	EQU	$FFE4
ABRTIO	EQU	$FFE7
UPDCLK	EQU	$FF20
PLOTE	EQU	$FFF0
RADIOE	EQU	$FFF3
;.PAGE 'TABLES FOR BASIC'
	ORG	$C000
;
;
;
	DW	COLDST
	DW	WARMST
	ASC	'CBMBASIC'
;
;
;
ROUTAD	EQU	*
;	END
	DW	VEND-1
;	FOR
	DW	VFOR-1
;	NEXT
	DW	A2BC6-1
;	DATA
	DW	VDATA-1
;	INPUT #
	DW	VINPA-1
;	INPUT
	DW	VINPUT-1
;	DIM
	DW	A2E9F-1
;	READ
	DW	VREAD-1
;	LET
	DW	VLET-1
;	GOTO
	DW	VGOTO-1
;	RUN
	DW	VRUN-1
;	IF
	DW	VIF-1
;	RESTORE
	DW	VRESTR-1
;	GOSUB
	DW	VGOSUB-1
;	RETURN
	DW	VRETRN-1
;	REM
	DW	VREM-1
;	STOP
	DW	VSTOP-1
;	ON
	DW	VON-1
;	WAIT
	DW	A3619-1
;	LOAD
	DW	CLOAD-1
;	SAVE
	DW	CSAVE-1
;	VERIFY
	DW	VERIFY-1
;	DEF
	DW	A31B2-1
;	POKE
	DW	A3610-1
;	PRINT #
	DW	VPRTA-1
;	PRINT
	DW	VPRINT-1
;	CONT
	DW	VCONT-1
;	LIST
	DW	VLIST-1
;	CLR
	DW	VCLR-1
;	CMD
	DW	VCMD-1
;	SYS
	DW	SYS-1
;	OPEN
	DW	COPEN-1
;	CLOSE
	DW	CCLOSE-1
;	GET
	DW	VGET-1
;	NEW
	DW	VNEW-1
;.PAGE
;
;
;
FUNCAD	EQU	*
;	SGN
	DW	A3AB1
;	INT
	DW	A3B44
;	ABS
	DW	A3AD0
;	USR
	DW	USERFN
;	FRE
	DW	A3181
;	POS
	DW	A31A2
;	SQR
	DW	FPSQRT
;	RND
	DW	FPRND
;	LOG
	DW	FPLOG
;	EXP
	DW	FPEXP
;	COS
	DW	FPCOS
;	SIN
	DW	FPSIN
;	TAN
	DW	FPTAN
;	ATN
	DW	FPARCT
;	PEEK
	DW	A3605
;	LEN
	DW	A3573
;	STR$
	DW	A3266
;	VAL
	DW	A35A4
;	ASC
	DW	A3582
;	CHR$
	DW	A34E3
;	LEFT$
	DW	A34F7
;	RIGHT$
	DW	A3523
;	MID$
	DW	A352E
;
;	ADD
;
A2068	DB	$79
	DW	FPADD-1
;	SUBTRACT
	DB	$79
	DW	FPSUB-1
;	MULTIPLY
	DB	$7B
	DW	FPMULT-1
;	DIVIDE
	DB	$7B
	DW	FPDIV-1
;	POWER
	DB	$7F
	DW	A3DCC-1
;	AND
	DB	$50
	DW	A2E07-1
;	OR
	DB	$46
	DW	A2E04-1
;	NEGATE
	DB	$7D
	DW	A3E05-1
	DB	$5A
	DW	A2D65-1
	DB	$64
	DW	A2E34-1
;.PAGE
;
;
;
VERBSK	ASC	'EN'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'FO'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
	ASC	'NEX'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'DAT'
	MSB	ON
	ASC	'A'
	MSB	OFF
;
	ASC	'INPUT'
	MSB	ON
	ASC	'#'
	MSB	OFF
;
	ASC	'INPU'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'DI'
	MSB	ON
	ASC	'M'
	MSB	OFF
;
	ASC	'REA'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'LE'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'GOT'
	MSB	ON
	ASC	'O'
	MSB	OFF
;
	ASC	'RU'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'I'
	MSB	ON
	ASC	'F'
	MSB	OFF
;
	ASC	'RESTOR'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
	ASC	'GOSU'
	MSB	ON
	ASC	'B'
	MSB	OFF
;
	ASC	'RETUR'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'RE'
	MSB	ON
	ASC	'M'
	MSB	OFF
;
	ASC	'STO'
	MSB	ON
	ASC	'P'
	MSB	OFF
;
	ASC	'O'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'WAI'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'LOA'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'SAV'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
	ASC	'VERIF'
	MSB	ON
	ASC	'Y'
	MSB	OFF
;
	ASC	'DE'
	MSB	ON
	ASC	'F'
	MSB	OFF
;
	ASC	'POK'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
	ASC	'PRINT'
	MSB	ON
	ASC	'#'
	MSB	OFF
;
	ASC	'PRIN'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'CON'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'LIS'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'CL'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
	ASC	'CM'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'SY'
	MSB	ON
	ASC	'S'
	MSB	OFF
;
	ASC	'OPE'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'CLOS'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
	ASC	'GE'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'NE'
	MSB	ON
	ASC	'W'
	MSB	OFF
;
	ASC	'TAB'
	MSB	ON
	ASC	'('
	MSB	OFF
;
	ASC	'T'
	MSB	ON
	ASC	'O'
	MSB	OFF
;
	ASC	'F'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'SPC'
	MSB	ON
	ASC	'('
	MSB	OFF
;
	ASC	'THE'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'NO'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'STE'
	MSB	ON
	ASC	'P'
	MSB	OFF
;
	MSB	ON
	ASC	'+-*/^'
	MSB	OFF
;
	ASC	'AN'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'O'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
	MSB	ON
	ASC	'>=<'
	MSB	OFF
;
	ASC	'SG'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'IN'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
	ASC	'AB'
	MSB	ON
	ASC	'S'
	MSB	OFF
;
	ASC	'US'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
	ASC	'FR'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
	ASC	'PO'
	MSB	ON
	ASC	'S'
	MSB	OFF
;
	ASC	'SQ'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
	ASC	'RN'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
	ASC	'LO'
	MSB	ON
	ASC	'G'
	MSB	OFF
;
	ASC	'EX'
	MSB	ON
	ASC	'P'
	MSB	OFF
;
	ASC	'CO'
	MSB	ON
	ASC	'S'
	MSB	OFF
;
	ASC	'SI'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'TA'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'AT'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'PEE'
	MSB	ON
	ASC	'K'
	MSB	OFF
;
	ASC	'LE'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
	ASC	'STR'
	MSB	ON
	ASC	'$'
	MSB	OFF
;
	ASC	'VA'
	MSB	ON
	ASC	'L'
	MSB	OFF
;
	ASC	'AS'
	MSB	ON
	ASC	'C'
	MSB	OFF
;
	ASC	'CHR'
	MSB	ON
	ASC	'$'
	MSB	OFF
;
	ASC	'LEFT'
	MSB	ON
	ASC	'$'
	MSB	OFF
;
	ASC	'RIGHT'
	MSB	ON
	ASC	'$'
	MSB	OFF
;
	ASC	'MID'
	MSB	ON
	ASC	'$'
	MSB	OFF
;
	ASC	'G'
	MSB	ON
	ASC	'O'
	MSB	OFF
;
	DB	0
;.PAGE
CE1	ASC	'TOO MANY FILE'
	MSB	ON
	ASC	'S'
	MSB	OFF
;
CE2	ASC	'FILE OPE'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
CE3	ASC	'FILE NOT OPE'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
CE4	ASC	'FILE NOT FOUN'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
CE5	ASC	'DEVICE NOT PRESEN'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
CE6	ASC	'NOT INPUT FIL'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
CE7	ASC	'NOT OUTPUT FIL'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
CE8	ASC	'MISSING FILE NAM'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
CE9	ASC	'ILLEGAL DEVICE NUMBE'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
ERRSK	ASC	'NEXT WITHOUT FO'
	MSB	ON
	ASC	'R'
	MSB	OFF
;
SYNEK	ASC	'SYNTA'
	MSB	ON
	ASC	'X'
	MSB	OFF
;
RNGOSK	ASC	'RETURN WITHOUT GOSU'
	MSB	ON
	ASC	'B'
	MSB	OFF
;
ODATEK	ASC	'OUT OF DAT'
	MSB	ON
	ASC	'A'
	MSB	OFF
;
ILLQEK	ASC	'ILLEGAL QUANTIT'
	MSB	ON
	ASC	'Y'
	MSB	OFF
;
OVFEK	ASC	'OVERFLO'
	MSB	ON
	ASC	'W'
	MSB	OFF
;
OUTMK	ASC	'OUT OF MEMOR'
	MSB	ON
	ASC	'Y'
	MSB	OFF
;
UNKSK	ASC	'UNDEF''D STATEMEN'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
SUBSEK	ASC	'BAD SUBSCRIP'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
RDIMEK	ASC	'REDIM''D ARRA'
	MSB	ON
	ASC	'Y'
	MSB	OFF
;
DIVZEK	ASC	'DIVISION BY ZER'
	MSB	ON
	ASC	'O'
	MSB	OFF
;
ILDIRK	ASC	'ILLEGAL DIREC'
	MSB	ON
	ASC	'T'
	MSB	OFF
;
TYPMMK	ASC	'TYPE MISMATC'
	MSB	ON
	ASC	'H'
	MSB	OFF
;
STRLEK	ASC	'STRING TOO LON'
	MSB	ON
	ASC	'G'
	MSB	OFF
;
FDATEK	ASC	'FILE DAT'
	MSB	ON
	ASC	'A'
	MSB	OFF
;
FORMEK	ASC	'FORMULA TOO COMPLE'
	MSB	ON
	ASC	'X'
	MSB	OFF
;
CONTEK	ASC	'CAN''T CONTINU'
	MSB	ON
	ASC	'E'
	MSB	OFF
;
UNDFEK	ASC	'UNDEF''D FUNCTIO'
	MSB	ON
	ASC	'N'
	MSB	OFF
;
VERK	ASC	'VERIF'
	MSB	ON
	ASC	'Y'
	MSB	OFF
;
LOADK	ASC	'LOA'
	MSB	ON
	ASC	'D'
	MSB	OFF
;
EMADDR	DW	CE1
	DW	CE2
	DW	CE3
	DW	CE4
	DW	CE5
	DW	CE6
	DW	CE7
	DW	CE8
	DW	CE9
	DW	ERRSK
	DW	SYNEK
	DW	RNGOSK
	DW	ODATEK
	DW	ILLQEK
	DW	OVFEK
	DW	OUTMK
	DW	UNKSK
	DW	SUBSEK
	DW	RDIMEK
	DW	DIVZEK
	DW	ILDIRK
	DW	TYPMMK
	DW	STRLEK
	DW	FDATEK
	DW	FORMEK
	DW	CONTEK
	DW	UNDFEK
	DW	VERK
	DW	LOADK
	DW	BRKK
;
;
;
OKK	DB	$0D
	ASC	'OK'
	DB	$0D
	DB	0
;
;
;
ERRK	DB	$0D
	ASC	' ERROR'
	DB	0
;
;
;
INK	ASC	' IN '
	DB	0
;
;
;
READYK	DB	$0D,$0A
	ASC	'READY.'
	DB	$0D,$0A
	DB	0
;
;
;
BREAKK	DB	$0D,$0A
BRKK	ASC	'BREAK'
	DB	0
;
;
;
	DB	$A0
;.PAGE 'SUBROUTINES'
;
;
;
A2274	TSX
	INX
	INX
	INX
	INX
GC	LDA	BSTACK+1,X
	CMP	#$81
	BNE	RTSM
	LDA	Z96+1
	BNE	GD
	LDA	BSTACK+2,X
	STA	Z96
	LDA	BSTACK+3,X
	STA	Z96+1
GD	CMP	BSTACK+3,X
	BNE	GE
	LDA	Z96
	CMP	BSTACK+2,X
	BEQ	RTSM
GE	TXA
	CLC
	ADC	#$12
	TAX
	BNE	GC
RTSM	RTS
;.PAGE
;
;
;
A22A2	JSR	A22F2
	STA	AREPTR
	STY	AREPTR+1
A22A9	SEC
	LDA	ZA7
	SBC	ZAC
	STA	Z6F
	TAY
	LDA	ZA7+1
	SBC	ZAC+1
	TAX
	INX
	TYA
	BEQ	GJ
	LDA	ZA7
	SEC
	SBC	Z6F
	STA	ZA7
	BCS	GF
	DEC	ZA7+1
	SEC
GF	LDA	ZA5
	SBC	Z6F
	STA	ZA5
	BCS	GH
	DEC	ZA5+1
	BCC	GH
GG	LDA	(ZA7),Y
	STA	(ZA5),Y
GH	DEY
	BNE	GG
	LDA	(ZA7),Y
	STA	(ZA5),Y
GJ	DEC	ZA7+1
	DEC	ZA5+1
	DEX
	BNE	GH
	RTS
;.PAGE
A22E5	ASL	A
	ADC	#$3E
	BCS	PROME
	STA	Z6F
	TSX
	CPX	Z6F
	BCC	PROME
	RTS
;.PAGE
;
;
;
A22F2	CPY	STRPTR+1
	BCC	RTSF
	BNE	DC
	CMP	STRPTR
	BCC	RTSF
DC	PHA
	LDX	#9
	TYA
DD	PHA
	LDA	ZA4,X
	DEX
	BPL	DD
	JSR	A3321
	LDX	#-9
DE	PLA
	STA	ZAE,X
	INX
	BMI	DE
	PLA
	TAY
	PLA
	CPY	STRPTR+1
	BCC	RTSF
	BNE	PROME
	CMP	STRPTR
	BCS	PROME
RTSF	RTS
PROME	LDX	#16
PRERR	JMP	(BAEVEC)
DSPLE	TXA
	ASL	A
	TAX
	LDA	EMADDR-2,X
	STA	Z6F
	LDA	EMADDR-1,X
	STA	Z6F+1
	JSR	RESTIO
	LDA	#0
	STA	CURDVC
PAA	JSR	CRLF
	JSR	OUTQM
	LDY	#0
CL	LDA	(Z6F),Y
	PHA
	AND	#$7F
	JSR	CONOUT
	INY
	PLA
	BPL	CL
AC379	JSR	A2555
	LDA	#>ERRK
	LDY	#<ERRK
BKB4GN	JSR	OPSTRA
	LDY	CURLNO+1
	INY
	BEQ	GETNXT
	JSR	PELNO
;.PAGE 'PRINT PROMPT (OK) AND REACT TO NEXT INPUT FROM TERMINAL'
GETNXT	LDA	#>READYK
	LDY	#<READYK
	JSR	OPSTRA
	LDA	#$80
	JSR	SMSGE
BS	JMP	(WMSVEC)
DWARM	JSR	IPSTR
	STX	CTXPTR
	STY	CTXPTR+1
	JSR	NXTTCE
	TAX
	BEQ	BS
	LDX	#$FF
	STX	CURLNO+1
	BCC	BT
	JSR	CVTTKN
	JMP	EXECST
BT	JSR	ASCBIN
	JSR	CVTTKN
	STY	Z0C
	JSR	SRCLNA
	BCC	CU
	LDY	#1
	LDA	(ZAC),Y
	STA	Z6F+1
	LDA	VASPTR
	STA	Z6F
	LDA	ZAC+1
	STA	Z71+1
	LDA	ZAC
	DEY
	SBC	(ZAC),Y
	CLC
	ADC	VASPTR
	STA	VASPTR
	STA	Z71
	LDA	VASPTR+1
	ADC	#$FF
	STA	VASPTR+1
	SBC	ZAC+1
	TAX
	SEC
	LDA	ZAC
	SBC	VASPTR
	TAY
	BCS	CS
	INX
	DEC	Z71+1
CS	CLC
	ADC	Z6F
	BCC	CT
	DEC	Z6F+1
	CLC
CT	LDA	(Z6F),Y
	STA	(Z71),Y
	INY
	BNE	CT
	INC	Z6F+1
	INC	Z71+1
	DEX
	BNE	CT
CU	JSR	A2537
	JSR	NRC442
	LDA	CONBUF
	BEQ	BS
	CLC
	LDA	VASPTR
	STA	ZA7
	ADC	Z0C
	STA	ZA5
	LDY	VASPTR+1
	STY	ZA7+1
	BCC	CV
	INY
CV	STY	ZA5+1
	JSR	A22A2
	LDA	Z19
	LDY	Z19+1
	STA	CONBUF-2
	STY	CONBUF-1
	LDA	AREPTR
	LDY	AREPTR+1
	STA	VASPTR
	STY	VASPTR+1
	LDY	Z0C
	DEY
CW	LDA	CONBUF-4,Y
	STA	(ZAC),Y
	DEY
	BPL	CW
A23EE	JSR	A2537
	JSR	NRC442
	JMP	BS
;
;	BUILD NEXT LINE POINTER IN EVERY LINE
;
NRC442	LDA	TXSPTR
	LDY	TXSPTR+1
	STA	Z6F
	STY	Z6F+1
	CLC
CY	LDY	#1
	LDA	(Z6F),Y
	BEQ	NRC46E
	LDY	#4
GK	INY
	LDA	(Z6F),Y
	BNE	GK
	INY
	TYA
	ADC	Z6F
	TAX
	LDY	#0
	STA	(Z6F),Y
	LDA	Z6F+1
	ADC	#0
	INY
	STA	(Z6F),Y
	STX	Z6F
	STA	Z6F+1
	BCC	CY
NRC46E	RTS
;.PAGE 'INPUT STRING FROM TERMINAL'
IPSTR	LDX	#0
AE	JSR	CICH
	CMP	#CR
	BEQ	AK
	STA	CONBUF,X
	INX
	CPX	#89
	BCC	AE
	LDX	#23
	JMP	PRERR
AK	JMP	STNUL
;.PAGE 'SUBROUTINES'
CVTTKN	JMP	(TKCVEC)
GENTKN	LDX	CTXPTR
	LDY	#4
	STY	Z10
CD	LDA	CONBUF,X
	BPL	PCD
	CMP	#$FF
	BEQ	CB
	INX
	BNE	CD
PCD	CMP	#SPACE
	BEQ	CB
	STA	Z0B
	CMP	#'"
	BEQ	CF
	BIT	Z10
	BVS	CB
	CMP	#'?
	BNE	BU
	LDA	#$99
	BNE	CB
BU	CMP	#'0
	BCC	BV
	CMP	#$3C
	BCC	CB
BV	STY	ZBE
	LDY	#0
	STY	Z0C
	DEY
	STX	CTXPTR
	DEX
BW	INY
BX	INX
CA	LDA	CONBUF,X
	SEC
	SBC	VERBSK,Y
	BEQ	BW
	CMP	#$80
	BNE	BY
	ORA	Z0C
CH	LDY	ZBE
CB	INX
	INY
	STA	CONBUF-5,Y
	LDA	CONBUF-5,Y
	BEQ	CJ
	SEC
	SBC	#$3A
	BEQ	CE
	CMP	#$49
	BNE	CC
CE	STA	Z10
CC	SEC
	SBC	#$55
	BNE	CD
	STA	Z0B
CG	LDA	CONBUF,X
	BEQ	CB
	CMP	Z0B
	BEQ	CB
CF	INY
	STA	CONBUF-5,Y
	INX
	BNE	CG
BY	LDX	CTXPTR
	INC	Z0C
BZ	INY
	LDA	VERBSK-1,Y
	BPL	BZ
	LDA	VERBSK,Y
	BNE	CA
	LDA	CONBUF,X
	BPL	CH
CJ	STA	CONBUF-3,Y
	DEC	CTXPTR+1
	LDA	#>CONBUF-1
	STA	CTXPTR
	RTS
;.PAGE
;
;
;
SRCLNA	LDA	TXSPTR
	LDX	TXSPTR+1
SRCLNB	LDY	#1
	STA	ZAC
	STX	ZAC+1
	LDA	(ZAC),Y
	BEQ	HC
	INY
	INY
	LDA	Z19+1
	CMP	(ZAC),Y
	BCC	RTSH
	BEQ	HA
	DEY
	BNE	HB
HA	LDA	Z19
	DEY
	CMP	(ZAC),Y
	BCC	RTSH
	BEQ	RTSH
HB	DEY
	LDA	(ZAC),Y
	TAX
	DEY
	LDA	(ZAC),Y
	BCS	SRCLNB
HC	CLC
RTSH	RTS
;.PAGE 'NEW AND CLEAR'
;
;
;
VNEW	BNE	RTSH
DONEW	LDA	#0
	TAY
	STA	(TXSPTR),Y
	INY
	STA	(TXSPTR),Y
	LDA	TXSPTR
	CLC
	ADC	#2
	STA	VASPTR
	LDA	TXSPTR+1
	ADC	#0
	STA	VASPTR+1
;
;	INITIALIZE 'CTXPTR' TO START OF TEXT AREA
;
A2537	JSR	ICTPTR
	LDA	#0
;
;
;
VCLR	BNE	RTSG
STOPIO	JSR	ABRTIO
DOCLR	LDA	HMEPTR
	LDY	HMEPTR+1
	STA	STRPTR
	STY	STRPTR+1
	LDA	VASPTR
	LDY	VASPTR+1
	STA	ARSPTR
	STY	ARSPTR+1
	STA	AREPTR
	STY	AREPTR+1
;
;	INITIALIZE 'DATPTR' TO START OF TEXT AREA
;
AC581	JSR	VRESTR
;
;
;
A2555	LDX	#>Z66
	STX	Z63
;
;	MOVE RETURN FROM CURRENT STACK TO TOP OF STACK MINUS 1
;
	PLA
	TAY
	PLA
	LDX	#$FA
	TXS
	PHA
	TYA
	PHA
;
;
;
	LDA	#0
	STA	Z8A+1
	STA	Z11
RTSG	RTS
;.PAGE 'INITIALIZE TEXT EXTRACT ROUTINE TO ADDR OF TEXT START'
ICTPTR	CLC
	LDA	TXSPTR
	ADC	#$FF
	STA	CTXPTR
	LDA	TXSPTR+1
	ADC	#$FF
	STA	CTXPTR+1
	RTS
;.PAGE 'LIST'
;
;
;
VLIST	BCC	EG
	BEQ	EG
	CMP	#$AB
	BNE	RTSG
EG	JSR	ASCBIN
	JSR	SRCLNA
	JSR	CURTCE
	BEQ	EP
	CMP	#$AB
	BNE	RTSH
	JSR	NXTTCE
	JSR	ASCBIN
	BNE	RTSH
EP	PLA
	PLA
	LDA	Z19
	ORA	Z19+1
	BNE	EH
	LDA	#$FF
	STA	Z19
	STA	Z19+1
EH	LDY	#1
	STY	Z10
	LDA	(ZAC),Y
	BEQ	EL
	JSR	JCKSTP
	JSR	CRLF
	INY
	LDA	(ZAC),Y
	TAX
	INY
	LDA	(ZAC),Y
	CMP	Z19+1
	BNE	EJ
	CPX	Z19
	BEQ	EK
EJ	BCS	EL
EK	STY	Z96
	JSR	A3C59
	LDA	#$20
ET	LDY	Z96
	AND	#$7F
EN	JSR	CONOUT
	CMP	#'"
	BNE	PENA
	LDA	Z10
	EOR	#$FF
	STA	Z10
PENA	INY
	BEQ	EL
	LDA	(ZAC),Y
	BNE	EM
	TAY
	LDA	(ZAC),Y
	TAX
	INY
	LDA	(ZAC),Y
	STX	ZAC
	STA	ZAC+1
	BNE	EH
EL	JMP	GETNXT
EM	JMP	(TKEVEC)
EXPTKN	BPL	EN
	CMP	#$FF
	BEQ	EN
	BIT	Z10
	BMI	EN
	SEC
	SBC	#$7F
	TAX
	STY	Z96
	LDY	#$FF
EQ	DEX
	BEQ	ES
ER	INY
	LDA	VERBSK,Y
	BPL	ER
	BMI	EQ
ES	INY
	LDA	VERBSK,Y
	BMI	ET
	JSR	CONOUT
	BNE	ES
;.PAGE 'FOR'
VFOR	LDA	#$80
	STA	Z11
	JSR	VLET
	JSR	A2274
	BNE	EU
	TXA
	ADC	#$0F
	TAX
	TXS
EU	PLA
	PLA
	LDA	#9
	JSR	A22E5
	JSR	FESTA
	CLC
	TYA
	ADC	CTXPTR
	PHA
	LDA	CTXPTR+1
	ADC	#0
	PHA
	LDA	CURLNO+1
	PHA
	LDA	CURLNO
	PHA
	LDA	#$A4
	JSR	CKTERM
	JSR	A2C37
	JSR	A2C34
	LDA	ZB3
	ORA	#$7F
	AND	ZAF
	STA	ZAF
	LDA	#>A2651
	LDY	#<A2651
	STA	Z6F
	STY	Z6F+1
	JMP	A2CED
A2651	LDA	#>A3802
	LDY	#<A3802
	JSR	MFPACC
	JSR	CURTCE
	CMP	#$A9
	BNE	EV
	JSR	NXTTCE
	JSR	A2C34
EV	JSR	A3AA3
	JSR	A2CE2
	LDA	Z96+1
	PHA
	LDA	Z96
	PHA
	LDA	#$81
	PHA
;.PAGE 'SUBROUTINES'
A2674	JSR	JCKSTP
	LDA	CTXPTR
	LDY	CTXPTR+1
	CPY	#<CONBUF
	NOP
	BEQ	EC
	STA	Z8A
	STY	Z8A+1
;
;	TEST FOR STATEMENT END
;
EC	LDY	#0
	LDA	(CTXPTR),Y
	BNE	NRDB
PECA	LDY	#2
	LDA	(CTXPTR),Y
	CLC
	BNE	NRECA
	JMP	JH
NRECA	INY
	LDA	(CTXPTR),Y
	STA	CURLNO
	INY
	LDA	(CTXPTR),Y
	STA	CURLNO+1
	TYA
	ADC	CTXPTR
	STA	CTXPTR
	BCC	EXECST
	INC	CTXPTR+1
EXECST	JMP	(SNLVEC)
STRTNL	JSR	NXTTCE
	JSR	XFERTK
	JMP	A2674
;.PAGE
XFERTK	BEQ	RTSE
;
;	CHECK FOR TOKEN
;
A26AC	SBC	#$80
	BCC	NRDA
	CMP	#(FUNCAD-ROUTAD)/2	; $23
	BCS	NRDD
	ASL	A
	TAY
	LDA	ROUTAD+1,Y
	PHA
	LDA	ROUTAD,Y
	PHA
	JMP	NXTTCE
;
;	NOT TOKEN, ASSUME 'LET'
;
NRDA	JMP	VLET
NRDB	CMP	#$3A
	BEQ	EXECST
NRDC	JMP	PRSYNE
NRDD	CMP	#$4B
	BNE	NRDC
	JSR	NXTTCE
	LDA	#$A4
	JSR	CKTERM
	JMP	VGOTO
;.PAGE 'RESTORE'
VRESTR	SEC
	LDA	TXSPTR
	SBC	#1
	LDY	TXSPTR+1
	BCS	A26D5
	DEY
A26D5	STA	DATPTR
	STY	DATPTR+1
RTSE	RTS
;.PAGE 'STOP AND END'
;
;
;
JCKSTP	JSR	CKSTOP
VSTOP	BCS	JC
VEND	CLC
JC	BNE	RTSJ
	LDA	CTXPTR
	LDY	CTXPTR+1
	LDX	CURLNO+1
	INX
	BEQ	JD
	STA	Z8A
	STY	Z8A+1
A26F7	LDA	CURLNO
	LDY	CURLNO+1
	STA	Z88
	STY	Z88+1
JD	PLA
	PLA
JH	LDA	#>BREAKK
	LDY	#<BREAKK
	BCC	JE
	JMP	BKB4GN
JE	JMP	GETNXT
;.PAGE 'CONTINUE'
VCONT	BNE	RTSJ
*		#NOCONK
	LDX	#26
	LDY	Z8A+1
	BNE	JJ
	JMP	PRERR
JJ	LDA	Z8A
	STA	CTXPTR
	STY	CTXPTR+1
	LDA	Z88
	LDY	Z88+1
	STA	CURLNO
	STY	CURLNO+1
RTSJ	RTS
;.PAGE 'RUN AND GOSUB'
;
;	'RUN'
;
VRUN	PHP
	LDA	#0
	JSR	SMSGE
	PLP
	BNE	FA
	JMP	A2537
FA	JSR	STOPIO
	JMP	FB
;
;	'GOSUB'
;
VGOSUB	LDA	#3
	JSR	A22E5
	LDA	CTXPTR+1
	PHA
	LDA	CTXPTR
	PHA
	LDA	CURLNO+1
	PHA
	LDA	CURLNO
	PHA
;
;	'GOSUB' TOKEN
;
	LDA	#$8D
	PHA
FB	JSR	CURTCE
	JSR	VGOTO
	JMP	A2674
;.PAGE 'GO TO'
;
;
;
VGOTO	JSR	ASCBIN
	JSR	FESTB
	SEC
	LDA	CURLNO
	SBC	Z19
	LDA	CURLNO+1
	SBC	Z19+1
	BCS	FC
	TYA
	SEC
	ADC	CTXPTR
	LDX	CTXPTR+1
	BCC	FD
	INX
	BCS	FD
FC	LDA	TXSPTR
	LDX	TXSPTR+1
FD	JSR	SRCLNB
	BCC	ED
	LDA	ZAC
	SBC	#1
	STA	CTXPTR
	LDA	ZAC+1
	SBC	#0
	STA	CTXPTR+1
RTSK	RTS
;.PAGE 'RETURN AND DATA'
;
;
;
VRETRN	BNE	RTSK
	LDA	#$FF
	STA	Z96+1
	JSR	A2274
	TXS
	CMP	#$8D
	BEQ	EE
*		#RNGOSK
	LDX	#12
	DB	$2C
*		#UNKSK
ED	LDX	#17
	JMP	PRERR
AZ	JMP	PRSYNE
EE	PLA
	PLA
	STA	CURLNO
	PLA
	STA	CURLNO+1
	PLA
	STA	CTXPTR
	PLA
	STA	CTXPTR+1
VDATA	JSR	FESTA
UPCTPT	TYA
	CLC
	ADC	CTXPTR
	STA	CTXPTR
	BCC	RTSL
	INC	CTXPTR+1
RTSL	RTS
;.PAGE 'FIND END OF STATEMENT'
;
;
;
FESTA	LDX	#':
	DB	$2C
FESTB	LDX	#0
	STX	Z0A
	LDY	#0
	STY	Z0B
EF	LDA	Z0B
	LDX	Z0A
	STA	Z0A
	STX	Z0B
EW	LDA	(CTXPTR),Y
	BEQ	RTSL
	CMP	Z0B
	BEQ	RTSL
	INY
	CMP	#'"
	BNE	EW
	BEQ	EF
;.PAGE 'IF AND REM'
;
;
;
VIF	JSR	A2C48
	JSR	CURTCE
;
;	CHECK FOR 'GOTO' TOKEN
;
	CMP	#$89
	BEQ	EX
;
;	CHECK FOR 'THEN' TOKEN
;
	LDA	#$A7
	JSR	CKTERM
EX	LDA	ZAE
	BNE	EY
;
;	'REM'
;
VREM	JSR	FESTB
	BEQ	UPCTPT
;
;
;
EY	JSR	CURTCE
	BCS	EZ
;
;
;
	JMP	VGOTO
;
;
;
EZ	JMP	XFERTK
;.PAGE 'ON'
VON	JSR	A3595
	PHA
	CMP	#$8D
	BEQ	AY
AW	CMP	#$89
	BNE	AZ
AY	DEC	ZB1+1
	BNE	AX
	PLA
	JMP	A26AC
AX	JSR	NXTTCE
	JSR	ASCBIN
	CMP	#',
	BEQ	AY
	PLA
RTSB	RTS
;.PAGE 'SUBROUTINES'
;
;
;
ASCBIN	LDX	#0
	STX	Z19
	STX	Z19+1
AV	BCS	RTSB
	SBC	#$2F
	STA	Z0A
	LDA	Z19+1
	STA	Z6F
	CMP	#$19
	BCS	AW
	LDA	Z19
	ASL	A
	ROL	Z6F
	ASL	A
	ROL	Z6F
	ADC	Z19
	STA	Z19
	LDA	Z6F
	ADC	Z19+1
	STA	Z19+1
	ASL	Z19
	ROL	Z19+1
	LDA	Z19
	ADC	Z0A
	STA	Z19
	BCC	AU
	INC	Z19+1
AU	JSR	NXTTCE
	JMP	AV
;.PAGE 'LET'
;
;
;
VLET	JSR	A2EA9
	STA	Z96
	STY	Z96+1
;
;	CHECK FOR '=' TOKEN
;
	LDA	#$B2
	JSR	CKTERM
	LDA	Z0F
	PHA
	LDA	Z0E
	PHA
	JSR	A2C48
	PLA
	ROL	A
	JSR	A2C3A
	BNE	HE
	PLA
A290F	BPL	HD
	JSR	ROUNDA
	JSR	FIX
	LDY	#0
	LDA	ZB1
	STA	(Z96),Y
	INY
	LDA	ZB1+1
	STA	(Z96),Y
	RTS
HD	JMP	A3A48
HE	PLA
A2927	LDY	Z96+1
	CPY	#$DF
	BNE	PHE
	JSR	A349D
	CMP	#$06
	BNE	PHF
	LDY	#0
	STY	ZAE
	STY	ZB3
PHK	STY	ZBE
	JSR	AC91C
	JSR	A395A
	INC	ZBE
	LDY	ZBE
	JSR	AC91C
	JSR	A3A84
	TAX
	BEQ	PHG
	INX
	TXA
	JSR	AD9BF
PHG	LDY	ZBE
	INY
	CPY	#$06
	BNE	PHK
	JSR	A395A
	JSR	A3B13
	LDX	FAC+3
	LDY	FAC+2
	LDA	FAC+4
	JMP	SCLKE
;.PAGE 'SUBROUTINES'
AC91C	LDA	(Z6F),Y
	JSR	ZCD
	BCC	PHJ
PHF	JMP	A304B
PHJ	SBC	#$2F
	JMP	A3C0A
;.PAGE
PHE	LDY	#2
	LDA	(ZB1),Y
	CMP	STRPTR+1
	BCC	HG
	BNE	HF
	DEY
	LDA	(ZB1),Y
	CMP	STRPTR
	BCC	HG
HF	LDY	ZB1+1
	CPY	VASPTR+1
	BCC	HG
	BNE	HH
	LDA	ZB1
	CMP	VASPTR
	BCS	HH
HG	LDA	ZB1
	LDY	ZB1+1
	JMP	HJ
HH	LDY	#0
	LDA	(ZB1),Y
	JSR	A3276
	LDA	Z9D
	LDY	Z9D+1
	STA	ZBC
	STY	ZBC+1
	JSR	A3471
	LDA	#>FAC
	LDY	#<FAC
HJ	STA	Z9D
	STY	Z9D+1
	JSR	A34D2
	LDY	#0
	LDA	(Z9D),Y
	STA	(Z96),Y
	INY
	LDA	(Z9D),Y
	STA	(Z96),Y
	INY
	LDA	(Z9D),Y
	STA	(Z96),Y
	RTS
;.PAGE 'PRINT# AND CMD'
;
;	'PRINT#'
;
VPRTA	JSR	VCMD
	JMP	ACAD6
;
;	'CMD'
;
VCMD	JSR	A3595
	BEQ	PHJA
	LDA	#',
	JSR	CKTERM
PHJA	PHP
	STX	CURDVC
	JSR	CSODV
	PLP
	JMP	VPRINT
;.PAGE 'PRINT'
A297B	JSR	OPSTRB
GB	JSR	CURTCE
VPRINT	BEQ	CRLF
A2983	BEQ	RTSC
;
;	CHECK FOR 'TAB(' TOKEN
;
	CMP	#$A3
	BEQ	FY
;
;	CHECK FOR 'SPC(' TOKEN
;
	CMP	#$A6
	CLC
	BEQ	FY
	CMP	#',
	BEQ	A29DE
	CMP	#';
	BEQ	FV
	JSR	A2C48
	BIT	Z0E
	BMI	A297B
	JSR	A3C69
	JSR	A3288
FZ	JSR	OPSTRB
	JSR	OUTSP
	BNE	GB
;.PAGE 'SUBROUTINES'
STNUL	LDA	#0
	STA	CONBUF,X
	LDX	#>CONBUF-1
	LDY	#<CONBUF-1
	LDA	CURDVC
	BNE	RTSC
CRLF	LDA	#CR
	JSR	CONOUT
	BIT	CURDVC
	BPL	A29CB
	LDA	#LF
	JSR	CONOUT
A29CB	EOR	#$FF
RTSC	RTS
;.PAGE
A29DE	SEC
	JSR	PLOTE
	TYA
	SEC
FR	SBC	#$0B
	BCS	FR
	EOR	#$FF
	ADC	#1
	BNE	FT
FY	PHP
	SEC
	JSR	PLOTE
	STY	TABSV
	JSR	A3592
	CMP	#')
	BNE	JPSE
FS	PLP
	BCC	FU
	TXA
	SBC	TABSV
	BCC	FV
FT	TAX
FU	INX
NRFU	DEX
	BNE	NRFV
FV	JSR	NXTTCE
	JMP	A2983
NRFV	JSR	OUTSP
	BNE	NRFU
;.PAGE
;
;
;
OPSTRA	JSR	A3288
OPSTRB	JSR	A349D
	TAX
	LDY	#0
	INX
BE	DEX
	BEQ	RTSC
	LDA	(Z6F),Y
	JSR	CONOUT
	INY
	CMP	#CR
	BNE	BE
	JSR	A29CB
	JMP	BE
;.PAGE
OUTSP	LDA	CURDVC
	BEQ	NRL
	LDA	#SPACE
	DB	$2C
NRL	LDA	#$1D
	DB	$2C
OUTQM	LDA	#'?
CONOUT	JSR	COCH
PXH	AND	#$FF
	RTS
;.PAGE
;
;
;
ACA77	LDA	Z12
	BEQ	BB
	BMI	PXJ
	LDY	#$FF
	BNE	BD
PXJ	LDA	Z8C
	LDY	Z8C+1
BD	STA	CURLNO
	STY	CURLNO+1
JPSE	JMP	PRSYNE
BB	LDA	CURDVC
	BEQ	PBB
	LDX	#24
	JMP	PRERR
PBB	LDA	#>REDOK
	LDY	#<REDOK
	JSR	OPSTRA
	LDA	Z8A
	LDY	Z8A+1
	STA	CTXPTR
	STY	CTXPTR+1
	RTS
;.PAGE 'GET'
VGET	JSR	CKIDIR
	CMP	#'#
	BNE	PBC
	JSR	NXTTCE
	JSR	A3595
	LDA	#',
	JSR	CKTERM
	STX	CURDVC
	JSR	CSIDV
PBC	LDX	#>CONBUF+1
	LDY	#<CONBUF+1
	LDA	#0
	STA	CONBUF+1
	LDA	#$40
	JSR	A2ABF
	LDX	CURDVC
	BNE	ACAD8
	RTS
;.PAGE 'INPUT#, INPUT AND READ'
;
;	'INPUT#'
;
VINPA	JSR	A3595
	LDA	#',
	JSR	CKTERM
	STX	CURDVC
	JSR	CSIDV
	JSR	ACAF1
ACAD6	LDA	CURDVC
ACAD8	JSR	RESTIO
	LDX	#0
	STX	CURDVC
	RTS
;
;	'INPUT'
;
VINPUT	CMP	#'"
	BNE	ACAF1
	JSR	A2D4E
	LDA	#';
	JSR	CKTERM
	JSR	OPSTRB
ACAF1	JSR	CKIDIR
	LDA	#',
	STA	CONBUF-1
PFPA	JSR	GETIP
	LDA	CURDVC
	BEQ	PFPB
	JSR	RSTATE
	AND	#2
	BEQ	PFPB
	JSR	ACAD6
	JMP	VDATA
PFPB	LDA	CONBUF
	BNE	A2ABE
	LDA	CURDVC
	BNE	PFPA
	JSR	FESTA
	JMP	UPCTPT
;
;	SUBROUTINE FOR 'INPUT'
;
GETIP	LDA	CURDVC
	BNE	PFPC
	JSR	OUTQM
	JSR	OUTSP
PFPC	JMP	IPSTR
;
;	'READ'
;
VREAD	LDX	DATPTR
	LDY	DATPTR+1
	LDA	#$98
	DB	$2C
A2ABE	LDA	#0
A2ABF	STA	Z12
	STX	Z90
	STY	Z90+1
A2AC5	JSR	A2EA9
	STA	Z96
	STY	Z96+1
	LDA	CTXPTR
	LDY	CTXPTR+1
	STA	Z98
	STY	Z98+1
	LDX	Z90
	LDY	Z90+1
	STX	CTXPTR
	STY	CTXPTR+1
	JSR	CURTCE
	BNE	A2AFC
	BIT	Z12
	BVC	FG
	JSR	CGCH
	STA	CONBUF
	LDX	#>CONBUF-1
	LDY	#<CONBUF-1
	BNE	FH
FG	BMI	A2B63
	LDA	CURDVC
	BNE	PFG
	JSR	OUTQM
PFG	JSR	GETIP
FH	STX	CTXPTR
	STY	CTXPTR+1
A2AFC	JSR	NXTTCE
	BIT	Z0E
	BPL	A2B34
	BIT	Z12
	BVC	FK
	INX
	STX	CTXPTR
	LDA	#0
	STA	Z0A
	BEQ	FL
FK	STA	Z0A
	CMP	#'"
	BEQ	FM
	LDA	#':
	STA	Z0A
	LDA	#',
FL	CLC
FM	STA	Z0B
	LDA	CTXPTR
	LDY	CTXPTR+1
	ADC	#0
	BCC	FN
	INY
FN	JSR	A328E
	JSR	A35DA
	JSR	A2927
	JMP	DB
;.PAGE 'SUBROUTINES'
A2B34	JSR	ASC2FP
	LDA	Z0F
	JSR	A290F
DB	JSR	CURTCE
	BEQ	GL
	CMP	#',
	BEQ	GL
	JMP	ACA77
GL	LDA	CTXPTR
	LDY	CTXPTR+1
	STA	Z90
	STY	Z90+1
	LDA	Z98
	LDY	Z98+1
	STA	CTXPTR
	STY	CTXPTR+1
	JSR	CURTCE
	BEQ	A2B89
	JSR	A2D8E
	JMP	A2AC5
;.PAGE
A2B63	JSR	FESTA
	INY
	TAX
	BNE	GM
	LDX	#$0D
	INY
	LDA	(CTXPTR),Y
	BEQ	A2BDA
	INY
	LDA	(CTXPTR),Y
	STA	Z8C
	INY
	LDA	(CTXPTR),Y
	INY
	STA	Z8C+1
GM	JSR	UPCTPT
	JSR	CURTCE
	TAX
	CPX	#$83
	BNE	A2B63
	JMP	A2AFC
;.PAGE
A2B89	LDA	Z90
	LDY	Z90+1
	LDX	Z12
	BPL	GN
	JMP	A26D5
GN	LDY	#0
	LDA	(Z90),Y
	BEQ	GP
	LDA	CURDVC
	BNE	GP
	LDA	#>A2BA2
	LDY	#<A2BA2
	JMP	OPSTRA
GP	RTS
;.PAGE
A2BA2	ASC	'?EXTRA IGNORED'
	DB	$0D,0
REDOK	ASC	'?REDO FROM START'
	DB	$0D,0
;.PAGE
;
;
;
A2BC6	BNE	A2BCC
	LDY	#0
	BEQ	GR
A2BCC	JSR	A2EA9
GR	STA	Z96
	STY	Z96+1
	JSR	A2274
	BEQ	GS
	LDX	#10
A2BDA	JMP	PRERR
GS	TXS
	TXA
	CLC
	ADC	#4
	PHA
	ADC	#6
	STA	Z71
	PLA
	LDY	#1
	JSR	MFPACC
	TSX
	LDA	BSTACK+9,X
	STA	ZB3
	LDA	Z96
	LDY	Z96+1
	JSR	A3653
	JSR	A3A48
	LDY	#1
	JSR	A3AD5
	TSX
	SEC
	SBC	BSTACK+9,X
	BEQ	GU
	LDA	BSTACK+15,X
	STA	CURLNO
	LDA	BSTACK+16,X
	STA	CURLNO+1
	LDA	BSTACK+18,X
	STA	CTXPTR
	LDA	BSTACK+17,X
	STA	CTXPTR+1
GT	JMP	A2674
GU	TXA
	ADC	#17
	TAX
	TXS
	JSR	CURTCE
	CMP	#',
	BNE	GT
	JSR	NXTTCE
	JSR	A2BCC
A2C34	JSR	A2C48
A2C37	CLC
	DB	$24
A2C39	SEC
A2C3A	BIT	Z0E
	BMI	GW
	BCS	GX
GV	RTS
GW	BCS	GV
*		#TYPMMK
GX	LDX	#22
KS	JMP	PRERR
;.PAGE
;
;
;
A2C48	LDX	CTXPTR
	BNE	GY
	DEC	CTXPTR+1
GY	DEC	CTXPTR
	LDX	#0
	DB	$24
JY	PHA
	TXA
	PHA
	LDA	#1
	JSR	A22E5
	JSR	A2D2D
	LDA	#0
	STA	Z9A
A2C62	JSR	CURTCE
HT	SEC
	SBC	#$B1
	BCC	HU
	CMP	#3
	BCS	HU
	CMP	#1
	ROL	A
	EOR	#1
	EOR	Z9A
	CMP	Z9A
	BCC	JM
	STA	Z9A
	JSR	NXTTCE
	JMP	HT
HU	LDX	Z9A
	BNE	HY
	BCS	JP
	ADC	#7
	BCC	JP
	ADC	Z0E
	BNE	HV
	JMP	A3434
HV	ADC	#$FF
	STA	Z6F
	ASL	A
	ADC	Z6F
	TAY
HW	PLA
	CMP	A2068,Y
	BCS	JR
	JSR	A2C37
HX	PHA
A2CA4	JSR	A2CCA
	PLA
	LDY	Z98
	BPL	JL
	TAX
	BEQ	JQ
	BNE	JT
HY	LSR	Z0E
	TXA
	ROL	A
	LDX	CTXPTR
	BNE	HZ
	DEC	CTXPTR+1
HZ	DEC	CTXPTR
	LDY	#$1B
	STA	Z9A
	BNE	HW
JL	CMP	A2068,Y
	BCS	JT
	BCC	HX
A2CCA	LDA	A2068+2,Y
	PHA
	LDA	A2068+1,Y
	PHA
	JSR	A2CDD
	LDA	Z9A
	JMP	JY
JM	JMP	PRSYNE
A2CDD	LDA	ZB3
	LDX	A2068,Y
A2CE2	TAY
	PLA
	STA	Z6F
	INC	Z6F
	PLA
	STA	Z6F+1
	TYA
	PHA
A2CED	JSR	ROUNDA
	LDA	ZB1+1
	PHA
	LDA	ZB1
	PHA
	LDA	ZAF+1
	PHA
	LDA	ZAF
	PHA
	LDA	ZAE
	PHA
	JMP	(Z6F)
JP	LDY	#$FF
	PLA
JQ	BEQ	JU
JR	CMP	#$64
	BEQ	JS
	JSR	A2C37
JS	STY	Z98
JT	PLA
	LSR	A
	STA	Z13
	PLA
	STA	ZB6
	PLA
	STA	ZB7
	PLA
	STA	ZB8
	PLA
	STA	ZB9
	PLA
	STA	ZB9+1
	PLA
	STA	ZBB
	EOR	ZB3
	STA	ZBC
JU	LDA	ZAE
	RTS
;.PAGE
A2D2D	JMP	(EXPVEC)
EXPR	LDA	#0
	STA	Z0E
JV	JSR	NXTTCE
	BCS	JX
JW	JMP	ASC2FP
JX	JSR	A2F33
	BCC	VAA
	JMP	A2DA5
VAA	CMP	#$FF
	BNE	PJX
	LDA	#>ACDBC
	LDY	#<ACDBC
	JSR	MFPACC
	JMP	NXTTCE
ACDBC	DB	$82,$49,$0F,$DA,$A1
PJX	CMP	#'.
	BEQ	JW
	CMP	#$AB
	BEQ	A2D9E
	CMP	#$AA
	BEQ	JV
	CMP	#'"
	BNE	KA
A2D4E	LDA	CTXPTR
	LDY	CTXPTR+1
	ADC	#0
	BCC	JZ
	INY
JZ	JSR	A3288
	JMP	A35DA
KA	CMP	#$A8
	BNE	KB
	LDY	#$18
	BNE	A2DA0
A2D65	JSR	FIX
	LDA	ZB1+1
	EOR	#$FF
	TAY
	LDA	ZB1
	EOR	#$FF
	JMP	A3195
KB	CMP	#$A5
	BNE	KC
	JMP	A31F3
KC	CMP	#$B4
	BCC	A2D82
	JMP	A2DC5
A2D82	JSR	A2D8B
	JSR	A2C48
A2D88	LDA	#')
	DB	$2C
A2D8B	LDA	#'(
	DB	$2C
A2D8E	LDA	#',
CKTERM	LDY	#0
	CMP	(CTXPTR),Y
	BNE	PRSYNE
	JMP	NXTTCE
*		#SYNTEK
PRSYNE	LDX	#11
	JMP	PRERR
;.PAGE
;
;
;
A2D9E	LDY	#$15
A2DA0	PLA
	PLA
	JMP	A2CA4
;
;
;
VAB	SEC
	LDA	FAC+3
	SBC	#0
	LDA	FAC+4
	SBC	#$C0
	BCC	VAC
	LDA	#$87
	SBC	FAC+3
	LDA	#$E3
	SBC	FAC+4
VAC	RTS
;.PAGE
A2DA5	JSR	A2EA9
	STA	ZB1
	STY	ZB1+1
	LDX	Z92
	LDY	Z92+1
	LDA	Z0E
	BEQ	KE
	LDA	#0
	STA	ZBC+1
	JSR	VAB
	BCC	PKE
	CPX	#'T
	BNE	PKE
	CPY	#$C9
	BNE	PKE
	JSR	ACE76
	STY	ZAA+1
	DEY
	STY	ZBE
	LDY	#6
	STY	ZAA
	LDY	#$24
	JSR	ADD3A
	JMP	AD353
PKE	RTS
KE	BIT	Z0F
	BPL	KF
	LDY	#0
	LDA	(ZB1),Y
	TAX
	INY
	LDA	(ZB1),Y
	TAY
	TXA
	JMP	A3195
KF	JSR	VAB
	BCC	ACE90
	CPX	#'T
	BNE	ACE82
	CPY	#'I
	BNE	ACE90
	JSR	ACE76
	TYA
	LDX	#$A0
	JMP	ADB21
;
;
;
ACE76	JSR	RCLKE
	STX	FAC+3
	STY	FAC+2
	STA	FAC+4
	LDY	#0
	STY	FAC+1
	RTS
;
;
;
ACE82	CPX	#'S
	BNE	ACE90
	CPY	#'T
	BNE	ACE90
	JSR	RSTATE
	JMP	A3AB4
ACE90	LDA	ZB1
	LDY	ZB1+1
	JMP	MFPACC
;.PAGE
A2DC5	ASL	A
	PHA
	TAX
	JSR	NXTTCE
	CPX	#$8F
	BCC	KG
	JSR	A2D8B
	JSR	A2C48
	JSR	A2D8E
	JSR	A2C39
	PLA
	TAX
	LDA	ZB1+1
	PHA
	LDA	ZB1
	PHA
	TXA
	PHA
	JSR	A3595
	PLA
	TAY
	TXA
	PHA
	JMP	KH
KG	JSR	A2D82
	PLA
	TAY
KH	LDA	ROUTAD-34,Y
	STA	ZA2
	LDA	ROUTAD-33,Y
	STA	ZA2+1
	JSR	ZA1
	JMP	A2C37
;.PAGE
A2E04	LDY	#$FF
	DB	$2C
A2E07	LDY	#0
	STY	Z0C
	JSR	FIX
	LDA	ZB1
	EOR	Z0C
	STA	Z0A
	LDA	ZB1+1
	EOR	Z0C
	STA	Z0B
	JSR	A3A74
	JSR	FIX
	LDA	ZB1+1
	EOR	Z0C
	AND	Z0B
	EOR	Z0C
	TAY
	LDA	ZB1
	EOR	Z0C
	AND	Z0A
	EOR	Z0C
	JMP	A3195
;.PAGE
A2E34	JSR	A2C3A
	BCS	KJ
	LDA	ZBB
	ORA	#$7F
	AND	ZB7
	STA	ZB7
	LDA	#>ZB6
	LDY	#<ZB6
	JSR	A3AD3
	TAX
	JMP	A2E7F
KJ	LDA	#0
	STA	Z0E
	DEC	Z9A
	JSR	A349D
	STA	ZAE
	STX	ZAF
	STY	ZAF+1
	LDA	ZB9
	LDY	ZB9+1
	JSR	A34A1
	STX	ZB9
	STY	ZB9+1
	TAX
	SEC
	SBC	ZAE
	BEQ	KK
	LDA	#1
	BCC	KK
	LDX	ZAE
	LDA	#$FF
KK	STA	ZB3
	LDY	#$FF
	INX
KL	INY
	DEX
	BNE	KM
	LDX	ZB3
A2E7F	BMI	KN
	CLC
	BCC	KN
KM	LDA	(ZB9),Y
	CMP	(ZAF),Y
	BEQ	KL
	LDX	#$FF
	BCS	KN
	LDX	#1
KN	INX
	TXA
	ROL	A
	AND	Z13
	BEQ	KP
	LDA	#$FF
KP	JMP	A3AB4
KQ	JSR	A2D8E
A2E9F	TAX
	JSR	A2EAE
	JSR	CURTCE
	BNE	KQ
	RTS
;.PAGE
;
;
;
A2EA9	LDX	#0
	JSR	CURTCE
A2EAE	STX	Z0D
;
;	STORE 1st character OF variable NAME
;
A2EB0	STA	Z92
	JSR	CURTCE
	JSR	A2F33
	BCS	HK
HS	JMP	PRSYNE
HK	LDX	#0
	STX	Z0E
	STX	Z0F
	JSR	NXTTCE
	BCC	HL
	JSR	A2F33
	BCC	HN
;
;	HOLD 2nd character IN 'X'
;
HL	TAX
HM	JSR	NXTTCE
	BCC	HM
	JSR	A2F33
	BCS	HM
HN	CMP	#'$
	BNE	HP
;
;	SET STRING FLAG
;
	LDA	#$FF
	STA	Z0E
	BNE	HQ
HP	CMP	#'%
	BNE	HR
	LDA	Z11
	BNE	HS
	LDA	#$80
	STA	Z0F
;
;	SET BIT IN 1st character
;
	ORA	Z92
	STA	Z92
HQ	TXA
	ORA	#$80
	TAX
	JSR	NXTTCE
;
;	STORE 2nd character OF variable NAME
;
HR	STX	Z92+1
	SEC
	ORA	Z11
	SBC	#'(
	BNE	MA
	JMP	A2FD4
;
;	LOCATE variable
;
MA	LDY	#0
	STY	Z11
;
;	POINT TO START OF SIMPLE variables
;
	LDA	VASPTR
	LDX	VASPTR+1
NA	STX	ZAC+1
NB	STA	ZAC
;
;	CHECK FOR END OF SIMPLE variables
;
	CPX	ARSPTR+1
	BNE	NC
	CMP	ARSPTR
	BEQ	NF
NC	LDA	Z92
	CMP	(ZAC),Y
	BNE	ND
	LDA	Z92+1
	INY
	CMP	(ZAC),Y
	BEQ	PL
	DEY
ND	CLC
	LDA	ZAC
	ADC	#7
	BCC	NB
	INX
	BNE	NA
;
;	SUBROUTINE FOR 'A' TO 'Z' TEST
;
A2F33	CMP	#'A
	BCC	NE
	SBC	#$5B
	SEC
	SBC	#$A5
NE	RTS
;
;	Variable NOT IN SIMPLE variable ARRAY
;
NF	PLA
	PHA
	CMP	#$2A
	BNE	PNG
PNK	LDA	#>NRDE1F
	LDY	#<NRDE1F
	RTS
PNG	LDA	Z92
	LDY	Z92+1
	CMP	#'T
	BNE	PNJ
	CPY	#$C9
	BEQ	PNK
	CPY	#'I
	BNE	PNJ
PNH	JMP	PRSYNE
PNJ	CMP	#'S
	BNE	NG
	CPY	#'T
	BEQ	PNH
NG	LDA	ARSPTR
	LDY	ARSPTR+1
	STA	ZAC
	STY	ZAC+1
	LDA	AREPTR
	LDY	AREPTR+1
	STA	ZA7
	STY	ZA7+1
	CLC
	ADC	#7
	BCC	NH
	INY
NH	STA	ZA5
	STY	ZA5+1
	JSR	A22A2
	LDA	ZA5
	LDY	ZA5+1
	INY
	STA	ARSPTR
	STY	ARSPTR+1
	LDY	#0
	LDA	Z92
	STA	(ZAC),Y
	INY
	LDA	Z92+1
	STA	(ZAC),Y
	LDA	#0
	INY
	STA	(ZAC),Y
	INY
	STA	(ZAC),Y
	INY
	STA	(ZAC),Y
	INY
	STA	(ZAC),Y
	INY
	STA	(ZAC),Y
PL	LDA	ZAC
	CLC
	ADC	#2
	LDY	ZAC+1
	BCC	NJ
	INY
NJ	STA	Z94
	STY	Z94+1
	RTS
;.PAGE
A2FA3	LDA	Z0C
	ASL	A
	ADC	#5
	ADC	ZAC
	LDY	ZAC+1
	BCC	NK
	INY
NK	STA	ZA5
	STY	ZA5+1
	RTS
;.PAGE
;
;
;
A2FB4	DB	$90,$80,0,0,0
;
;
;
FL2FIX	JSR	FIX
	LDA	FAC+3
	LDY	FAC+4
	RTS
;
;
;
A2FB8	JSR	NXTTCE
	JSR	A2C48
A2FBE	JSR	A2C37
	LDA	ZB3
	BMI	NL
;
;	CONVERT FAC TO INTEGER IN ZB1,2
;
FIX	LDA	ZAE
	CMP	#$90
	BCC	NM
	LDA	#>A2FB4
	LDY	#<A2FB4
	JSR	A3AD3
NL	BNE	A304B
NM	JMP	A3B13
;.PAGE
A2FD4	LDA	Z0D
	ORA	Z0F
	PHA
	LDA	Z0E
	PHA
	LDY	#0
NN	TYA
	PHA
	LDA	Z92+1
	PHA
	LDA	Z92
	PHA
	JSR	A2FB8
	PLA
	STA	Z92
	PLA
	STA	Z92+1
	PLA
	TAY
	TSX
	LDA	BSTACK+2,X
	PHA
	LDA	BSTACK+1,X
	PHA
	LDA	ZB1
	STA	BSTACK+2,X
	LDA	ZB1+1
	STA	BSTACK+1,X
	INY
	JSR	CURTCE
	CMP	#',
	BEQ	NN
	STY	Z0C
	JSR	A2D88
	PLA
	STA	Z0E
	PLA
	STA	Z0F
	AND	#$7F
	STA	Z0D
	LDX	ARSPTR
	LDA	ARSPTR+1
NP	STX	ZAC
	STA	ZAC+1
	CMP	AREPTR+1
	BNE	NQ
	CPX	AREPTR
	BEQ	NV
NQ	LDY	#0
	LDA	(ZAC),Y
	INY
	CMP	Z92
	BNE	NR
	LDA	Z92+1
	CMP	(ZAC),Y
	BEQ	NU
NR	INY
	LDA	(ZAC),Y
	CLC
	ADC	ZAC
	TAX
	INY
	LDA	(ZAC),Y
	ADC	ZAC+1
	BCC	NP
NS	LDX	#18
	DB	$2C
A304B	LDX	#14
NT	JMP	PRERR
NU	LDX	#19
	LDA	Z0D
	BNE	NT
	JSR	A2FA3
	LDA	Z0C
	LDY	#4
	CMP	(ZAC),Y
	BNE	NS
	JMP	PV
NV	JSR	A2FA3
	JSR	A22F2
	LDY	#0
	STY	ZBE+1
	LDX	#5
	LDA	Z92
	STA	(ZAC),Y
	BPL	NW
	DEX
NW	INY
	LDA	Z92+1
	STA	(ZAC),Y
	BPL	NX
	DEX
	DEX
NX	STX	ZBE
	LDA	Z0C
	INY
	INY
	INY
	STA	(ZAC),Y
NY	LDX	#$0B
	LDA	#$00
	BIT	Z0D
	BVC	NZ
	PLA
	CLC
	ADC	#1
	TAX
	PLA
	ADC	#0
NZ	INY
	STA	(ZAC),Y
	INY
	TXA
	STA	(ZAC),Y
	JSR	A3150
	STX	ZBE
	STA	ZBE+1
	LDY	Z6F
	DEC	Z0C
	BNE	NY
	ADC	ZA5+1
	BCS	JMPDF
	STA	ZA5+1
	TAY
	TXA
	ADC	ZA5
	BCC	PA
	INY
	BEQ	JMPDF
PA	JSR	A22F2
	STA	AREPTR
	STY	AREPTR+1
	LDA	#0
	INC	ZBE+1
	LDY	ZBE
	BEQ	PC
PB	DEY
	STA	(ZA5),Y
	BNE	PB
PC	DEC	ZA5+1
	DEC	ZBE+1
	BNE	PB
	INC	ZA5+1
	SEC
	LDA	AREPTR
	SBC	ZAC
	LDY	#2
	STA	(ZAC),Y
	LDA	AREPTR+1
	INY
	SBC	ZAC+1
	STA	(ZAC),Y
	LDA	Z0D
	BNE	RTSP
	INY
PV	LDA	(ZAC),Y
	STA	Z0C
	LDA	#0
	STA	ZBE
PD	STA	ZBE+1
	INY
	PLA
	TAX
	STA	ZB1
	PLA
	STA	ZB1+1
	CMP	(ZAC),Y
	BCC	PF
	BNE	PE
	INY
	TXA
	CMP	(ZAC),Y
	BCC	PG
PE	JMP	NS
JMPDF	JMP	PROME
PF	INY
PG	LDA	ZBE+1
	ORA	ZBE
	CLC
	BEQ	PH
	JSR	A3150
	TXA
	ADC	ZB1
	TAX
	TYA
	LDY	Z6F
PH	ADC	ZB1+1
	STX	ZBE
	DEC	Z0C
	BNE	PD
	STA	ZBE+1
	LDX	#5
	LDA	Z92
	BPL	PJ
	DEX
PJ	LDA	Z92+1
	BPL	PK
	DEX
	DEX
PK	STX	Z75
	LDA	#0
	JSR	A3159
	TXA
	ADC	ZA5
	STA	Z94
	TYA
	ADC	ZA5+1
	STA	Z94+1
	TAY
	LDA	Z94
RTSP	RTS
;.PAGE
A3150	STY	Z6F
	LDA	(ZAC),Y
	STA	Z75
	DEY
	LDA	(ZAC),Y
A3159	STA	Z75+1
	LDA	#16
	STA	ZAA
	LDX	#0
	LDY	#0
MJ	TXA
	ASL	A
	TAX
	TYA
	ROL	A
	TAY
	BCS	JMPDF
	ASL	ZBE
	ROL	ZBE+1
	BCC	MK
	CLC
	TXA
	ADC	Z75
	TAX
	TYA
	ADC	Z75+1
	TAY
	BCS	JMPDF
MK	DEC	ZAA
	BNE	MJ
	RTS
;.PAGE
;
;	FRE
;
A3181	LDA	Z0E
	BEQ	ML
	JSR	A349D
ML	JSR	A3321
	SEC
	LDA	STRPTR
	SBC	AREPTR
	TAY
	LDA	STRPTR+1
	SBC	AREPTR+1
;
;	CONVERT INTEGER ('A'=MSB,'Y'=LSB)
;	TO VALUE IN FAC
;
A3195	LDX	#0
	STX	Z0E
	STA	ZAF
	STY	ZAF+1
	LDX	#$90
	JMP	A3ABC
;
;	POS
;
A31A2	SEC
	JSR	PLOTE
A31A4	LDA	#0
	BEQ	A3195
;
;
;
CKIDIR	LDX	CURLNO+1
	INX
	BNE	RTSP
*		#ILDIRK
	LDX	#21
	DB	$2C
RETB	LDX	#27
	JMP	PRERR
;.PAGE
A31B2	JSR	A31E0
	JSR	CKIDIR
	JSR	A2D8B
	LDA	#$80
	STA	Z11
	JSR	A2EA9
	JSR	A2C37
	JSR	A2D88
	LDA	#$B2
	JSR	CKTERM
	PHA
	LDA	Z94+1
	PHA
	LDA	Z94
	PHA
	LDA	CTXPTR+1
	PHA
	LDA	CTXPTR
	PHA
	JSR	VDATA
	JMP	A3250
;
;
;
A31E0	LDA	#$A5
	JSR	CKTERM
	ORA	#$80
	STA	Z11
	JSR	A2EB0
	STA	Z9B
	STY	Z9B+1
	JMP	A2C37
;.PAGE
A31F3	JSR	A31E0
	LDA	Z9B+1
	PHA
	LDA	Z9B
	PHA
	JSR	A2D82
	JSR	A2C37
	PLA
	STA	Z9B
	PLA
	STA	Z9B+1
	LDY	#2
	LDA	(Z9B),Y
	STA	Z94
	TAX
	INY
	LDA	(Z9B),Y
	BEQ	RETB
	STA	Z94+1
	INY
MN	LDA	(Z94),Y
	PHA
	DEY
	BPL	MN
	LDY	Z94+1
	JSR	A3A4C
	LDA	CTXPTR+1
	PHA
	LDA	CTXPTR
	PHA
	LDA	(Z9B),Y
	STA	CTXPTR
	INY
	LDA	(Z9B),Y
	STA	CTXPTR+1
	LDA	Z94+1
	PHA
	LDA	Z94
	PHA
	JSR	A2C34
	PLA
	STA	Z9B
	PLA
	STA	Z9B+1
	JSR	CURTCE
	BEQ	MP
	JMP	PRSYNE
MP	PLA
	STA	CTXPTR
	PLA
	STA	CTXPTR+1
A3250	LDY	#0
	PLA
	STA	(Z9B),Y
	PLA
	INY
	STA	(Z9B),Y
	PLA
	INY
	STA	(Z9B),Y
	PLA
	INY
	STA	(Z9B),Y
	PLA
	INY
	STA	(Z9B),Y
	RTS
;.PAGE
;
;	STR$
;
A3266	JSR	A2C37
	LDY	#0
	JSR	A3C6B
	PLA
	PLA
AD353	LDA	#$FF
	LDY	#0
	BEQ	A3288
;
;
;
A3276	LDX	ZB1
	LDY	ZB1+1
	STX	Z9D
	STY	Z9D+1
A327E	JSR	A32EF
	STX	ZAF
	STY	ZAF+1
	STA	ZAE
	RTS
;.PAGE
A3288	LDX	#'"
	STX	Z0A
	STX	Z0B
A328E	STA	ZBC
	STY	ZBC+1
	STA	ZAF
	STY	ZAF+1
	LDY	#-1
BA	INY
	LDA	(ZBC),Y
	BEQ	BG
	CMP	Z0A
	BEQ	BF
	CMP	Z0B
	BNE	BA
BF	CMP	#'"
	BEQ	BH
BG	CLC
BH	STY	ZAE
	TYA
	ADC	ZBC
	STA	ZBE
	LDX	ZBC+1
	BCC	BJ
	INX
BJ	STX	ZBE+1
	LDA	ZBC+1
	BEQ	NRBJ
	CMP	#<CONBUF
	BNE	A32C7
NRBJ	TYA
	JSR	A3276
	LDX	ZBC
	LDY	ZBC+1
	JSR	A347F
A32C7	LDX	Z63
	CPX	#>Z6F
	BNE	BP
	LDX	#25
EA	JMP	PRERR
BP	LDA	ZAE
	STA	ZPSTRT,X
	LDA	ZAF
	STA	ZPSTRT+1,X
	LDA	ZAF+1
	STA	ZPSTRT+2,X
	LDY	#0
	STX	ZB1
	STY	ZB1+1
	STY	ZBC+1
	DEY
	STY	Z0E
	STX	Z64
	INX
	INX
	INX
	STX	Z63
	RTS
;.PAGE
A32EF	LSR	Z10
EB	PHA
	EOR	#$FF
	SEC
	ADC	STRPTR
	LDY	STRPTR+1
	BCS	DX
	DEY
DX	CPY	AREPTR+1
	BCC	DZ
	BNE	DY
	CMP	AREPTR
	BCC	DZ
DY	STA	STRPTR
	STY	STRPTR+1
	STA	Z82
	STY	Z82+1
	TAX
	PLA
	RTS
DZ	LDX	#16
	LDA	Z10
	BMI	EA
	JSR	A3321
	LDA	#$80
	STA	Z10
	PLA
	BNE	EB
;.PAGE
A3321	LDX	HMEPTR
	LDA	HMEPTR+1
A3325	STX	STRPTR
	STA	STRPTR+1
	LDY	#0
	STY	Z9B+1
	STY	Z9B
	LDA	AREPTR
	LDX	AREPTR+1
	STA	ZAC
	STX	ZAC+1
	LDA	#>Z66
	LDX	#<Z66
	STA	Z6F
	STX	Z6F+1
DG	CMP	Z63
	BEQ	DH
	JSR	A33C0
	BEQ	DG
DH	LDA	#7
	STA	ZA0
	LDA	VASPTR
	LDX	VASPTR+1
	STA	Z6F
	STX	Z6F+1
DJ	CPX	ARSPTR+1
	BNE	DK
	CMP	ARSPTR
	BEQ	DL
DK	JSR	A33B6
	BEQ	DJ
DL	STA	ZA5
	STX	ZA5+1
	LDA	#3
	STA	ZA0
DU	LDA	ZA5
	LDX	ZA5+1
DV	CPX	AREPTR+1
	BNE	DM
	CMP	AREPTR
	BNE	DM
	JMP	A33FF
DM	STA	Z6F
	STX	Z6F+1
	LDY	#0
	LDA	(Z6F),Y
	TAX
	INY
	LDA	(Z6F),Y
	PHP
	INY
	LDA	(Z6F),Y
	ADC	ZA5
	STA	ZA5
	INY
	LDA	(Z6F),Y
	ADC	ZA5+1
	STA	ZA5+1
	PLP
	BPL	DU
	TXA
	BMI	DU
	INY
	LDA	(Z6F),Y
	LDY	#0
	ASL	A
	ADC	#5
	ADC	Z6F
	STA	Z6F
	BCC	DW
	INC	Z6F+1
DW	LDX	Z6F+1
DP	CPX	ZA5+1
	BNE	DN
	CMP	ZA5
	BEQ	DV
DN	JSR	A33C0
	BEQ	DP
;.PAGE
A33B6	LDA	(Z6F),Y
	BMI	DS
	INY
	LDA	(Z6F),Y
	BPL	DS
	INY
A33C0	LDA	(Z6F),Y
	BEQ	DS
	INY
	LDA	(Z6F),Y
	TAX
	INY
	LDA	(Z6F),Y
	CMP	STRPTR+1
	BCC	DQ
	BNE	DS
	CPX	STRPTR
	BCS	DS
DQ	CMP	ZAC+1
	BCC	DS
	BNE	DR
	CPX	ZAC
	BCC	DS
DR	STX	ZAC
	STA	ZAC+1
	LDA	Z6F
	LDX	Z6F+1
	STA	Z9B
	STX	Z9B+1
	LDA	ZA0
	STA	ZA2
DS	LDA	ZA0
	CLC
	ADC	Z6F
	STA	Z6F
	BCC	DT
	INC	Z6F+1
DT	LDX	Z6F+1
	LDY	#0
	RTS
;.PAGE
A33FF	LDA	Z9B+1
	ORA	Z9B
	BEQ	DT
	LDA	ZA2
	AND	#$04
	LSR	A
	TAY
	STA	ZA2
	LDA	(Z9B),Y
	ADC	ZAC
	STA	ZA7
	LDA	ZAC+1
	ADC	#0
	STA	ZA7+1
	LDA	STRPTR
	LDX	STRPTR+1
	STA	ZA5
	STX	ZA5+1
	JSR	A22A9
	LDY	ZA2
	INY
	LDA	ZA5
	STA	(Z9B),Y
	TAX
	INC	ZA5+1
	LDA	ZA5+1
	INY
	STA	(Z9B),Y
	JMP	A3325
;.PAGE
A3434	LDA	ZB1+1
	PHA
	LDA	ZB1
	PHA
	JSR	A2D2D
AD51E	JSR	A2C39
	PLA
	STA	ZBC
	PLA
	STA	ZBC+1
	LDY	#0
	LDA	(ZBC),Y
	CLC
	ADC	(ZB1),Y
	BCC	MH
	LDX	#23
	JMP	PRERR
MH	JSR	A3276
	JSR	A3471
	LDA	Z9D
	LDY	Z9D+1
	JSR	A34A1
	JSR	A3483
	LDA	ZBC
	LDY	ZBC+1
	JSR	A34A1
	JSR	A32C7
	JMP	A2C62
;.PAGE
A3471	LDY	#0
	LDA	(ZBC),Y
	PHA
	INY
	LDA	(ZBC),Y
	TAX
	INY
	LDA	(ZBC),Y
	TAY
	PLA
A347F	STX	Z6F
	STY	Z6F+1
A3483	TAY
	BEQ	JK
	PHA
JA	DEY
	LDA	(Z6F),Y
	STA	(Z82),Y
	TYA
	BNE	JA
	PLA
JK	CLC
	ADC	Z82
	STA	Z82
	BCC	JB
	INC	Z82+1
JB	RTS
;.PAGE
A349A	JSR	A2C39
A349D	LDA	ZB1
	LDY	ZB1+1
A34A1	STA	Z6F
	STY	Z6F+1
	JSR	A34D2
	PHP
	LDY	#0
	LDA	(Z6F),Y
	PHA
	INY
	LDA	(Z6F),Y
	TAX
	INY
	LDA	(Z6F),Y
	TAY
	PLA
	PLP
	BNE	BR
	CPY	STRPTR+1
	BNE	BR
	CPX	STRPTR
	BNE	BR
	PHA
	CLC
	ADC	STRPTR
	STA	STRPTR
	BCC	BQ
	INC	STRPTR+1
BQ	PLA
BR	STX	Z6F
	STY	Z6F+1
	RTS
;.PAGE
A34D2	CPY	Z65
	BNE	RTSD
	CMP	Z64
	BNE	RTSD
	STA	Z63
	SBC	#3
	STA	Z64
	LDY	#0
RTSD	RTS
;
;	CHR$
;
A34E3	JSR	A3598
	TXA
	PHA
	LDA	#1
	JSR	A327E
	PLA
	LDY	#0
	STA	(ZAF),Y
	PLA
	PLA
	JMP	A32C7
;.PAGE
;
;	LEFT$
;
A34F7	JSR	A3556
	CMP	(Z9D),Y
	TYA
A34FD	BCC	MB
	LDA	(Z9D),Y
	TAX
	TYA
MB	PHA
MF	TXA
MG	PHA
	JSR	A327E
	LDA	Z9D
	LDY	Z9D+1
	JSR	A34A1
	PLA
	TAY
	PLA
	CLC
	ADC	Z6F
	STA	Z6F
	BCC	MC
	INC	Z6F+1
MC	TYA
	JSR	A3483
	JMP	A32C7
;
;	RIGHT$
;
A3523	JSR	A3556
	CLC
	SBC	(Z9D),Y
	EOR	#$FF
	JMP	A34FD
;.PAGE
A352E	LDA	#$FF
	STA	ZB1+1
	JSR	CURTCE
	CMP	#')
	BEQ	MD
	JSR	A2D8E
	JSR	A3595
MD	JSR	A3556
	BEQ	A358F
	DEX
	TXA
	PHA
	CLC
	LDX	#0
	SBC	(Z9D),Y
	BCS	MF
	EOR	#$FF
	CMP	ZB1+1
	BCC	MG
	LDA	ZB1+1
	BCS	MG
A3556	JSR	A2D88
	PLA
	TAY
	PLA
	STA	ZA2
	PLA
	PLA
	PLA
	TAX
	PLA
	STA	Z9D
	PLA
	STA	Z9D+1
	LDA	ZA2
	PHA
	TYA
	PHA
	LDY	#0
	TXA
	RTS
;.PAGE
;
;	LEN
;
A3573	JSR	A3579
	JMP	A31A4
;
;
;
A3579	JSR	A349A
	LDX	#0
	STX	Z0E
	TAY
	RTS
;
;	ASC
;
A3582	JSR	A3579
	BEQ	A358F
	LDY	#0
	LDA	(Z6F),Y
	TAY
	JMP	A31A4
;
;
;
A358F	JMP	A304B
A3592	JSR	NXTTCE
A3595	JSR	A2C34
A3598	JSR	A2FBE
	LDX	ZB1
	BNE	A358F
	LDX	ZB1+1
	JMP	CURTCE
;.PAGE
;
;	VAL
;
A35A4	JSR	A3579
	BNE	SU
	JMP	A36E3
SU	LDX	CTXPTR
	LDY	CTXPTR+1
	STX	ZBE
	STY	ZBE+1
	LDX	Z6F
	STX	CTXPTR
	CLC
	ADC	Z6F
	STA	Z71
	LDX	Z6F+1
	STX	CTXPTR+1
	BCC	SV
	INX
SV	STX	Z71+1
	LDY	#0
	LDA	(Z71),Y
	PHA
	TYA
	STA	(Z71),Y
	JSR	CURTCE
	JSR	ASC2FP
	PLA
	LDY	#0
	STA	(Z71),Y
A35DA	LDX	ZBE
	LDY	ZBE+1
	STX	CTXPTR
	STY	CTXPTR+1
	RTS
;
;
;
A35E3	JSR	A2C34
	JSR	A35EF
A35E9	JSR	A2D8E
	JMP	A3595
;
;
;
A35EF	LDA	ZB3
	BMI	A358F
	LDA	ZAE
	CMP	#$91
	BCS	A358F
	JSR	A3B13
	LDA	ZB1
	LDY	ZB1+1
	STY	Z19
	STA	Z19+1
	RTS
;.PAGE
;
;	PEEK
;
A3605	LDA	Z19+1
	PHA
	LDA	Z19
	PHA
	JSR	A35EF
	LDY	#0
	LDA	(Z19),Y
	TAY
	PLA
	STA	Z19
	PLA
	STA	Z19+1
	JMP	A31A4
;
;
;
A3610	JSR	A35E3
	TXA
	LDY	#0
	STA	(Z19),Y
	RTS
;
;	WAIT
;
A3619	JSR	A35E3
	STX	Z96
	LDX	#0
	JSR	CURTCE
	BEQ	SW
	JSR	A35E9
SW	STX	Z96+1
	LDY	#0
SXX	LDA	(Z19),Y
	EOR	Z96+1
	AND	Z96
	BEQ	SXX
RTSS	RTS
;.PAGE
A3635	LDA	#>A3D99
	LDY	#<A3D99
	JMP	A3653
A363C	JSR	A3904
;
;	FAC = FARG - FAC
;
FPSUB	LDA	ZB3
	EOR	#$FF
	STA	ZB3
	EOR	ZBB
	STA	ZBC
	LDA	ZAE
	JMP	FPADD
	INCLUDE	VFPP1.ias
	INCLUDE	VFPP2.ias
;.PAGE
;
;	Branch if RS-232 open
;
VAE	CMP	#$F0
	BNE	VAF
;
;	Reset 'HIMEM' and clear
;
	STY	HMEPTR+1
	STX	HMEPTR
	JMP	DOCLR
;
;
;
VAF	TAX
	BNE	VAG
	LDX	#30
VAG	JMP	PRERR
;
;
;
COCH	JSR	OUTCH
	BCS	VAE
	RTS
;
;
;
CICH	JSR	INPCH
	BCS	VAE
	RTS
;
;
;
CSODV	JSR	SETOPD
	BCS	VAE
	RTS
;
;
;
CSIDV	JSR	SETIPD
	BCS	VAE
	RTS
;
;
;
CGCH	JSR	GETCH
	BCS	VAE
	RTS
;.PAGE
;
;	SYS
;
SYS	JSR	A2C34
	JSR	A35EF
	LDA	#<SYSRET-1
	PHA
	LDA	#>SYSRET-1
	PHA
	LDA	SAVEP
	PHA
	LDA	SAVEA
	LDX	SAVEX
	LDY	SAVEY
	PLP
	JMP	(Z19)
SYSRET	PHP
	STA	SAVEA
	STX	SAVEX
	STY	SAVEY
	PLA
	STA	SAVEP
	RTS
;.PAGE
;
;
;
CSAVE	JSR	AF433
	LDX	VASPTR
	LDY	VASPTR+1
	LDA	#$2B
	JSR	VSAVE
	BCS	VAE
	RTS
;
;
;
VERIFY	LDA	#1
	DB	$2C
CLOAD	LDA	#0
	STA	A020B
	JSR	AF433
	LDA	A020B
	LDX	TXSPTR
	LDY	TXSPTR+1
	JSR	VLOAD
	BCS	JVAE
	LDA	A020B
	BEQ	DOL
	LDX	#$1C
	JSR	RSTATE
	AND	#$10
	BEQ	VAH
	JMP	PRERR
;
;
;
VAH	LDA	CTXPTR
	CMP	#<CONBUF
	BEQ	VAJ
;
;
;
	LDA	#>OKK
	LDY	#<OKK
	JMP	OPSTRA
;
;
;
VAJ	RTS
;
;
;
DOL	JSR	RSTATE
	AND	#$BF
	BEQ	PAP
	LDX	#29
	JMP	PRERR
PAP	LDA	CTXPTR+1
	CMP	#<CONBUF
	BNE	PAQ
	STX	VASPTR
	STY	VASPTR+1
	LDA	#>READYK
	LDY	#<READYK
	JSR	OPSTRA
	JMP	A23EE
PAQ	JSR	ICTPTR
	JMP	PATCH
;
;
;
COPEN	JSR	AF4D4
	JSR	VOPEN
	BCS	JVAE
	RTS
;
;
;
CCLOSE	JSR	AF4D4
	LDA	Z96
	JSR	VCLOSE
	BCC	VAJ
JVAE	JMP	VAE
;
;	PARSING FOR 'LOAD', 'SAVE' AND 'VERIFY'
;
AF433	LDA	#$00
	JSR	SFNAME
	LDX	#$01
	LDY	#$00
	JSR	SIOPE
	JSR	AF515
	JSR	AF504
	JSR	AF515
	JSR	AF45C
	LDY	#0
	STX	Z96
	JSR	SIOPE
	JSR	AF515
	JSR	AF45C
	TXA
	TAY
	LDX	Z96
	JMP	SIOPE
;
;
;
AF45C	JSR	AF51D
	JMP	A3595
;
;
;
AF515	JSR	CURTCE
	BNE	RTSV
	PLA
	PLA
RTSV	RTS
;
;
;
AF51D	JSR	A2D8E
AF522	JSR	CURTCE
	BNE	RTSV
	JMP	PRSYNE
;
;	PARSING FOR 'OPEN' AND 'CLOSE'
;
AF4D4	LDA	#0
	JSR	SFNAME
	JSR	AF522
	JSR	A3595
	STX	Z96
	TXA
	LDX	#$01
	LDY	#$00
	JSR	SIOPE
	JSR	AF515
	JSR	AF45C
	STX	Z96+1
	LDY	#0
	LDA	Z96
	CPX	#$03
	BCC	VAN
	DEY
VAN	JSR	SIOPE
	JSR	AF515
	JSR	AF45C
	TXA
	TAY
	LDX	Z96+1
	LDA	Z96
	JSR	SIOPE
	JSR	AF515
	JSR	AF51D
AF504	JSR	A2C48
	JSR	A349A
	LDX	Z6F
	LDY	Z6F+1
	JMP	SFNAME
;.PAGE
	INCLUDE	VFPP3.ias
	INCLUDE	VFPP4.ias
;.PAGE 'Cold start logic'
;
;
;
COLDST	JSR	CSSUB3
	JSR	CSSUB1
	JSR	CSSUB2
	LDX	#$FB
	TXS
	JMP	GETNXT
;.PAGE 'Cold start constants'
;
;	Page zero BASIC text character get routine
;
A4041	INC	CTXPTR
	BNE	AT
	INC	CTXPTR+1
AT	LDA	AEA60
	CMP	#$3A
	BCS	RTSA
	CMP	#SPACE
	BEQ	A4041
	SEC
	SBC	#'0
	SEC
	SBC	#$D0
RTSA	RTS
;
;	Random number seed
;
	DB	$80,$4F,$C7,$52,$58
;.PAGE 'COLD START SUBROUTINES'
;
;
;
CSSUB1	LDA	#$4C
	STA	ZA1
	STA	USERFN
	LDA	#>A304B
	LDY	#<A304B
	STA	USERFN+1
	STY	USERFN+2
	LDA	#>A3195
	LDY	#<A3195
	STA	FX2FLV
	STY	FX2FLV+1
	LDA	#>FL2FIX
	LDY	#<FL2FIX
	STA	FL2FXV
	STY	FL2FXV+1
	LDX	#28
MVLP	LDA	A4041,X
	STA	NXTTCE,X
	DEX
	BPL	MVLP
	LDA	#3
	STA	ZA0
	LDA	#0
	STA	ZB5
	STA	CURDVC
	STA	Z65
	LDX	#1
	STX	CONBUF-3
	STX	CONBUF-4
	LDX	#>Z66
	STX	Z63
	SEC
	JSR	LOMEME
	STX	TXSPTR
	STY	TXSPTR+1
	SEC
	JSR	HIMEME
	STX	HMEPTR
	STY	HMEPTR+1
	STX	STRPTR
	STY	STRPTR+1
	LDY	#0
	TYA
	STA	(TXSPTR),Y
	INC	TXSPTR
	BNE	CS1EX
	INC	TXSPTR+1
CS1EX	RTS
;
;
;
CSSUB2	LDA	TXSPTR
	LDY	TXSPTR+1
	JSR	A22F2
	LDA	#>CBMBAS
	LDY	#<CBMBAS
	JSR	OPSTRA
	LDA	HMEPTR
	SEC
	SBC	TXSPTR
	TAX
	LDA	HMEPTR+1
	SBC	TXSPTR+1
	JSR	A3C59
	LDA	#>FREE
	LDY	#<FREE
	JSR	OPSTRA
	JMP	DONEW
;
;
;
FREE	ASC	' BYTES FREE'
	DB	$0D,0
CBMBAS	DB	$93
	ASC	'**** CBM BASIC V2 ****'
	DB	$0D,0
VECSK	DW	DSPLE
	DW	DWARM
	DW	GENTKN
	DW	EXPTKN
	DW	STRTNL
	DW	EXPR
;
;
;
CSSUB3	LDX	#11
MVECLP	LDA	VECSK,X
	STA	BAEVEC,X
	DEX
	BPL	MVECLP
	RTS
;.PAGE 'Warm start'
;
;
;
WARMST	JSR	RESTIO
	LDA	#0
	STA	CURDVC
	JSR	A2555
	CLI
	JMP	GETNXT
;
;
;
	ASC	'A'
;
;
;
PATCH	JSR	NRC442
	JMP	AC581
;.PAGE 'THE END'
*	.END


 db $ff,$ff,$ff,$ff
