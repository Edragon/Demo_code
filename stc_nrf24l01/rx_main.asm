;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Fri Dec 23 00:32:50 2016
;--------------------------------------------------------
	.module rx_main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _UART_INIT
	.globl _hprintf
	.globl _sprintf
	.globl _nrf24_getData
	.globl _nrf24_dataReady
	.globl _nrf24_config
	.globl _nrf24_tx_address
	.globl _nrf24_rx_address
	.globl _nrf24_init
	.globl _CCF0
	.globl _CCF1
	.globl _CR
	.globl _CF
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PADC
	.globl _PLVD
	.globl _PPCA
	.globl _EADC
	.globl _ELVD
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _SPDAT
	.globl _SPSTAT
	.globl _SPCTL
	.globl _ADC_RESL
	.globl _ADC_RES
	.globl _ADC_CONTR
	.globl _P1ASF
	.globl _PCA_PWM1
	.globl _PCA_PWM0
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CH
	.globl _CL
	.globl _CMOD
	.globl _CCON
	.globl _WDT_CONTR
	.globl _BRT
	.globl _S2BUF
	.globl _S2CON
	.globl _SADDR
	.globl _SADEN
	.globl _P5M1
	.globl _P5M0
	.globl _P4SW
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _P5
	.globl _P4
	.globl _IP2H
	.globl _IP2
	.globl _IPH
	.globl _IE2
	.globl _BUS_SPEED
	.globl _CLK_DIV
	.globl _WAKE_CLKO
	.globl _AUXR1
	.globl _AUXR
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _rx_address
	.globl _tx_address
	.globl _data_array
	.globl _q
	.globl _temp
	.globl _nrf24_setupPins
	.globl _nrf24_ce_digitalWrite
	.globl _nrf24_csn_digitalWrite
	.globl _nrf24_sck_digitalWrite
	.globl _nrf24_mosi_digitalWrite
	.globl _nrf24_miso_digitalRead
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_WAKE_CLKO	=	0x008f
_CLK_DIV	=	0x0097
_BUS_SPEED	=	0x00a1
_IE2	=	0x00af
_IPH	=	0x00b7
_IP2	=	0x00b5
_IP2H	=	0x00b6
_P4	=	0x00c0
_P5	=	0x00c8
_P0M0	=	0x0094
_P0M1	=	0x0093
_P1M0	=	0x0092
_P1M1	=	0x0091
_P2M0	=	0x0096
_P2M1	=	0x0095
_P3M0	=	0x00b2
_P3M1	=	0x00b1
_P4M0	=	0x00b4
_P4M1	=	0x00b3
_P4SW	=	0x00bb
_P5M0	=	0x00ca
_P5M1	=	0x00c9
_SADEN	=	0x00b9
_SADDR	=	0x00a9
_S2CON	=	0x009a
_S2BUF	=	0x009b
_BRT	=	0x009c
_WDT_CONTR	=	0x00c1
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAP0L	=	0x00ea
_CCAP0H	=	0x00fa
_CCAP1L	=	0x00eb
_CCAP1H	=	0x00fb
_PCA_PWM0	=	0x00f2
_PCA_PWM1	=	0x00f3
_P1ASF	=	0x009d
_ADC_CONTR	=	0x00bc
_ADC_RES	=	0x00bd
_ADC_RESL	=	0x00be
_SPCTL	=	0x00ce
_SPSTAT	=	0x00cd
_SPDAT	=	0x00cf
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ELVD	=	0x00ae
_EADC	=	0x00ad
_PPCA	=	0x00bf
_PLVD	=	0x00be
_PADC	=	0x00bd
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00c8
_P5_1	=	0x00c9
_P5_2	=	0x00ca
_P5_3	=	0x00cb
_CF	=	0x00df
_CR	=	0x00de
_CCF1	=	0x00d9
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_temp::
	.ds 1
_q::
	.ds 1
_data_array::
	.ds 4
_tx_address::
	.ds 5
_rx_address::
	.ds 5
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_tm0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	rx_main.c:22: uint8_t q = 0;
	mov	_q,#0x00
;	rx_main.c:24: uint8_t tx_address[5] = {0xD7,0xD7,0xD7,0xD7,0xD7};
	mov	_tx_address,#0xD7
	mov	(_tx_address + 0x0001),#0xD7
	mov	(_tx_address + 0x0002),#0xD7
	mov	(_tx_address + 0x0003),#0xD7
	mov	(_tx_address + 0x0004),#0xD7
