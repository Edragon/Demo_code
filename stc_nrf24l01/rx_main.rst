                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Fri Dec 23 00:32:50 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module rx_main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _UART_INIT
                                     14 	.globl _hprintf
                                     15 	.globl _sprintf
                                     16 	.globl _nrf24_getData
                                     17 	.globl _nrf24_dataReady
                                     18 	.globl _nrf24_config
                                     19 	.globl _nrf24_tx_address
                                     20 	.globl _nrf24_rx_address
                                     21 	.globl _nrf24_init
                                     22 	.globl _CCF0
                                     23 	.globl _CCF1
                                     24 	.globl _CR
                                     25 	.globl _CF
                                     26 	.globl _P5_3
                                     27 	.globl _P5_2
                                     28 	.globl _P5_1
                                     29 	.globl _P5_0
                                     30 	.globl _P4_7
                                     31 	.globl _P4_6
                                     32 	.globl _P4_5
                                     33 	.globl _P4_4
                                     34 	.globl _P4_3
                                     35 	.globl _P4_2
                                     36 	.globl _P4_1
                                     37 	.globl _P4_0
                                     38 	.globl _PADC
                                     39 	.globl _PLVD
                                     40 	.globl _PPCA
                                     41 	.globl _EADC
                                     42 	.globl _ELVD
                                     43 	.globl _CY
                                     44 	.globl _AC
                                     45 	.globl _F0
                                     46 	.globl _RS1
                                     47 	.globl _RS0
                                     48 	.globl _OV
                                     49 	.globl _F1
                                     50 	.globl _P
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _IAP_CONTR
                                    119 	.globl _IAP_TRIG
                                    120 	.globl _IAP_CMD
                                    121 	.globl _IAP_ADDRL
                                    122 	.globl _IAP_ADDRH
                                    123 	.globl _IAP_DATA
                                    124 	.globl _SPDAT
                                    125 	.globl _SPSTAT
                                    126 	.globl _SPCTL
                                    127 	.globl _ADC_RESL
                                    128 	.globl _ADC_RES
                                    129 	.globl _ADC_CONTR
                                    130 	.globl _P1ASF
                                    131 	.globl _PCA_PWM1
                                    132 	.globl _PCA_PWM0
                                    133 	.globl _CCAP1H
                                    134 	.globl _CCAP1L
                                    135 	.globl _CCAP0H
                                    136 	.globl _CCAP0L
                                    137 	.globl _CCAPM1
                                    138 	.globl _CCAPM0
                                    139 	.globl _CH
                                    140 	.globl _CL
                                    141 	.globl _CMOD
                                    142 	.globl _CCON
                                    143 	.globl _WDT_CONTR
                                    144 	.globl _BRT
                                    145 	.globl _S2BUF
                                    146 	.globl _S2CON
                                    147 	.globl _SADDR
                                    148 	.globl _SADEN
                                    149 	.globl _P5M1
                                    150 	.globl _P5M0
                                    151 	.globl _P4SW
                                    152 	.globl _P4M1
                                    153 	.globl _P4M0
                                    154 	.globl _P3M1
                                    155 	.globl _P3M0
                                    156 	.globl _P2M1
                                    157 	.globl _P2M0
                                    158 	.globl _P1M1
                                    159 	.globl _P1M0
                                    160 	.globl _P0M1
                                    161 	.globl _P0M0
                                    162 	.globl _P5
                                    163 	.globl _P4
                                    164 	.globl _IP2H
                                    165 	.globl _IP2
                                    166 	.globl _IPH
                                    167 	.globl _IE2
                                    168 	.globl _BUS_SPEED
                                    169 	.globl _CLK_DIV
                                    170 	.globl _WAKE_CLKO
                                    171 	.globl _AUXR1
                                    172 	.globl _AUXR
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _PSW
                                    176 	.globl _IP
                                    177 	.globl _P3
                                    178 	.globl _IE
                                    179 	.globl _P2
                                    180 	.globl _SBUF
                                    181 	.globl _SCON
                                    182 	.globl _P1
                                    183 	.globl _TH1
                                    184 	.globl _TH0
                                    185 	.globl _TL1
                                    186 	.globl _TL0
                                    187 	.globl _TMOD
                                    188 	.globl _TCON
                                    189 	.globl _PCON
                                    190 	.globl _DPH
                                    191 	.globl _DPL
                                    192 	.globl _SP
                                    193 	.globl _P0
                                    194 	.globl _rx_address
                                    195 	.globl _tx_address
                                    196 	.globl _data_array
                                    197 	.globl _q
                                    198 	.globl _temp
                                    199 	.globl _nrf24_setupPins
                                    200 	.globl _nrf24_ce_digitalWrite
                                    201 	.globl _nrf24_csn_digitalWrite
                                    202 	.globl _nrf24_sck_digitalWrite
                                    203 	.globl _nrf24_mosi_digitalWrite
                                    204 	.globl _nrf24_miso_digitalRead
                                    205 ;--------------------------------------------------------
                                    206 ; special function registers
                                    207 ;--------------------------------------------------------
                                    208 	.area RSEG    (ABS,DATA)
      000000                        209 	.org 0x0000
                           000080   210 _P0	=	0x0080
                           000081   211 _SP	=	0x0081
                           000082   212 _DPL	=	0x0082
                           000083   213 _DPH	=	0x0083
                           000087   214 _PCON	=	0x0087
                           000088   215 _TCON	=	0x0088
                           000089   216 _TMOD	=	0x0089
                           00008A   217 _TL0	=	0x008a
                           00008B   218 _TL1	=	0x008b
                           00008C   219 _TH0	=	0x008c
                           00008D   220 _TH1	=	0x008d
                           000090   221 _P1	=	0x0090
                           000098   222 _SCON	=	0x0098
                           000099   223 _SBUF	=	0x0099
                           0000A0   224 _P2	=	0x00a0
                           0000A8   225 _IE	=	0x00a8
                           0000B0   226 _P3	=	0x00b0
                           0000B8   227 _IP	=	0x00b8
                           0000D0   228 _PSW	=	0x00d0
                           0000E0   229 _ACC	=	0x00e0
                           0000F0   230 _B	=	0x00f0
                           00008E   231 _AUXR	=	0x008e
                           0000A2   232 _AUXR1	=	0x00a2
                           00008F   233 _WAKE_CLKO	=	0x008f
                           000097   234 _CLK_DIV	=	0x0097
                           0000A1   235 _BUS_SPEED	=	0x00a1
                           0000AF   236 _IE2	=	0x00af
                           0000B7   237 _IPH	=	0x00b7
                           0000B5   238 _IP2	=	0x00b5
                           0000B6   239 _IP2H	=	0x00b6
                           0000C0   240 _P4	=	0x00c0
                           0000C8   241 _P5	=	0x00c8
                           000094   242 _P0M0	=	0x0094
                           000093   243 _P0M1	=	0x0093
                           000092   244 _P1M0	=	0x0092
                           000091   245 _P1M1	=	0x0091
                           000096   246 _P2M0	=	0x0096
                           000095   247 _P2M1	=	0x0095
                           0000B2   248 _P3M0	=	0x00b2
                           0000B1   249 _P3M1	=	0x00b1
                           0000B4   250 _P4M0	=	0x00b4
                           0000B3   251 _P4M1	=	0x00b3
                           0000BB   252 _P4SW	=	0x00bb
                           0000CA   253 _P5M0	=	0x00ca
                           0000C9   254 _P5M1	=	0x00c9
                           0000B9   255 _SADEN	=	0x00b9
                           0000A9   256 _SADDR	=	0x00a9
                           00009A   257 _S2CON	=	0x009a
                           00009B   258 _S2BUF	=	0x009b
                           00009C   259 _BRT	=	0x009c
                           0000C1   260 _WDT_CONTR	=	0x00c1
                           0000D8   261 _CCON	=	0x00d8
                           0000D9   262 _CMOD	=	0x00d9
                           0000E9   263 _CL	=	0x00e9
                           0000F9   264 _CH	=	0x00f9
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000EB   269 _CCAP1L	=	0x00eb
                           0000FB   270 _CCAP1H	=	0x00fb
                           0000F2   271 _PCA_PWM0	=	0x00f2
                           0000F3   272 _PCA_PWM1	=	0x00f3
                           00009D   273 _P1ASF	=	0x009d
                           0000BC   274 _ADC_CONTR	=	0x00bc
                           0000BD   275 _ADC_RES	=	0x00bd
                           0000BE   276 _ADC_RESL	=	0x00be
                           0000CE   277 _SPCTL	=	0x00ce
                           0000CD   278 _SPSTAT	=	0x00cd
                           0000CF   279 _SPDAT	=	0x00cf
                           0000C2   280 _IAP_DATA	=	0x00c2
                           0000C3   281 _IAP_ADDRH	=	0x00c3
                           0000C4   282 _IAP_ADDRL	=	0x00c4
                           0000C5   283 _IAP_CMD	=	0x00c5
                           0000C6   284 _IAP_TRIG	=	0x00c6
                           0000C7   285 _IAP_CONTR	=	0x00c7
                                    286 ;--------------------------------------------------------
                                    287 ; special function bits
                                    288 ;--------------------------------------------------------
                                    289 	.area RSEG    (ABS,DATA)
      000000                        290 	.org 0x0000
                           000080   291 _P0_0	=	0x0080
                           000081   292 _P0_1	=	0x0081
                           000082   293 _P0_2	=	0x0082
                           000083   294 _P0_3	=	0x0083
                           000084   295 _P0_4	=	0x0084
                           000085   296 _P0_5	=	0x0085
                           000086   297 _P0_6	=	0x0086
                           000087   298 _P0_7	=	0x0087
                           000088   299 _IT0	=	0x0088
                           000089   300 _IE0	=	0x0089
                           00008A   301 _IT1	=	0x008a
                           00008B   302 _IE1	=	0x008b
                           00008C   303 _TR0	=	0x008c
                           00008D   304 _TF0	=	0x008d
                           00008E   305 _TR1	=	0x008e
                           00008F   306 _TF1	=	0x008f
                           000090   307 _P1_0	=	0x0090
                           000091   308 _P1_1	=	0x0091
                           000092   309 _P1_2	=	0x0092
                           000093   310 _P1_3	=	0x0093
                           000094   311 _P1_4	=	0x0094
                           000095   312 _P1_5	=	0x0095
                           000096   313 _P1_6	=	0x0096
                           000097   314 _P1_7	=	0x0097
                           000098   315 _RI	=	0x0098
                           000099   316 _TI	=	0x0099
                           00009A   317 _RB8	=	0x009a
                           00009B   318 _TB8	=	0x009b
                           00009C   319 _REN	=	0x009c
                           00009D   320 _SM2	=	0x009d
                           00009E   321 _SM1	=	0x009e
                           00009F   322 _SM0	=	0x009f
                           0000A0   323 _P2_0	=	0x00a0
                           0000A1   324 _P2_1	=	0x00a1
                           0000A2   325 _P2_2	=	0x00a2
                           0000A3   326 _P2_3	=	0x00a3
                           0000A4   327 _P2_4	=	0x00a4
                           0000A5   328 _P2_5	=	0x00a5
                           0000A6   329 _P2_6	=	0x00a6
                           0000A7   330 _P2_7	=	0x00a7
                           0000A8   331 _EX0	=	0x00a8
                           0000A9   332 _ET0	=	0x00a9
                           0000AA   333 _EX1	=	0x00aa
                           0000AB   334 _ET1	=	0x00ab
                           0000AC   335 _ES	=	0x00ac
                           0000AF   336 _EA	=	0x00af
                           0000B0   337 _P3_0	=	0x00b0
                           0000B1   338 _P3_1	=	0x00b1
                           0000B2   339 _P3_2	=	0x00b2
                           0000B3   340 _P3_3	=	0x00b3
                           0000B4   341 _P3_4	=	0x00b4
                           0000B5   342 _P3_5	=	0x00b5
                           0000B6   343 _P3_6	=	0x00b6
                           0000B7   344 _P3_7	=	0x00b7
                           0000B0   345 _RXD	=	0x00b0
                           0000B1   346 _TXD	=	0x00b1
                           0000B2   347 _INT0	=	0x00b2
                           0000B3   348 _INT1	=	0x00b3
                           0000B4   349 _T0	=	0x00b4
                           0000B5   350 _T1	=	0x00b5
                           0000B6   351 _WR	=	0x00b6
                           0000B7   352 _RD	=	0x00b7
                           0000B8   353 _PX0	=	0x00b8
                           0000B9   354 _PT0	=	0x00b9
                           0000BA   355 _PX1	=	0x00ba
                           0000BB   356 _PT1	=	0x00bb
                           0000BC   357 _PS	=	0x00bc
                           0000D0   358 _P	=	0x00d0
                           0000D1   359 _F1	=	0x00d1
                           0000D2   360 _OV	=	0x00d2
                           0000D3   361 _RS0	=	0x00d3
                           0000D4   362 _RS1	=	0x00d4
                           0000D5   363 _F0	=	0x00d5
                           0000D6   364 _AC	=	0x00d6
                           0000D7   365 _CY	=	0x00d7
                           0000AE   366 _ELVD	=	0x00ae
                           0000AD   367 _EADC	=	0x00ad
                           0000BF   368 _PPCA	=	0x00bf
                           0000BE   369 _PLVD	=	0x00be
                           0000BD   370 _PADC	=	0x00bd
                           0000C0   371 _P4_0	=	0x00c0
                           0000C1   372 _P4_1	=	0x00c1
                           0000C2   373 _P4_2	=	0x00c2
                           0000C3   374 _P4_3	=	0x00c3
                           0000C4   375 _P4_4	=	0x00c4
                           0000C5   376 _P4_5	=	0x00c5
                           0000C6   377 _P4_6	=	0x00c6
                           0000C7   378 _P4_7	=	0x00c7
                           0000C8   379 _P5_0	=	0x00c8
                           0000C9   380 _P5_1	=	0x00c9
                           0000CA   381 _P5_2	=	0x00ca
                           0000CB   382 _P5_3	=	0x00cb
                           0000DF   383 _CF	=	0x00df
                           0000DE   384 _CR	=	0x00de
                           0000D9   385 _CCF1	=	0x00d9
                           0000D8   386 _CCF0	=	0x00d8
                                    387 ;--------------------------------------------------------
                                    388 ; overlayable register banks
                                    389 ;--------------------------------------------------------
                                    390 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        391 	.ds 8
                                    392 ;--------------------------------------------------------
                                    393 ; internal ram data
                                    394 ;--------------------------------------------------------
                                    395 	.area DSEG    (DATA)
      000008                        396 _temp::
      000008                        397 	.ds 1
      000009                        398 _q::
      000009                        399 	.ds 1
      00000A                        400 _data_array::
      00000A                        401 	.ds 4
      00000E                        402 _tx_address::
      00000E                        403 	.ds 5
      000013                        404 _rx_address::
      000013                        405 	.ds 5
                                    406 ;--------------------------------------------------------
                                    407 ; overlayable items in internal ram 
                                    408 ;--------------------------------------------------------
                                    409 	.area	OSEG    (OVR,DATA)
                                    410 	.area	OSEG    (OVR,DATA)
                                    411 	.area	OSEG    (OVR,DATA)
                                    412 	.area	OSEG    (OVR,DATA)
                                    413 ;--------------------------------------------------------
                                    414 ; Stack segment in internal ram 
                                    415 ;--------------------------------------------------------
                                    416 	.area	SSEG
      000048                        417 __start__stack:
      000048                        418 	.ds	1
                                    419 
                                    420 ;--------------------------------------------------------
                                    421 ; indirectly addressable internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area ISEG    (DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; absolute internal ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area IABS    (ABS,DATA)
                                    428 	.area IABS    (ABS,DATA)
                                    429 ;--------------------------------------------------------
                                    430 ; bit data
                                    431 ;--------------------------------------------------------
                                    432 	.area BSEG    (BIT)
                                    433 ;--------------------------------------------------------
                                    434 ; paged external ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area PSEG    (PAG,XDATA)
                                    437 ;--------------------------------------------------------
                                    438 ; external ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area XSEG    (XDATA)
                                    441 ;--------------------------------------------------------
                                    442 ; absolute external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area XABS    (ABS,XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; external initialized ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XISEG   (XDATA)
                                    449 	.area HOME    (CODE)
                                    450 	.area GSINIT0 (CODE)
                                    451 	.area GSINIT1 (CODE)
                                    452 	.area GSINIT2 (CODE)
                                    453 	.area GSINIT3 (CODE)
                                    454 	.area GSINIT4 (CODE)
                                    455 	.area GSINIT5 (CODE)
                                    456 	.area GSINIT  (CODE)
                                    457 	.area GSFINAL (CODE)
                                    458 	.area CSEG    (CODE)
                                    459 ;--------------------------------------------------------
                                    460 ; interrupt vector 
                                    461 ;--------------------------------------------------------
                                    462 	.area HOME    (CODE)
      000000                        463 __interrupt_vect:
      000000 02 00 11         [24]  464 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  465 	reti
      000004                        466 	.ds	7
      00000B 02 00 00         [24]  467 	ljmp	_tm0
                                    468 ;--------------------------------------------------------
                                    469 ; global & static initialisations
                                    470 ;--------------------------------------------------------
                                    471 	.area HOME    (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 	.globl __sdcc_gsinit_startup
                                    476 	.globl __sdcc_program_startup
                                    477 	.globl __start__stack
                                    478 	.globl __mcs51_genXINIT
                                    479 	.globl __mcs51_genXRAMCLEAR
                                    480 	.globl __mcs51_genRAMCLEAR
                                    481 ;	rx_main.c:22: uint8_t q = 0;
      00006A 75 09 00         [24]  482 	mov	_q,#0x00
                                    483 ;	rx_main.c:24: uint8_t tx_address[5] = {0xD7,0xD7,0xD7,0xD7,0xD7};
      00006D 75 0E D7         [24]  484 	mov	_tx_address,#0xD7
      000070 75 0F D7         [24]  485 	mov	(_tx_address + 0x0001),#0xD7
      000073 75 10 D7         [24]  486 	mov	(_tx_address + 0x0002),#0xD7
      000076 75 11 D7         [24]  487 	mov	(_tx_address + 0x0003),#0xD7
      000079 75 12 D7         [24]  488 	mov	(_tx_address + 0x0004),#0xD7
                                    489 ;	rx_main.c:25: uint8_t rx_address[5] = {0xE7,0xE7,0xE7,0xE7,0xE7};
      00007C 75 13 E7         [24]  490 	mov	_rx_address,#0xE7
      00007F 75 14 E7         [24]  491 	mov	(_rx_address + 0x0001),#0xE7
      000082 75 15 E7         [24]  492 	mov	(_rx_address + 0x0002),#0xE7
      000085 75 16 E7         [24]  493 	mov	(_rx_address + 0x0003),#0xE7
      000088 75 17 E7         [24]  494 	mov	(_rx_address + 0x0004),#0xE7
                                    495 	.area GSFINAL (CODE)
      00008B 02 00 0E         [24]  496 	ljmp	__sdcc_program_startup
                                    497 ;--------------------------------------------------------
                                    498 ; Home
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
                                    501 	.area HOME    (CODE)
      00000E                        502 __sdcc_program_startup:
      00000E 02 00 C2         [24]  503 	ljmp	_main
                                    504 ;	return from main will return to caller
                                    505 ;--------------------------------------------------------
                                    506 ; code
                                    507 ;--------------------------------------------------------
                                    508 	.area CSEG    (CODE)
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'nrf24_setupPins'
                                    511 ;------------------------------------------------------------
                                    512 ;	radioPinFunctions.c:15: void nrf24_setupPins()
                                    513 ;	-----------------------------------------
                                    514 ;	 function nrf24_setupPins
                                    515 ;	-----------------------------------------
      00008E                        516 _nrf24_setupPins:
                           000007   517 	ar7 = 0x07
                           000006   518 	ar6 = 0x06
                           000005   519 	ar5 = 0x05
                           000004   520 	ar4 = 0x04
                           000003   521 	ar3 = 0x03
                           000002   522 	ar2 = 0x02
                           000001   523 	ar1 = 0x01
                           000000   524 	ar0 = 0x00
                                    525 ;	radioPinFunctions.c:19: }
      00008E 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'nrf24_ce_digitalWrite'
                                    529 ;------------------------------------------------------------
                                    530 ;state                     Allocated to registers r7 
                                    531 ;------------------------------------------------------------
                                    532 ;	radioPinFunctions.c:21: void nrf24_ce_digitalWrite(uint8_t state)
                                    533 ;	-----------------------------------------
                                    534 ;	 function nrf24_ce_digitalWrite
                                    535 ;	-----------------------------------------
      00008F                        536 _nrf24_ce_digitalWrite:
                                    537 ;	radioPinFunctions.c:23: if(state) P1_4=1; else P1_4=0;
      00008F E5 82            [12]  538 	mov	a,dpl
      000091 FF               [12]  539 	mov	r7,a
      000092 60 03            [24]  540 	jz	00102$
      000094 D2 94            [12]  541 	setb	_P1_4
      000096 22               [24]  542 	ret
      000097                        543 00102$:
      000097 C2 94            [12]  544 	clr	_P1_4
      000099 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'nrf24_csn_digitalWrite'
                                    548 ;------------------------------------------------------------
                                    549 ;state                     Allocated to registers r7 
                                    550 ;------------------------------------------------------------
                                    551 ;	radioPinFunctions.c:26: void nrf24_csn_digitalWrite(uint8_t state)
                                    552 ;	-----------------------------------------
                                    553 ;	 function nrf24_csn_digitalWrite
                                    554 ;	-----------------------------------------
      00009A                        555 _nrf24_csn_digitalWrite:
                                    556 ;	radioPinFunctions.c:28: if(state) P1_5=1; else P1_5=0;
      00009A E5 82            [12]  557 	mov	a,dpl
      00009C FF               [12]  558 	mov	r7,a
      00009D 60 03            [24]  559 	jz	00102$
      00009F D2 95            [12]  560 	setb	_P1_5
      0000A1 22               [24]  561 	ret
      0000A2                        562 00102$:
      0000A2 C2 95            [12]  563 	clr	_P1_5
      0000A4 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'nrf24_sck_digitalWrite'
                                    567 ;------------------------------------------------------------
                                    568 ;state                     Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                                    570 ;	radioPinFunctions.c:31: void nrf24_sck_digitalWrite(uint8_t state)
                                    571 ;	-----------------------------------------
                                    572 ;	 function nrf24_sck_digitalWrite
                                    573 ;	-----------------------------------------
      0000A5                        574 _nrf24_sck_digitalWrite:
                                    575 ;	radioPinFunctions.c:33: if(state) P1_2=1; else P1_2=0;
      0000A5 E5 82            [12]  576 	mov	a,dpl
      0000A7 FF               [12]  577 	mov	r7,a
      0000A8 60 03            [24]  578 	jz	00102$
      0000AA D2 92            [12]  579 	setb	_P1_2
      0000AC 22               [24]  580 	ret
      0000AD                        581 00102$:
      0000AD C2 92            [12]  582 	clr	_P1_2
      0000AF 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'nrf24_mosi_digitalWrite'
                                    586 ;------------------------------------------------------------
                                    587 ;state                     Allocated to registers r7 
                                    588 ;------------------------------------------------------------
                                    589 ;	radioPinFunctions.c:36: void nrf24_mosi_digitalWrite(uint8_t state)
                                    590 ;	-----------------------------------------
                                    591 ;	 function nrf24_mosi_digitalWrite
                                    592 ;	-----------------------------------------
      0000B0                        593 _nrf24_mosi_digitalWrite:
                                    594 ;	radioPinFunctions.c:38: if(state) P1_3=1; else P1_3=0;
      0000B0 E5 82            [12]  595 	mov	a,dpl
      0000B2 FF               [12]  596 	mov	r7,a
      0000B3 60 03            [24]  597 	jz	00102$
      0000B5 D2 93            [12]  598 	setb	_P1_3
      0000B7 22               [24]  599 	ret
      0000B8                        600 00102$:
      0000B8 C2 93            [12]  601 	clr	_P1_3
      0000BA 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'nrf24_miso_digitalRead'
                                    605 ;------------------------------------------------------------
                                    606 ;	radioPinFunctions.c:41: uint8_t nrf24_miso_digitalRead()
                                    607 ;	-----------------------------------------
                                    608 ;	 function nrf24_miso_digitalRead
                                    609 ;	-----------------------------------------
      0000BB                        610 _nrf24_miso_digitalRead:
                                    611 ;	radioPinFunctions.c:43: return P1_0;
      0000BB A2 90            [12]  612 	mov	c,_P1_0
      0000BD E4               [12]  613 	clr	a
      0000BE 33               [12]  614 	rlc	a
      0000BF F5 82            [12]  615 	mov	dpl,a
      0000C1 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'main'
                                    619 ;------------------------------------------------------------
                                    620 ;	rx_main.c:27: int main()
                                    621 ;	-----------------------------------------
                                    622 ;	 function main
                                    623 ;	-----------------------------------------
      0000C2                        624 _main:
                                    625 ;	rx_main.c:30: UART_INIT();
      0000C2 12 00 00         [24]  626 	lcall	_UART_INIT
                                    627 ;	rx_main.c:36: sprintf("\r\n> RX device ready\r\n");
      0000C5 90 08 49         [24]  628 	mov	dptr,#___str_0
      0000C8 75 F0 80         [24]  629 	mov	b,#0x80
      0000CB 12 01 F0         [24]  630 	lcall	_sprintf
                                    631 ;	rx_main.c:39: nrf24_init();
      0000CE 12 00 00         [24]  632 	lcall	_nrf24_init
                                    633 ;	rx_main.c:42: nrf24_config(2,4);
      0000D1 75 00 04         [24]  634 	mov	_nrf24_config_PARM_2,#0x04
      0000D4 75 82 02         [24]  635 	mov	dpl,#0x02
      0000D7 12 00 00         [24]  636 	lcall	_nrf24_config
                                    637 ;	rx_main.c:45: nrf24_tx_address(tx_address);
      0000DA 90 00 0E         [24]  638 	mov	dptr,#_tx_address
      0000DD 75 F0 40         [24]  639 	mov	b,#0x40
      0000E0 12 00 00         [24]  640 	lcall	_nrf24_tx_address
                                    641 ;	rx_main.c:46: nrf24_rx_address(rx_address);
      0000E3 90 00 13         [24]  642 	mov	dptr,#_rx_address
      0000E6 75 F0 40         [24]  643 	mov	b,#0x40
      0000E9 12 00 00         [24]  644 	lcall	_nrf24_rx_address
                                    645 ;	rx_main.c:48: while(1)
      0000EC                        646 00104$:
                                    647 ;	rx_main.c:50: if(nrf24_dataReady())
      0000EC 12 00 00         [24]  648 	lcall	_nrf24_dataReady
      0000EF E5 82            [12]  649 	mov	a,dpl
      0000F1 60 F9            [24]  650 	jz	00104$
                                    651 ;	rx_main.c:52: nrf24_getData(data_array);        
      0000F3 90 00 0A         [24]  652 	mov	dptr,#_data_array
      0000F6 75 F0 40         [24]  653 	mov	b,#0x40
      0000F9 12 00 00         [24]  654 	lcall	_nrf24_getData
                                    655 ;	rx_main.c:53: sprintf("> ");
      0000FC 90 08 5F         [24]  656 	mov	dptr,#___str_1
      0000FF 75 F0 80         [24]  657 	mov	b,#0x80
      000102 12 01 F0         [24]  658 	lcall	_sprintf
                                    659 ;	rx_main.c:54: hprintf(data_array[0]);sprintf(" ");
      000105 85 0A 82         [24]  660 	mov	dpl,_data_array
      000108 12 00 00         [24]  661 	lcall	_hprintf
      00010B 90 08 62         [24]  662 	mov	dptr,#___str_2
      00010E 75 F0 80         [24]  663 	mov	b,#0x80
      000111 12 01 F0         [24]  664 	lcall	_sprintf
                                    665 ;	rx_main.c:55: hprintf(data_array[1]);sprintf(" ");
      000114 85 0B 82         [24]  666 	mov	dpl,(_data_array + 0x0001)
      000117 12 00 00         [24]  667 	lcall	_hprintf
      00011A 90 08 62         [24]  668 	mov	dptr,#___str_2
      00011D 75 F0 80         [24]  669 	mov	b,#0x80
      000120 12 01 F0         [24]  670 	lcall	_sprintf
                                    671 ;	rx_main.c:56: hprintf(data_array[2]);sprintf(" ");
      000123 85 0C 82         [24]  672 	mov	dpl,(_data_array + 0x0002)
      000126 12 00 00         [24]  673 	lcall	_hprintf
      000129 90 08 62         [24]  674 	mov	dptr,#___str_2
      00012C 75 F0 80         [24]  675 	mov	b,#0x80
      00012F 12 01 F0         [24]  676 	lcall	_sprintf
                                    677 ;	rx_main.c:57: hprintf(data_array[3]);sprintf("\r\n");
      000132 85 0D 82         [24]  678 	mov	dpl,(_data_array + 0x0003)
      000135 12 00 00         [24]  679 	lcall	_hprintf
      000138 90 08 64         [24]  680 	mov	dptr,#___str_3
      00013B 75 F0 80         [24]  681 	mov	b,#0x80
      00013E 12 01 F0         [24]  682 	lcall	_sprintf
      000141 80 A9            [24]  683 	sjmp	00104$
                                    684 	.area CSEG    (CODE)
                                    685 	.area CONST   (CODE)
      000849                        686 ___str_0:
      000849 0D                     687 	.db 0x0D
      00084A 0A                     688 	.db 0x0A
      00084B 3E 20 52 58 20 64 65   689 	.ascii "> RX device ready"
             76 69 63 65 20 72 65
             61 64 79
      00085C 0D                     690 	.db 0x0D
      00085D 0A                     691 	.db 0x0A
      00085E 00                     692 	.db 0x00
      00085F                        693 ___str_1:
      00085F 3E 20                  694 	.ascii "> "
      000861 00                     695 	.db 0x00
      000862                        696 ___str_2:
      000862 20                     697 	.ascii " "
      000863 00                     698 	.db 0x00
      000864                        699 ___str_3:
      000864 0D                     700 	.db 0x0D
      000865 0A                     701 	.db 0x0A
      000866 00                     702 	.db 0x00
                                    703 	.area XINIT   (CODE)
                                    704 	.area CABS    (ABS,CODE)