;	rx_main.c:25: uint8_t rx_address[5] = {0xE7,0xE7,0xE7,0xE7,0xE7};
	mov	_rx_address,#0xE7
	mov	(_rx_address + 0x0001),#0xE7
	mov	(_rx_address + 0x0002),#0xE7
	mov	(_rx_address + 0x0003),#0xE7
	mov	(_rx_address + 0x0004),#0xE7
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_setupPins'
;------------------------------------------------------------
;	radioPinFunctions.c:15: void nrf24_setupPins()
;	-----------------------------------------
;	 function nrf24_setupPins
;	-----------------------------------------
_nrf24_setupPins:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	radioPinFunctions.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_ce_digitalWrite'
;------------------------------------------------------------
;state                     Allocated to registers r7 
;------------------------------------------------------------
;	radioPinFunctions.c:21: void nrf24_ce_digitalWrite(uint8_t state)
;	-----------------------------------------
;	 function nrf24_ce_digitalWrite
;	-----------------------------------------
_nrf24_ce_digitalWrite:
;	radioPinFunctions.c:23: if(state) P1_4=1; else P1_4=0;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	setb	_P1_4
	ret
00102$:
	clr	_P1_4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_csn_digitalWrite'
;------------------------------------------------------------
;state                     Allocated to registers r7 
;------------------------------------------------------------
;	radioPinFunctions.c:26: void nrf24_csn_digitalWrite(uint8_t state)
;	-----------------------------------------
;	 function nrf24_csn_digitalWrite
;	-----------------------------------------
_nrf24_csn_digitalWrite:
;	radioPinFunctions.c:28: if(state) P1_5=1; else P1_5=0;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	setb	_P1_5
	ret
00102$:
	clr	_P1_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_sck_digitalWrite'
;------------------------------------------------------------
;state                     Allocated to registers r7 
;------------------------------------------------------------
;	radioPinFunctions.c:31: void nrf24_sck_digitalWrite(uint8_t state)
;	-----------------------------------------
;	 function nrf24_sck_digitalWrite
;	-----------------------------------------
_nrf24_sck_digitalWrite:
;	radioPinFunctions.c:33: if(state) P1_2=1; else P1_2=0;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	setb	_P1_2
	ret
00102$:
	clr	_P1_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_mosi_digitalWrite'
;------------------------------------------------------------
;state                     Allocated to registers r7 
;------------------------------------------------------------
;	radioPinFunctions.c:36: void nrf24_mosi_digitalWrite(uint8_t state)
;	-----------------------------------------
;	 function nrf24_mosi_digitalWrite
;	-----------------------------------------
_nrf24_mosi_digitalWrite:
;	radioPinFunctions.c:38: if(state) P1_3=1; else P1_3=0;
	mov	a,dpl
	mov	r7,a
	jz	00102$
	setb	_P1_3
	ret
00102$:
	clr	_P1_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_miso_digitalRead'
;------------------------------------------------------------
;	radioPinFunctions.c:41: uint8_t nrf24_miso_digitalRead()
;	-----------------------------------------
;	 function nrf24_miso_digitalRead
;	-----------------------------------------
_nrf24_miso_digitalRead:
;	radioPinFunctions.c:43: return P1_0;
	mov	c,_P1_0
	clr	a
	rlc	a
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	rx_main.c:27: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	rx_main.c:30: UART_INIT();
	lcall	_UART_INIT
;	rx_main.c:36: sprintf("\r\n> RX device ready\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sprintf
;	rx_main.c:39: nrf24_init();
	lcall	_nrf24_init
;	rx_main.c:42: nrf24_config(2,4);
	mov	_nrf24_config_PARM_2,#0x04
	mov	dpl,#0x02
	lcall	_nrf24_config
;	rx_main.c:45: nrf24_tx_address(tx_address);
	mov	dptr,#_tx_address
	mov	b,#0x40
	lcall	_nrf24_tx_address
;	rx_main.c:46: nrf24_rx_address(rx_address);
	mov	dptr,#_rx_address
	mov	b,#0x40
	lcall	_nrf24_rx_address
;	rx_main.c:48: while(1)
00104$:
;	rx_main.c:50: if(nrf24_dataReady())
	lcall	_nrf24_dataReady
	mov	a,dpl
	jz	00104$
;	rx_main.c:52: nrf24_getData(data_array);        
	mov	dptr,#_data_array
	mov	b,#0x40
	lcall	_nrf24_getData
;	rx_main.c:53: sprintf("> ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sprintf
;	rx_main.c:54: hprintf(data_array[0]);sprintf(" ");
	mov	dpl,_data_array
	lcall	_hprintf
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sprintf
;	rx_main.c:55: hprintf(data_array[1]);sprintf(" ");
	mov	dpl,(_data_array + 0x0001)
	lcall	_hprintf
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sprintf
;	rx_main.c:56: hprintf(data_array[2]);sprintf(" ");
	mov	dpl,(_data_array + 0x0002)
	lcall	_hprintf
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sprintf
;	rx_main.c:57: hprintf(data_array[3]);sprintf("\r\n");
	mov	dpl,(_data_array + 0x0003)
	lcall	_hprintf
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_sprintf
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0D
	.db 0x0A
	.ascii "> RX device ready"
	.db 0x0D
	.db 0x0A
	.db 0x00
___str_1:
	.ascii "> "
	.db 0x00
___str_2:
	.ascii " "
	.db 0x00
___str_3:
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
