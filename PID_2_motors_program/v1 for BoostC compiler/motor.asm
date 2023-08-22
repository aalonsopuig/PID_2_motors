	include "P16F876.inc"
_div_16_16_00000_arg_a           EQU	0x00000060 ; bytes:2
_div_16_16_00000_arg_b           EQU	0x00000062 ; bytes:2
_div_16_16_00000_1_c             EQU	0x00000066 ; bytes:2
_div_16_16_00000_1_r             EQU	0x00000068 ; bytes:2
_div_16_16_00000_1_i             EQU	0x0000006A ; bytes:1
CompTempVar0                     EQU	0x0000006B ; bytes:1
_rem_16_16_00000_arg_a           EQU	0x00000058 ; bytes:2
_rem_16_16_00000_arg_b           EQU	0x0000005A ; bytes:2
_rem_16_16_00000_1_c             EQU	0x00000062 ; bytes:2
_rem_16_16_00000_1_r             EQU	0x00000064 ; bytes:2
_rem_16_16_00000_1_i             EQU	0x00000066 ; bytes:1
CompTempVar1                     EQU	0x00000067 ; bytes:1
_div_8_8_00000_arg_a             EQU	0x00000053 ; bytes:1
_div_8_8_00000_arg_b             EQU	0x00000054 ; bytes:1
_div_8_8_00000_1_c               EQU	0x0000005A ; bytes:1
_div_8_8_00000_1_r               EQU	0x0000005B ; bytes:1
_div_8_8_00000_1_i               EQU	0x0000005C ; bytes:1
CompTempVar2                     EQU	0x0000005D ; bytes:1
_rem_8_8_00000_arg_a             EQU	0x00000055 ; bytes:1
_rem_8_8_00000_arg_b             EQU	0x00000056 ; bytes:1
_rem_8_8_00000_1_c               EQU	0x0000005A ; bytes:1
_rem_8_8_00000_1_r               EQU	0x0000005B ; bytes:1
_rem_8_8_00000_1_i               EQU	0x0000005C ; bytes:1
CompTempVar3                     EQU	0x0000005D ; bytes:1
_mul_16_8_00000_arg_a            EQU	0x00000052 ; bytes:2
_mul_16_8_00000_arg_b            EQU	0x00000054 ; bytes:1
_mul_16_8_00000_1_i              EQU	0x00000059 ; bytes:1
_mul_16_8_00000_1_c              EQU	0x0000005A ; bytes:2
_mul_16_8_00000_1_t              EQU	0x0000005C ; bytes:2
_mul_8_16_00000_arg_a            EQU	0x0000004B ; bytes:1
_mul_8_16_00000_arg_b            EQU	0x0000004C ; bytes:2
_mul_8_16_00000_1_i              EQU	0x00000054 ; bytes:1
_mul_8_16_00000_1_c              EQU	0x00000055 ; bytes:2
_mul_8_16_00000_1_t              EQU	0x00000057 ; bytes:2
_mul_16_16_00000_arg_a           EQU	0x00000052 ; bytes:2
_mul_16_16_00000_arg_b           EQU	0x00000054 ; bytes:2
_mul_16_16_00000_1_i             EQU	0x0000005C ; bytes:1
_mul_16_16_00000_1_c             EQU	0x0000005D ; bytes:2
_mul_16_16_00000_1_t             EQU	0x0000005F ; bytes:2
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_ccpr2l                       EQU	0x0000001B ; bytes:1
gbl_ccpr2h                       EQU	0x0000001C ; bytes:1
gbl_ccp2con                      EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_sspcon2                      EQU	0x00000091 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_SetPoint                     EQU	0x00000020 ; bytes:2
gbl_CVRight                      EQU	0x00000022 ; bytes:2
gbl_CVLeft                       EQU	0x00000024 ; bytes:2
gbl_CV                           EQU	0x00000026 ; bytes:2
gbl_PVRight                      EQU	0x00000028 ; bytes:2
gbl_PVLeft                       EQU	0x0000002A ; bytes:2
gbl_Kpro                         EQU	0x0000002C ; bytes:2
gbl_Kint                         EQU	0x0000002E ; bytes:2
gbl_Kdif                         EQU	0x00000030 ; bytes:2
gbl_ErrRight                     EQU	0x00000032 ; bytes:2
gbl_ErrLeft                      EQU	0x00000034 ; bytes:2
gbl_LastErrRight                 EQU	0x00000036 ; bytes:2
gbl_LastErrLeft                  EQU	0x00000038 ; bytes:2
gbl_ISum                         EQU	0x0000003A ; bytes:2
gbl_Bias                         EQU	0x0000003C ; bytes:2
gbl_UnitDiv                      EQU	0x0000003E ; bytes:2
gbl_Command                      EQU	0x00000040 ; bytes:1
gbl_Value                        EQU	0x00000041 ; bytes:1
gbl_Kpause                       EQU	0x00000042 ; bytes:1
gbl_Ch1Right                     EQU	0x00000005 ; bit:4
gbl_Ch2Right                     EQU	0x00000006 ; bit:2
gbl_Ch1Left                      EQU	0x00000006 ; bit:3
gbl_Ch2Left                      EQU	0x00000007 ; bit:0
gbl_DirRightFwd                  EQU	0x00000043 ; bit:0
gbl_DirLeftFwd                   EQU	0x00000043 ; bit:1
gbl_SendFeedback                 EQU	0x00000043 ; bit:2
gbl_n                            EQU	0x00000044 ; bytes:1
SetPWM_00000_arg_CVR             EQU	0x00000052 ; bytes:2
SetPWM_00000_arg_CVL             EQU	0x00000054 ; bytes:2
SetPWM_00000_1_Module            EQU	0x00000056 ; bytes:2
CompTempVar32                    EQU	0x0000005C ; bytes:1
CompTempVar33                    EQU	0x0000005D ; bytes:1
CompTempVar34                    EQU	0x0000005E ; bytes:1
CompTempVar35                    EQU	0x0000005F ; bytes:1
CompTempVar36                    EQU	0x00000064 ; bytes:1
CompTempVar37                    EQU	0x00000065 ; bytes:1
CompTempVar38                    EQU	0x00000060 ; bytes:1
CompTempVar39                    EQU	0x00000060 ; bytes:1
CompTempVar40                    EQU	0x00000061 ; bytes:1
CompTempVar41                    EQU	0x00000060 ; bytes:1
CompTempVar42                    EQU	0x00000061 ; bytes:1
CompTempVar43                    EQU	0x00000060 ; bytes:1
CompTempVar44                    EQU	0x00000061 ; bytes:1
CompTempVar45                    EQU	0x00000062 ; bytes:1
CompTempVar46                    EQU	0x00000063 ; bytes:1
CompTempVar47                    EQU	0x00000064 ; bytes:1
CompTempVar48                    EQU	0x00000065 ; bytes:1
CompTempVar49                    EQU	0x00000060 ; bytes:1
CompTempVar50                    EQU	0x00000060 ; bytes:1
CompTempVar51                    EQU	0x00000061 ; bytes:1
CompTempVar52                    EQU	0x00000060 ; bytes:1
CompTempVar53                    EQU	0x00000061 ; bytes:1
CompTempVar54                    EQU	0x00000060 ; bytes:1
CompTempVar55                    EQU	0x00000061 ; bytes:1
CompTempVar56                    EQU	0x00000062 ; bytes:1
CompTempVar57                    EQU	0x00000063 ; bytes:1
CompTempVar58                    EQU	0x0000004E ; bytes:1
CompTempVar59                    EQU	0x0000004F ; bytes:1
CompTempVar60                    EQU	0x00000050 ; bytes:1
CompTempVar61                    EQU	0x00000051 ; bytes:1
CompTempVar62                    EQU	0x00000052 ; bytes:1
CompTempVar63                    EQU	0x00000052 ; bytes:1
CompTempVar64                    EQU	0x00000053 ; bytes:1
CompTempVar65                    EQU	0x00000052 ; bytes:1
CompTempVar66                    EQU	0x00000053 ; bytes:1
CompTempVar67                    EQU	0x00000052 ; bytes:1
CompTempVar68                    EQU	0x00000053 ; bytes:1
CompTempVar69                    EQU	0x00000056 ; bytes:1
CompTempVar70                    EQU	0x00000057 ; bytes:1
CompTempVar71                    EQU	0x00000058 ; bytes:1
CompTempVar72                    EQU	0x00000059 ; bytes:1
CompTempVar73                    EQU	0x00000056 ; bytes:1
CompTempVar74                    EQU	0x00000057 ; bytes:1
CompTempVar75                    EQU	0x00000058 ; bytes:1
CompTempVar76                    EQU	0x00000059 ; bytes:1
CompTempVar77                    EQU	0x0000005A ; bytes:1
CompTempVar78                    EQU	0x0000005B ; bytes:1
CompTempVar79                    EQU	0x00000052 ; bytes:1
CompTempVar80                    EQU	0x00000053 ; bytes:1
CompTempVar81                    EQU	0x00000056 ; bytes:1
CompTempVar82                    EQU	0x00000057 ; bytes:1
CompTempVar83                    EQU	0x00000058 ; bytes:1
CompTempVar84                    EQU	0x00000059 ; bytes:1
CompTempVar85                    EQU	0x00000056 ; bytes:1
CompTempVar86                    EQU	0x00000057 ; bytes:1
CompTempVar87                    EQU	0x00000058 ; bytes:1
CompTempVar88                    EQU	0x00000059 ; bytes:1
CompTempVar89                    EQU	0x0000005A ; bytes:1
CompTempVar90                    EQU	0x0000005B ; bytes:1
CompTempVar91                    EQU	0x00000052 ; bytes:1
CompTempVar92                    EQU	0x00000052 ; bytes:1
CompTempVar93                    EQU	0x00000053 ; bytes:1
CompTempVar94                    EQU	0x00000054 ; bytes:1
CompTempVar95                    EQU	0x00000055 ; bytes:1
CompTempVar96                    EQU	0x00000056 ; bytes:1
CompTempVar97                    EQU	0x00000057 ; bytes:1
CompTempVar98                    EQU	0x00000052 ; bytes:1
CompTempVar99                    EQU	0x00000053 ; bytes:1
CompTempVar100                   EQU	0x00000054 ; bytes:1
CompTempVar101                   EQU	0x00000055 ; bytes:1
CompTempVar102                   EQU	0x00000056 ; bytes:1
CompTempVar103                   EQU	0x00000057 ; bytes:1
CompTempVar104                   EQU	0x00000056 ; bytes:1
CompTempVar105                   EQU	0x00000057 ; bytes:1
CompTempVar106                   EQU	0x00000058 ; bytes:1
CompTempVar107                   EQU	0x00000059 ; bytes:1
CompTempVar108                   EQU	0x00000056 ; bytes:1
CompTempVar109                   EQU	0x00000057 ; bytes:1
CompTempVar110                   EQU	0x00000058 ; bytes:1
CompTempVar111                   EQU	0x00000059 ; bytes:1
CompTempVar114                   EQU	0x00000054 ; bytes:1
CompTempVar113                   EQU	0x00000053 ; bytes:1
CompTempVar112                   EQU	0x00000052 ; bytes:1
CompTempVar115                   EQU	0x00000052 ; bytes:1
CompTempVar116                   EQU	0x00000053 ; bytes:1
CompTempVar118                   EQU	0x00000053 ; bytes:1
CompTempVar119                   EQU	0x00000054 ; bytes:1
CompTempVar117                   EQU	0x00000052 ; bytes:1
CompTempVar120                   EQU	0x00000056 ; bytes:1
CompTempVar121                   EQU	0x00000057 ; bytes:1
CompTempVar124                   EQU	0x00000054 ; bytes:1
CompTempVar123                   EQU	0x00000053 ; bytes:1
CompTempVar122                   EQU	0x00000052 ; bytes:1
CompTempVar125                   EQU	0x00000052 ; bytes:1
CompTempVar126                   EQU	0x00000053 ; bytes:1
CompTempVar128                   EQU	0x00000053 ; bytes:1
CompTempVar129                   EQU	0x00000054 ; bytes:1
CompTempVar127                   EQU	0x00000052 ; bytes:1
CompTempVar130                   EQU	0x00000056 ; bytes:1
CompTempVar131                   EQU	0x00000057 ; bytes:1
CompTempVar132                   EQU	0x00000052 ; bytes:1
CompTempVar133                   EQU	0x00000052 ; bytes:1
CompTempVar134                   EQU	0x00000052 ; bytes:1
CompTempVar135                   EQU	0x00000052 ; bytes:1
CompTempVar136                   EQU	0x00000052 ; bytes:1
CompTempVar137                   EQU	0x00000052 ; bytes:1
CompTempVar138                   EQU	0x00000052 ; bytes:1
CompTempVar139                   EQU	0x00000055 ; bytes:1
CompTempVar140                   EQU	0x00000056 ; bytes:1
CompTempVar141                   EQU	0x00000057 ; bytes:1
CompTempVar142                   EQU	0x00000058 ; bytes:1
CompTempVar143                   EQU	0x00000055 ; bytes:1
CompTempVar144                   EQU	0x00000056 ; bytes:1
CompTempVar145                   EQU	0x00000057 ; bytes:1
CompTempVar146                   EQU	0x00000058 ; bytes:1
CompTempVar147                   EQU	0x00000052 ; bytes:1
CompTempVar148                   EQU	0x00000053 ; bytes:1
CompTempVar149                   EQU	0x00000052 ; bytes:1
CompTempVar150                   EQU	0x00000053 ; bytes:1
CompTempVar151                   EQU	0x00000052 ; bytes:1
CompTempVar152                   EQU	0x00000053 ; bytes:1
CompTempVar153                   EQU	0x00000052 ; bytes:1
CompTempVar154                   EQU	0x00000053 ; bytes:1
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_ccpr2l                       EQU	0x0000001B ; bytes:1
gbl_ccpr2h                       EQU	0x0000001C ; bytes:1
gbl_ccp2con                      EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_sspcon2                      EQU	0x00000091 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
serialInit_00000_arg_rateScaler  EQU	0x0000004B ; bytes:1
serialSend_00002_arg_value       EQU	0x00000058 ; bytes:1
serialSend_00006_arg_n           EQU	0x00000052 ; bytes:1
CompTempVar158                   EQU	0x00000057 ; bytes:1
CompTempVar159                   EQU	0x00000059 ; bytes:1
CompTempVar160                   EQU	0x00000057 ; bytes:1
CompTempVar161                   EQU	0x00000059 ; bytes:1
CompTempVar162                   EQU	0x00000053 ; bytes:1
CompTempVar163                   EQU	0x00000054 ; bytes:1
gbl_5_LSR                        EQU	0x00000045 ; bytes:4
delay_ms_00000_arg_del           EQU	0x00000052 ; bytes:1
CompTempVarRet0                  EQU	0x00000049 ; bytes:2
	ORG 0x00000000
	BSF PCLATH,3
	GOTO	_startup
	ORG 0x00000003
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSC STATUS,Z
	RETURN
label4026531856
	MOVLW	0xF9
label4026531857
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label4026531857
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label4026531856
	RETURN
; } delay_ms function end

	ORG 0x0000000D
serialSend_00002
; { serialSendChar ; function begin
label268437023
	BSF STATUS, RP0
	BTFSS gbl_txsta,1
	GOTO	label268437023
	BCF STATUS, RP0
	MOVF serialSend_00002_arg_value, W
	MOVWF gbl_txreg
	RETURN
; } serialSendChar function end

	ORG 0x00000014
_rem_8_8_00000
; { _rem_8_8 ; function begin
	CLRF _rem_8_8_00000_1_r
	CLRF _rem_8_8_00000_1_c
	CLRF _rem_8_8_00000_1_i
label268435536
	BTFSC _rem_8_8_00000_1_i,3
	GOTO	label268435537
	BCF STATUS,C
	RLF _rem_8_8_00000_1_c, F
	RLF _rem_8_8_00000_arg_a, F
	RLF _rem_8_8_00000_1_r, F
	MOVF _rem_8_8_00000_arg_b, W
	SUBWF _rem_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label268435540
	MOVWF _rem_8_8_00000_1_r
	BSF _rem_8_8_00000_1_c,0
label268435540
	INCF _rem_8_8_00000_1_i, F
	GOTO	label268435536
label268435537
	MOVF _rem_8_8_00000_1_r, W
	MOVWF CompTempVarRet0
	RETURN
; } _rem_8_8 function end

	ORG 0x00000028
_div_8_8_00000
; { _div_8_8 ; function begin
	CLRF _div_8_8_00000_1_r
	CLRF _div_8_8_00000_1_c
	CLRF _div_8_8_00000_1_i
label268435516
	BTFSC _div_8_8_00000_1_i,3
	GOTO	label268435517
	BCF STATUS,C
	RLF _div_8_8_00000_1_c, F
	RLF _div_8_8_00000_arg_a, F
	RLF _div_8_8_00000_1_r, F
	MOVF _div_8_8_00000_arg_b, W
	SUBWF _div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label268435520
	MOVWF _div_8_8_00000_1_r
	BSF _div_8_8_00000_1_c,0
label268435520
	INCF _div_8_8_00000_1_i, F
	GOTO	label268435516
label268435517
	MOVF _div_8_8_00000_1_c, W
	MOVWF CompTempVarRet0
	RETURN
; } _div_8_8 function end

	ORG 0x0000003C
_rem_16_16_00000
; { _rem_16_16 ; function begin
	CLRF _rem_16_16_00000_1_r+D'1'
	CLRF _rem_16_16_00000_1_r
	CLRF _rem_16_16_00000_1_c+D'1'
	CLRF _rem_16_16_00000_1_c
	CLRF _rem_16_16_00000_1_i
label268435493
	BTFSC _rem_16_16_00000_1_i,4
	GOTO	label268435494
	BCF STATUS,C
	RLF _rem_16_16_00000_1_c, F
	RLF _rem_16_16_00000_1_c+D'1', F
	RLF _rem_16_16_00000_arg_a, F
	RLF _rem_16_16_00000_arg_a+D'1', F
	RLF _rem_16_16_00000_1_r, F
	RLF _rem_16_16_00000_1_r+D'1', F
	MOVF _rem_16_16_00000_arg_b+D'1', W
	SUBWF _rem_16_16_00000_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label268435497
	MOVF _rem_16_16_00000_arg_b, W
	SUBWF _rem_16_16_00000_1_r, W
label268435497
	BTFSS STATUS,C
	GOTO	label268435498
	MOVF _rem_16_16_00000_arg_b, W
	SUBWF _rem_16_16_00000_1_r, F
	MOVF _rem_16_16_00000_arg_b+D'1', W
	BTFSS STATUS,C
	DECF _rem_16_16_00000_1_r+D'1', F
	SUBWF _rem_16_16_00000_1_r+D'1', F
	BSF _rem_16_16_00000_1_c,0
label268435498
	INCF _rem_16_16_00000_1_i, F
	GOTO	label268435493
label268435494
	MOVF _rem_16_16_00000_1_r, W
	MOVWF CompTempVarRet0
	MOVF _rem_16_16_00000_1_r+D'1', W
	MOVWF CompTempVarRet0+D'1'
	RETURN
; } _rem_16_16 function end

	ORG 0x00000060
_div_16_16_00000
; { _div_16_16 ; function begin
	CLRF _div_16_16_00000_1_r+D'1'
	CLRF _div_16_16_00000_1_r
	CLRF _div_16_16_00000_1_c+D'1'
	CLRF _div_16_16_00000_1_c
	CLRF _div_16_16_00000_1_i
label268435470
	BTFSC _div_16_16_00000_1_i,4
	GOTO	label268435471
	BCF STATUS,C
	RLF _div_16_16_00000_1_c, F
	RLF _div_16_16_00000_1_c+D'1', F
	RLF _div_16_16_00000_arg_a, F
	RLF _div_16_16_00000_arg_a+D'1', F
	RLF _div_16_16_00000_1_r, F
	RLF _div_16_16_00000_1_r+D'1', F
	MOVF _div_16_16_00000_arg_b+D'1', W
	SUBWF _div_16_16_00000_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label268435474
	MOVF _div_16_16_00000_arg_b, W
	SUBWF _div_16_16_00000_1_r, W
label268435474
	BTFSS STATUS,C
	GOTO	label268435475
	MOVF _div_16_16_00000_arg_b, W
	SUBWF _div_16_16_00000_1_r, F
	MOVF _div_16_16_00000_arg_b+D'1', W
	BTFSS STATUS,C
	DECF _div_16_16_00000_1_r+D'1', F
	SUBWF _div_16_16_00000_1_r+D'1', F
	BSF _div_16_16_00000_1_c,0
label268435475
	INCF _div_16_16_00000_1_i, F
	GOTO	label268435470
label268435471
	MOVF _div_16_16_00000_1_c, W
	MOVWF CompTempVarRet0
	MOVF _div_16_16_00000_1_c+D'1', W
	MOVWF CompTempVarRet0+D'1'
	RETURN
; } _div_16_16 function end

	ORG 0x00000084
serialSend_00006
; { serialSendDec ; function begin
	MOVF serialSend_00006_arg_n, W
	SUBLW 0x63
	BTFSC STATUS,C
	GOTO	label268437072
	MOVF serialSend_00006_arg_n, W
	MOVWF _div_8_8_00000_arg_a
	MOVLW	0x64
	MOVWF _div_8_8_00000_arg_b
	CALL _div_8_8_00000
	MOVF CompTempVarRet0, W
	MOVWF _rem_8_8_00000_arg_a
	MOVLW	0x0A
	MOVWF _rem_8_8_00000_arg_b
	CALL _rem_8_8_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar159
	MOVLW	0x30
	ADDWF CompTempVar159, W
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
label268437072
	MOVF serialSend_00006_arg_n, W
	SUBLW 0x09
	BTFSC STATUS,C
	GOTO	label268437088
	MOVF serialSend_00006_arg_n, W
	MOVWF _div_8_8_00000_arg_a
	MOVLW	0x0A
	MOVWF _div_8_8_00000_arg_b
	CALL _div_8_8_00000
	MOVF CompTempVarRet0, W
	MOVWF _rem_8_8_00000_arg_a
	MOVLW	0x0A
	MOVWF _rem_8_8_00000_arg_b
	CALL _rem_8_8_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar161
	MOVLW	0x30
	ADDWF CompTempVar161, W
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
label268437088
	MOVF serialSend_00006_arg_n, W
	MOVWF _rem_8_8_00000_arg_a
	MOVLW	0x0A
	MOVWF _rem_8_8_00000_arg_b
	CALL _rem_8_8_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar163
	MOVLW	0x30
	ADDWF CompTempVar163, W
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	RETURN
; } serialSendDec function end

	ORG 0x000000B8
serialRece_00003
; { serialReceiveChar ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BTFSC gbl_pir1,5
	GOTO	label268437028
	MOVLW	0xFF
	MOVWF CompTempVarRet0
	RETURN
label268437028
	MOVF gbl_rcreg, W
	MOVWF CompTempVarRet0
	RETURN
; } serialReceiveChar function end

	ORG 0x000000C2
serialInit_00000
; { serialInit ; function begin
	BSF STATUS, RP0
	BSF gbl_trisc,7
	BCF gbl_trisc,6
	BCF STATUS, RP0
	MOVF serialInit_00000_arg_rateScaler, W
	BSF STATUS, RP0
	MOVWF gbl_spbrg
	MOVLW	0x24
	MOVWF gbl_txsta
	MOVLW	0x90
	BCF STATUS, RP0
	MOVWF gbl_rcsta
	RETURN
; } serialInit function end

	ORG 0x000000CF
SetPWM_00000
; { SetPWM ; function begin
	BTFSS gbl_UnitDiv+D'1',7
	GOTO	label268435937
	BTFSS SetPWM_00000_arg_CVR+D'1',7
	GOTO	label268435938
	COMF SetPWM_00000_arg_CVR, W
	MOVWF _div_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	INCF _div_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_a+D'1', F
	COMF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
	INCF _div_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_b+D'1', F
	GOTO	label268435941
label268435938
	BTFSS gbl_UnitDiv+D'1',7
	GOTO	label268435937
	MOVF SetPWM_00000_arg_CVR, W
	MOVWF _div_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	COMF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
	INCF _div_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_b+D'1', F
	GOTO	label268435943
label268435937
	BTFSS SetPWM_00000_arg_CVR+D'1',7
	GOTO	label268435944
	COMF SetPWM_00000_arg_CVR, W
	MOVWF _div_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	INCF _div_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_a+D'1', F
	MOVF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
label268435943
	CALL _div_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar36
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar37
	INCF CompTempVar36, F
	BTFSC STATUS,Z
	INCF CompTempVar37, F
	GOTO	label268435947
label268435944
	MOVF SetPWM_00000_arg_CVR, W
	MOVWF _div_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	MOVF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
label268435941
	CALL _div_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar36
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar37
label268435947
	MOVF CompTempVar36, W
	MOVWF SetPWM_00000_arg_CVR
	MOVF CompTempVar37, W
	MOVWF SetPWM_00000_arg_CVR+D'1'
	MOVF SetPWM_00000_arg_CVR+D'1', W
	XORLW 0x80
	MOVWF CompTempVar38
	MOVLW	0x80
	SUBWF CompTempVar38, W
	BTFSS STATUS,Z
	GOTO	label268435950
	MOVLW	0x00
	SUBWF SetPWM_00000_arg_CVR, W
label268435950
	BTFSS STATUS,C
	GOTO	label268435951
	BCF gbl_portb,0
	GOTO	label268435954
label268435951
	BSF gbl_portb,0
	MOVF SetPWM_00000_arg_CVR, W
	ADDLW 0xFF
	MOVWF CompTempVar39
	MOVF SetPWM_00000_arg_CVR+D'1', W
	MOVWF CompTempVar40
	BTFSC STATUS,C
	INCF CompTempVar40, F
	MOVF CompTempVar39, W
	MOVWF SetPWM_00000_arg_CVR
	MOVF CompTempVar40, W
	MOVWF SetPWM_00000_arg_CVR+D'1'
label268435954
	GOTO	label268435972
label268435972
	GOTO	label268435976
label268435976
	BTFSS SetPWM_00000_arg_CVR+D'1',7
	GOTO	label268435979
	COMF SetPWM_00000_arg_CVR, W
	MOVWF _rem_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	INCF _rem_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _rem_16_16_00000_arg_a+D'1', F
	MOVLW	0x04
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar41
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar42
	INCF CompTempVar41, F
	BTFSC STATUS,Z
	INCF CompTempVar42, F
	GOTO	label268435982
label268435979
	MOVF SetPWM_00000_arg_CVR, W
	MOVWF _rem_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVR+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	MOVLW	0x04
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar41
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar42
label268435982
	MOVF CompTempVar41, W
	MOVWF SetPWM_00000_1_Module
	MOVF CompTempVar42, W
	MOVWF SetPWM_00000_1_Module+D'1'
	MOVF SetPWM_00000_1_Module, W
	SUBWF SetPWM_00000_arg_CVR, W
	MOVWF CompTempVar43
	INCF SetPWM_00000_1_Module+D'1', W
	BTFSC STATUS,C
	MOVF SetPWM_00000_1_Module+D'1', W
	SUBWF SetPWM_00000_arg_CVR+D'1', W
	MOVWF CompTempVar44
	MOVF CompTempVar43, W
	MOVWF CompTempVar45
	BCF STATUS,C
	RRF CompTempVar46, F
	RRF CompTempVar45, F
	BCF STATUS,C
	RRF CompTempVar46, F
	RRF CompTempVar45, W
	MOVWF gbl_ccpr1l
	BCF gbl_ccp1con,5
	BCF gbl_ccp1con,4
	MOVF SetPWM_00000_1_Module+D'1', W
	XORLW 0x80
	SUBLW 0x80
	BTFSS STATUS,Z
	GOTO	label268435991
	MOVF SetPWM_00000_1_Module, W
	SUBLW 0x02
label268435991
	BTFSS STATUS,C
	BSF gbl_ccp1con,5
	GOTO	label268435995
label268435995
	GOTO	label268435999
label268435999
	BTFSS SetPWM_00000_1_Module+D'1',7
	GOTO	label268436002
	COMF SetPWM_00000_1_Module, W
	MOVWF _rem_16_16_00000_arg_a
	COMF SetPWM_00000_1_Module+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	INCF _rem_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _rem_16_16_00000_arg_a+D'1', F
	MOVLW	0x02
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar32
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar33
	INCF CompTempVar32, F
	BTFSC STATUS,Z
	INCF CompTempVar33, F
	GOTO	label268436005
label268436002
	MOVF SetPWM_00000_1_Module, W
	MOVWF _rem_16_16_00000_arg_a
	MOVF SetPWM_00000_1_Module+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	MOVLW	0x02
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar32
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar33
label268436005
	MOVLW	0x01
	XORWF CompTempVar32, W
	BTFSC STATUS,Z
	MOVF CompTempVar33, W
	BTFSC STATUS,Z
	BSF gbl_ccp1con,4
	BTFSS gbl_UnitDiv+D'1',7
	GOTO	label268436021
	BTFSS SetPWM_00000_arg_CVL+D'1',7
	GOTO	label268436022
	COMF SetPWM_00000_arg_CVL, W
	MOVWF _div_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	INCF _div_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_a+D'1', F
	COMF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
	INCF _div_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_b+D'1', F
	GOTO	label268436025
label268436022
	BTFSS gbl_UnitDiv+D'1',7
	GOTO	label268436021
	MOVF SetPWM_00000_arg_CVL, W
	MOVWF _div_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	COMF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
	INCF _div_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_b+D'1', F
	GOTO	label268436027
label268436021
	BTFSS SetPWM_00000_arg_CVL+D'1',7
	GOTO	label268436028
	COMF SetPWM_00000_arg_CVL, W
	MOVWF _div_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	INCF _div_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _div_16_16_00000_arg_a+D'1', F
	MOVF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
label268436027
	CALL _div_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar47
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar48
	INCF CompTempVar47, F
	BTFSC STATUS,Z
	INCF CompTempVar48, F
	GOTO	label268436031
label268436028
	MOVF SetPWM_00000_arg_CVL, W
	MOVWF _div_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _div_16_16_00000_arg_a+D'1'
	MOVF gbl_UnitDiv, W
	MOVWF _div_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _div_16_16_00000_arg_b+D'1'
label268436025
	CALL _div_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar47
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar48
label268436031
	MOVF CompTempVar47, W
	MOVWF SetPWM_00000_arg_CVL
	MOVF CompTempVar48, W
	MOVWF SetPWM_00000_arg_CVL+D'1'
	MOVF SetPWM_00000_arg_CVL+D'1', W
	XORLW 0x80
	MOVWF CompTempVar49
	MOVLW	0x80
	SUBWF CompTempVar49, W
	BTFSS STATUS,Z
	GOTO	label268436034
	MOVLW	0x00
	SUBWF SetPWM_00000_arg_CVL, W
label268436034
	BTFSS STATUS,C
	GOTO	label268436035
	BCF gbl_portb,1
	GOTO	label268436038
label268436035
	BSF gbl_portb,1
	MOVF SetPWM_00000_arg_CVL, W
	ADDLW 0xFF
	MOVWF CompTempVar50
	MOVF SetPWM_00000_arg_CVL+D'1', W
	MOVWF CompTempVar51
	BTFSC STATUS,C
	INCF CompTempVar51, F
	MOVF CompTempVar50, W
	MOVWF SetPWM_00000_arg_CVL
	MOVF CompTempVar51, W
	MOVWF SetPWM_00000_arg_CVL+D'1'
label268436038
	GOTO	label268436056
label268436056
	GOTO	label268436060
label268436060
	BTFSS SetPWM_00000_arg_CVL+D'1',7
	GOTO	label268436063
	COMF SetPWM_00000_arg_CVL, W
	MOVWF _rem_16_16_00000_arg_a
	COMF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	INCF _rem_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _rem_16_16_00000_arg_a+D'1', F
	MOVLW	0x04
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar52
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar53
	INCF CompTempVar52, F
	BTFSC STATUS,Z
	INCF CompTempVar53, F
	GOTO	label268436066
label268436063
	MOVF SetPWM_00000_arg_CVL, W
	MOVWF _rem_16_16_00000_arg_a
	MOVF SetPWM_00000_arg_CVL+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	MOVLW	0x04
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar52
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar53
label268436066
	MOVF CompTempVar52, W
	MOVWF SetPWM_00000_1_Module
	MOVF CompTempVar53, W
	MOVWF SetPWM_00000_1_Module+D'1'
	MOVF SetPWM_00000_1_Module, W
	SUBWF SetPWM_00000_arg_CVL, W
	MOVWF CompTempVar54
	INCF SetPWM_00000_1_Module+D'1', W
	BTFSC STATUS,C
	MOVF SetPWM_00000_1_Module+D'1', W
	SUBWF SetPWM_00000_arg_CVL+D'1', W
	MOVWF CompTempVar55
	MOVF CompTempVar54, W
	MOVWF CompTempVar56
	BCF STATUS,C
	RRF CompTempVar57, F
	RRF CompTempVar56, F
	BCF STATUS,C
	RRF CompTempVar57, F
	RRF CompTempVar56, W
	MOVWF gbl_ccpr2l
	BCF gbl_ccp2con,5
	BCF gbl_ccp2con,4
	MOVF SetPWM_00000_1_Module+D'1', W
	XORLW 0x80
	SUBLW 0x80
	BTFSS STATUS,Z
	GOTO	label268436075
	MOVF SetPWM_00000_1_Module, W
	SUBLW 0x02
label268436075
	BTFSS STATUS,C
	BSF gbl_ccp2con,5
	GOTO	label268436079
label268436079
	GOTO	label268436083
label268436083
	BTFSS SetPWM_00000_1_Module+D'1',7
	GOTO	label268436086
	COMF SetPWM_00000_1_Module, W
	MOVWF _rem_16_16_00000_arg_a
	COMF SetPWM_00000_1_Module+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	INCF _rem_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _rem_16_16_00000_arg_a+D'1', F
	MOVLW	0x02
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar34
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar35
	INCF CompTempVar34, F
	BTFSC STATUS,Z
	INCF CompTempVar35, F
	GOTO	label268436089
label268436086
	MOVF SetPWM_00000_1_Module, W
	MOVWF _rem_16_16_00000_arg_a
	MOVF SetPWM_00000_1_Module+D'1', W
	MOVWF _rem_16_16_00000_arg_a+D'1'
	MOVLW	0x02
	MOVWF _rem_16_16_00000_arg_b
	CLRF _rem_16_16_00000_arg_b+D'1'
	CALL _rem_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar34
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar35
label268436089
	MOVLW	0x01
	XORWF CompTempVar34, W
	BTFSC STATUS,Z
	MOVF CompTempVar35, W
	BTFSC STATUS,Z
	BSF gbl_ccp2con,4
	RETURN
; } SetPWM function end

	ORG 0x0000026A
_mul_16_16_00000
; { _mul_16_16 ; function begin
	CLRF _mul_16_16_00000_1_i
	CLRF _mul_16_16_00000_1_c+D'1'
	CLRF _mul_16_16_00000_1_c
	MOVF _mul_16_16_00000_arg_a, W
	MOVWF _mul_16_16_00000_1_t
	MOVF _mul_16_16_00000_arg_a+D'1', W
	MOVWF _mul_16_16_00000_1_t+D'1'
label268435747
	BTFSC _mul_16_16_00000_1_i,4
	GOTO	label268435748
	BTFSS _mul_16_16_00000_arg_b,0
	GOTO	label268435749
	MOVF _mul_16_16_00000_1_t, W
	ADDWF _mul_16_16_00000_1_c, F
	BTFSC STATUS,C
	INCF _mul_16_16_00000_1_c+D'1', F
	MOVF _mul_16_16_00000_1_t+D'1', W
	ADDWF _mul_16_16_00000_1_c+D'1', F
label268435749
	RRF _mul_16_16_00000_arg_b+D'1', F
	RRF _mul_16_16_00000_arg_b, F
	BCF STATUS,C
	RLF _mul_16_16_00000_1_t, F
	RLF _mul_16_16_00000_1_t+D'1', F
	INCF _mul_16_16_00000_1_i, F
	GOTO	label268435747
label268435748
	MOVF _mul_16_16_00000_1_c, W
	MOVWF CompTempVarRet0
	MOVF _mul_16_16_00000_1_c+D'1', W
	MOVWF CompTempVarRet0+D'1'
	RETURN
; } _mul_16_16 function end

	ORG 0x00000287
_mul_8_16_00000
; { _mul_8_16 ; function begin
	CLRF _mul_8_16_00000_1_i
	CLRF _mul_8_16_00000_1_c+D'1'
	CLRF _mul_8_16_00000_1_c
	MOVF _mul_8_16_00000_arg_b, W
	MOVWF _mul_8_16_00000_1_t
	MOVF _mul_8_16_00000_arg_b+D'1', W
	MOVWF _mul_8_16_00000_1_t+D'1'
label268435737
	BTFSC _mul_8_16_00000_1_i,3
	GOTO	label268435738
	BTFSS _mul_8_16_00000_arg_a,0
	GOTO	label268435739
	MOVF _mul_8_16_00000_1_t, W
	ADDWF _mul_8_16_00000_1_c, F
	BTFSC STATUS,C
	INCF _mul_8_16_00000_1_c+D'1', F
	MOVF _mul_8_16_00000_1_t+D'1', W
	ADDWF _mul_8_16_00000_1_c+D'1', F
label268435739
	RRF _mul_8_16_00000_arg_a, F
	BCF STATUS,C
	RLF _mul_8_16_00000_1_t, F
	RLF _mul_8_16_00000_1_t+D'1', F
	INCF _mul_8_16_00000_1_i, F
	GOTO	label268435737
label268435738
	MOVF _mul_8_16_00000_1_c, W
	MOVWF CompTempVarRet0
	MOVF _mul_8_16_00000_1_c+D'1', W
	MOVWF CompTempVarRet0+D'1'
	RETURN
; } _mul_8_16 function end

	ORG 0x000002A3
_mul_16_8_00000
; { _mul_16_8 ; function begin
	CLRF _mul_16_8_00000_1_i
	CLRF _mul_16_8_00000_1_c+D'1'
	CLRF _mul_16_8_00000_1_c
	MOVF _mul_16_8_00000_arg_a, W
	MOVWF _mul_16_8_00000_1_t
	MOVF _mul_16_8_00000_arg_a+D'1', W
	MOVWF _mul_16_8_00000_1_t+D'1'
label268435727
	BTFSC _mul_16_8_00000_1_i,3
	GOTO	label268435728
	BTFSS _mul_16_8_00000_arg_b,0
	GOTO	label268435729
	MOVF _mul_16_8_00000_1_t, W
	ADDWF _mul_16_8_00000_1_c, F
	BTFSC STATUS,C
	INCF _mul_16_8_00000_1_c+D'1', F
	MOVF _mul_16_8_00000_1_t+D'1', W
	ADDWF _mul_16_8_00000_1_c+D'1', F
label268435729
	RRF _mul_16_8_00000_arg_b, F
	BCF STATUS,C
	RLF _mul_16_8_00000_1_t, F
	RLF _mul_16_8_00000_1_t+D'1', F
	INCF _mul_16_8_00000_1_i, F
	GOTO	label268435727
label268435728
	MOVF _mul_16_8_00000_1_c, W
	MOVWF CompTempVarRet0
	MOVF _mul_16_8_00000_1_c+D'1', W
	MOVWF CompTempVarRet0+D'1'
	RETURN
; } _mul_16_8 function end

	ORG 0x000002BF
main
; { main ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_trisa
	CLRF gbl_trisb
	CLRF gbl_trisc
	BCF STATUS, RP0
	CLRF gbl_portb
	CLRF gbl_porta
	MOVLW	0x19
	MOVWF serialInit_00000_arg_rateScaler
	CALL serialInit_00000
	BSF STATUS, RP0
	BSF gbl_trisa,4
	CLRF gbl_option_reg
	BSF gbl_option_reg,5
	BSF gbl_option_reg,3
	BSF gbl_trisc,0
	BCF STATUS, RP0
	CLRF gbl_t1con
	BSF gbl_t1con,1
	BSF gbl_t1con,0
	BSF gbl_t1con,2
	BSF STATUS, RP0
	BSF gbl_trisb,2
	BSF gbl_trisb,3
	BCF gbl_trisc,2
	MOVLW	0x31
	MOVWF gbl_pr2
	BCF STATUS, RP0
	CLRF SetPWM_00000_arg_CVR+D'1'
	CLRF SetPWM_00000_arg_CVR
	CLRF SetPWM_00000_arg_CVL+D'1'
	CLRF SetPWM_00000_arg_CVL
	CALL SetPWM_00000
	CLRF gbl_t2con
	BSF gbl_t2con,2
	BSF gbl_ccp1con,3
	BSF gbl_ccp1con,2
	BSF STATUS, RP0
	BCF gbl_trisc,1
	BCF STATUS, RP0
	BSF gbl_ccp2con,3
	BSF gbl_ccp2con,2
label268436143
	CLRF CompTempVar62
	CLRF gbl_tmr1l
	MOVF CompTempVar62, W
	MOVWF gbl_tmr0
	MOVF gbl_Kpause, W
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF gbl_tmr0, W
	MOVWF gbl_PVRight
	CLRF gbl_PVRight+D'1'
	MOVF gbl_tmr1l, W
	MOVWF gbl_PVLeft
	CLRF gbl_PVLeft+D'1'
	CLRF gbl_n
label268436190
	MOVLW	0xFF
	SUBWF gbl_n, W
	BTFSC STATUS,C
	GOTO	label268436191
	BTFSC gbl_Ch1Right,4
	GOTO	label268436193
	GOTO	label268436191
label268436193
	INCF gbl_n, F
	GOTO	label268436190
label268436191
	CLRF gbl_n
label268436196
	MOVLW	0xFF
	SUBWF gbl_n, W
	BTFSC STATUS,C
	GOTO	label268436197
	BTFSC gbl_Ch1Right,4
	GOTO	label268436197
	INCF gbl_n, F
	GOTO	label268436196
label268436197
	BTFSS gbl_Ch2Right,2
	GOTO	label268436202
	BCF gbl_DirRightFwd,0
	COMF gbl_PVRight, W
	MOVWF CompTempVar63
	COMF gbl_PVRight+D'1', W
	MOVWF CompTempVar64
	INCF CompTempVar63, F
	BTFSC STATUS,Z
	INCF CompTempVar64, F
	MOVF CompTempVar63, W
	MOVWF gbl_PVRight
	MOVF CompTempVar64, W
	MOVWF gbl_PVRight+D'1'
	GOTO	label268436210
label268436202
	BSF gbl_DirRightFwd,0
label268436210
	CLRF gbl_n
label268436212
	MOVLW	0xFF
	SUBWF gbl_n, W
	BTFSC STATUS,C
	GOTO	label268436213
	BTFSC gbl_Ch2Left,0
	GOTO	label268436215
	GOTO	label268436213
label268436215
	INCF gbl_n, F
	GOTO	label268436212
label268436213
	CLRF gbl_n
label268436218
	MOVLW	0xFF
	SUBWF gbl_n, W
	BTFSC STATUS,C
	GOTO	label268436219
	BTFSC gbl_Ch2Left,0
	GOTO	label268436219
	INCF gbl_n, F
	GOTO	label268436218
label268436219
	BTFSS gbl_Ch1Left,3
	GOTO	label268436224
	BCF gbl_DirLeftFwd,1
	COMF gbl_PVLeft, W
	MOVWF CompTempVar65
	COMF gbl_PVLeft+D'1', W
	MOVWF CompTempVar66
	INCF CompTempVar65, F
	BTFSC STATUS,Z
	INCF CompTempVar66, F
	MOVF CompTempVar65, W
	MOVWF gbl_PVLeft
	MOVF CompTempVar66, W
	MOVWF gbl_PVLeft+D'1'
	GOTO	label268436232
label268436224
	BSF gbl_DirLeftFwd,1
label268436232
	MOVF gbl_ErrRight, W
	MOVWF gbl_LastErrRight
	MOVF gbl_ErrRight+D'1', W
	MOVWF gbl_LastErrRight+D'1'
	MOVF gbl_PVRight, W
	SUBWF gbl_SetPoint, W
	MOVWF CompTempVar67
	INCF gbl_PVRight+D'1', W
	BTFSC STATUS,C
	MOVF gbl_PVRight+D'1', W
	SUBWF gbl_SetPoint+D'1', W
	MOVWF CompTempVar68
	MOVF CompTempVar67, W
	MOVWF gbl_ErrRight
	MOVF CompTempVar68, W
	MOVWF gbl_ErrRight+D'1'
	CLRF CompTempVar70
	BTFSS gbl_ErrRight,7
	GOTO	label268436252
	BTFSS gbl_Kpro,7
	GOTO	label268436253
	COMF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_ErrRight, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ErrRight+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436256
label268436253
	BTFSS gbl_ErrRight,7
	GOTO	label268436252
	MOVF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF gbl_ErrRight, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ErrRight+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436258
label268436252
	BTFSS gbl_Kpro,7
	GOTO	label268436259
	COMF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_ErrRight, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ErrRight+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436258
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar69
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar70
	INCF CompTempVar69, F
	BTFSC STATUS,Z
	INCF CompTempVar70, F
	GOTO	label268436262
label268436259
	MOVF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF gbl_ErrRight, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ErrRight+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436256
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar69
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar70
label268436262
	MOVF CompTempVar69, W
	ADDWF gbl_CVRight, W
	MOVWF CompTempVar71
	MOVF CompTempVar70, W
	MOVWF CompTempVar72
	MOVF gbl_CVRight+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar72, F
	ADDWF CompTempVar72, F
	MOVF CompTempVar71, W
	MOVWF gbl_CVRight
	MOVF CompTempVar72, W
	MOVWF gbl_CVRight+D'1'
	MOVF gbl_LastErrRight, W
	SUBWF gbl_ErrRight, W
	MOVWF CompTempVar73
	INCF gbl_LastErrRight+D'1', W
	BTFSC STATUS,C
	MOVF gbl_LastErrRight+D'1', W
	SUBWF gbl_ErrRight+D'1', W
	MOVWF CompTempVar74
	CLRF CompTempVar76
	BTFSS CompTempVar73,7
	GOTO	label268436280
	BTFSS gbl_Kdif,7
	GOTO	label268436281
	COMF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF CompTempVar73, W
	MOVWF _mul_16_16_00000_arg_b
	COMF CompTempVar74, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436284
label268436281
	BTFSS CompTempVar73,7
	GOTO	label268436280
	MOVF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF CompTempVar73, W
	MOVWF _mul_16_16_00000_arg_b
	COMF CompTempVar74, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436286
label268436280
	BTFSS gbl_Kdif,7
	GOTO	label268436287
	COMF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF CompTempVar73, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF CompTempVar74, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436286
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar75
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar76
	INCF CompTempVar75, F
	BTFSC STATUS,Z
	INCF CompTempVar76, F
	GOTO	label268436290
label268436287
	MOVF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF CompTempVar73, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF CompTempVar74, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436284
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar75
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar76
label268436290
	MOVF CompTempVar75, W
	ADDWF gbl_CVRight, W
	MOVWF CompTempVar77
	MOVF CompTempVar76, W
	MOVWF CompTempVar78
	MOVF gbl_CVRight+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar78, F
	ADDWF CompTempVar78, F
	MOVF CompTempVar77, W
	MOVWF gbl_CVRight
	MOVF CompTempVar78, W
	MOVWF gbl_CVRight+D'1'
	MOVF gbl_ErrLeft, W
	MOVWF gbl_LastErrLeft
	MOVF gbl_ErrLeft+D'1', W
	MOVWF gbl_LastErrLeft+D'1'
	MOVF gbl_PVLeft, W
	SUBWF gbl_SetPoint, W
	MOVWF CompTempVar79
	INCF gbl_PVLeft+D'1', W
	BTFSC STATUS,C
	MOVF gbl_PVLeft+D'1', W
	SUBWF gbl_SetPoint+D'1', W
	MOVWF CompTempVar80
	MOVF CompTempVar79, W
	MOVWF gbl_ErrLeft
	MOVF CompTempVar80, W
	MOVWF gbl_ErrLeft+D'1'
	CLRF CompTempVar82
	BTFSS gbl_ErrLeft,7
	GOTO	label268436310
	BTFSS gbl_Kpro,7
	GOTO	label268436311
	COMF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_ErrLeft, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ErrLeft+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436314
label268436311
	BTFSS gbl_ErrLeft,7
	GOTO	label268436310
	MOVF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF gbl_ErrLeft, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ErrLeft+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436316
label268436310
	BTFSS gbl_Kpro,7
	GOTO	label268436317
	COMF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_ErrLeft, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ErrLeft+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436316
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar81
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar82
	INCF CompTempVar81, F
	BTFSC STATUS,Z
	INCF CompTempVar82, F
	GOTO	label268436320
label268436317
	MOVF gbl_Kpro, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kpro+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF gbl_ErrLeft, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ErrLeft+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436314
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar81
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar82
label268436320
	MOVF CompTempVar81, W
	ADDWF gbl_CVLeft, W
	MOVWF CompTempVar83
	MOVF CompTempVar82, W
	MOVWF CompTempVar84
	MOVF gbl_CVLeft+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar84, F
	ADDWF CompTempVar84, F
	MOVF CompTempVar83, W
	MOVWF gbl_CVLeft
	MOVF CompTempVar84, W
	MOVWF gbl_CVLeft+D'1'
	MOVF gbl_LastErrLeft, W
	SUBWF gbl_ErrLeft, W
	MOVWF CompTempVar85
	INCF gbl_LastErrLeft+D'1', W
	BTFSC STATUS,C
	MOVF gbl_LastErrLeft+D'1', W
	SUBWF gbl_ErrLeft+D'1', W
	MOVWF CompTempVar86
	CLRF CompTempVar88
	BTFSS CompTempVar85,7
	GOTO	label268436338
	BTFSS gbl_Kdif,7
	GOTO	label268436339
	COMF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF CompTempVar85, W
	MOVWF _mul_16_16_00000_arg_b
	COMF CompTempVar86, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436342
label268436339
	BTFSS CompTempVar85,7
	GOTO	label268436338
	MOVF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF CompTempVar85, W
	MOVWF _mul_16_16_00000_arg_b
	COMF CompTempVar86, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436344
label268436338
	BTFSS gbl_Kdif,7
	GOTO	label268436345
	COMF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF CompTempVar85, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF CompTempVar86, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436344
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar87
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar88
	INCF CompTempVar87, F
	BTFSC STATUS,Z
	INCF CompTempVar88, F
	GOTO	label268436348
label268436345
	MOVF gbl_Kdif, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kdif+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF CompTempVar85, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF CompTempVar86, W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436342
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar87
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar88
label268436348
	MOVF CompTempVar87, W
	ADDWF gbl_CVLeft, W
	MOVWF CompTempVar89
	MOVF CompTempVar88, W
	MOVWF CompTempVar90
	MOVF gbl_CVLeft+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar90, F
	ADDWF CompTempVar90, F
	MOVF CompTempVar89, W
	MOVWF gbl_CVLeft
	MOVF CompTempVar90, W
	MOVWF gbl_CVLeft+D'1'
	MOVF gbl_SetPoint+D'1', W
	XORLW 0x80
	MOVWF CompTempVar91
	MOVLW	0x80
	SUBWF CompTempVar91, W
	BTFSS STATUS,Z
	GOTO	label268436352
	MOVLW	0x00
	SUBWF gbl_SetPoint, W
label268436352
	BTFSS STATUS,C
	GOTO	label268436353
	MOVF gbl_PVLeft, W
	SUBWF gbl_PVRight, W
	MOVWF CompTempVar92
	INCF gbl_PVLeft+D'1', W
	BTFSC STATUS,C
	MOVF gbl_PVLeft+D'1', W
	SUBWF gbl_PVRight+D'1', W
	MOVWF CompTempVar93
	MOVF CompTempVar92, W
	ADDWF gbl_ISum, W
	MOVWF CompTempVar94
	MOVF CompTempVar93, W
	MOVWF CompTempVar95
	MOVF gbl_ISum+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar95, F
	ADDWF CompTempVar95, F
	MOVF gbl_Bias, W
	ADDWF CompTempVar94, W
	MOVWF CompTempVar96
	MOVF gbl_Bias+D'1', W
	MOVWF CompTempVar97
	MOVF CompTempVar95, W
	BTFSC STATUS,C
	INCF CompTempVar97, F
	ADDWF CompTempVar97, F
	MOVF CompTempVar96, W
	MOVWF gbl_ISum
	MOVF CompTempVar97, W
	MOVWF gbl_ISum+D'1'
	GOTO	label268436365
label268436353
	MOVF gbl_PVLeft, W
	SUBWF gbl_PVRight, W
	MOVWF CompTempVar98
	INCF gbl_PVLeft+D'1', W
	BTFSC STATUS,C
	MOVF gbl_PVLeft+D'1', W
	SUBWF gbl_PVRight+D'1', W
	MOVWF CompTempVar99
	MOVF CompTempVar98, W
	ADDWF gbl_ISum, W
	MOVWF CompTempVar100
	MOVF CompTempVar99, W
	MOVWF CompTempVar101
	MOVF gbl_ISum+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar101, F
	ADDWF CompTempVar101, F
	MOVF gbl_Bias, W
	SUBWF CompTempVar100, W
	MOVWF CompTempVar102
	INCF gbl_Bias+D'1', W
	BTFSC STATUS,C
	MOVF gbl_Bias+D'1', W
	SUBWF CompTempVar101, W
	MOVWF CompTempVar103
	MOVF CompTempVar102, W
	MOVWF gbl_ISum
	MOVF CompTempVar103, W
	MOVWF gbl_ISum+D'1'
label268436365
	CLRF CompTempVar105
	BTFSS gbl_ISum,7
	GOTO	label268436389
	BTFSS gbl_Kint,7
	GOTO	label268436390
	COMF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436393
label268436390
	BTFSS gbl_ISum,7
	GOTO	label268436389
	MOVF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436395
label268436389
	BTFSS gbl_Kint,7
	GOTO	label268436396
	COMF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436395
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar104
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar105
	INCF CompTempVar104, F
	BTFSC STATUS,Z
	INCF CompTempVar105, F
	GOTO	label268436399
label268436396
	MOVF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436393
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar104
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar105
label268436399
	MOVF CompTempVar104, W
	SUBWF gbl_CVRight, W
	MOVWF CompTempVar106
	INCF CompTempVar105, W
	BTFSC STATUS,C
	MOVF CompTempVar105, W
	SUBWF gbl_CVRight+D'1', W
	MOVWF CompTempVar107
	MOVF CompTempVar106, W
	MOVWF gbl_CVRight
	MOVF CompTempVar107, W
	MOVWF gbl_CVRight+D'1'
	CLRF CompTempVar109
	BTFSS gbl_ISum,7
	GOTO	label268436414
	BTFSS gbl_Kint,7
	GOTO	label268436415
	COMF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436418
label268436415
	BTFSS gbl_ISum,7
	GOTO	label268436414
	MOVF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	COMF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436420
label268436414
	BTFSS gbl_Kint,7
	GOTO	label268436421
	COMF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	COMF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436420
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar108
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar109
	INCF CompTempVar108, F
	BTFSC STATUS,Z
	INCF CompTempVar109, F
	GOTO	label268436424
label268436421
	MOVF gbl_Kint, W
	MOVWF _mul_16_16_00000_arg_a
	MOVF gbl_Kint+D'1', W
	MOVWF _mul_16_16_00000_arg_a+D'1'
	MOVF gbl_ISum, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_ISum+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
label268436418
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar108
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar109
label268436424
	MOVF CompTempVar108, W
	ADDWF gbl_CVLeft, W
	MOVWF CompTempVar110
	MOVF CompTempVar109, W
	MOVWF CompTempVar111
	MOVF gbl_CVLeft+D'1', W
	BTFSC STATUS,C
	INCF CompTempVar111, F
	ADDWF CompTempVar111, F
	MOVF CompTempVar110, W
	MOVWF gbl_CVLeft
	MOVF CompTempVar111, W
	MOVWF gbl_CVLeft+D'1'
	CLRF CompTempVar114
	BTFSS gbl_UnitDiv,7
	GOTO	label268436427
	GOTO	label268436428
label268436428
	BTFSS gbl_UnitDiv,7
	GOTO	label268436427
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436432
label268436427
	GOTO	label268436433
label268436432
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar113
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar114
	INCF CompTempVar113, F
	BTFSC STATUS,Z
	INCF CompTempVar114, F
	GOTO	label268436436
label268436433
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar113
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar114
label268436436
	MOVF CompTempVar114, W
	XORLW 0x80
	MOVWF CompTempVar112
	MOVF gbl_CVRight+D'1', W
	XORLW 0x80
	SUBWF CompTempVar112, W
	BTFSS STATUS,Z
	GOTO	label268436439
	MOVF gbl_CVRight, W
	SUBWF CompTempVar113, W
label268436439
	BTFSC STATUS,C
	GOTO	label268436440
	CLRF CompTempVar116
	BTFSS gbl_UnitDiv,7
	GOTO	label268436453
	GOTO	label268436454
label268436454
	BTFSS gbl_UnitDiv,7
	GOTO	label268436453
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436458
label268436453
	GOTO	label268436459
label268436458
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar115
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar116
	INCF CompTempVar115, F
	BTFSC STATUS,Z
	INCF CompTempVar116, F
	GOTO	label268436461
label268436459
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar115
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar116
label268436461
	MOVF CompTempVar115, W
	MOVWF gbl_CVRight
	MOVF CompTempVar116, W
	MOVWF gbl_CVRight+D'1'
label268436440
	CLRF CompTempVar59
	BTFSS gbl_UnitDiv,7
	GOTO	label268436462
	GOTO	label268436463
label268436463
	BTFSS gbl_UnitDiv,7
	GOTO	label268436462
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436467
label268436462
	GOTO	label268436468
label268436467
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar58
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar59
	INCF CompTempVar58, F
	BTFSC STATUS,Z
	INCF CompTempVar59, F
	GOTO	label268436470
label268436468
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar58
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar59
label268436470
	COMF CompTempVar58, W
	MOVWF CompTempVar118
	COMF CompTempVar59, W
	MOVWF CompTempVar119
	INCF CompTempVar118, F
	BTFSC STATUS,Z
	INCF CompTempVar119, F
	MOVF gbl_CVRight+D'1', W
	XORLW 0x80
	MOVWF CompTempVar117
	MOVF CompTempVar119, W
	XORLW 0x80
	SUBWF CompTempVar117, W
	BTFSS STATUS,Z
	GOTO	label268436476
	MOVF CompTempVar118, W
	SUBWF gbl_CVRight, W
label268436476
	BTFSC STATUS,C
	GOTO	label268436477
	CLRF CompTempVar121
	BTFSS gbl_UnitDiv,7
	GOTO	label268436490
	MOVLW	0xFE
	MOVWF _mul_16_16_00000_arg_a
	CLRF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_UnitDiv, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436493
label268436490
	MOVLW	0xFE
	MOVWF _mul_16_16_00000_arg_a
	CLRF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_UnitDiv, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar120
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar121
	INCF CompTempVar120, F
	BTFSC STATUS,Z
	INCF CompTempVar121, F
	GOTO	label268436499
label268436493
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar120
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar121
label268436499
	MOVF CompTempVar120, W
	MOVWF gbl_CVRight
	MOVF CompTempVar121, W
	MOVWF gbl_CVRight+D'1'
label268436477
	CLRF CompTempVar124
	BTFSS gbl_UnitDiv,7
	GOTO	label268436502
	GOTO	label268436503
label268436503
	BTFSS gbl_UnitDiv,7
	GOTO	label268436502
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436507
label268436502
	GOTO	label268436508
label268436507
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar123
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar124
	INCF CompTempVar123, F
	BTFSC STATUS,Z
	INCF CompTempVar124, F
	GOTO	label268436511
label268436508
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar123
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar124
label268436511
	MOVF CompTempVar124, W
	XORLW 0x80
	MOVWF CompTempVar122
	MOVF gbl_CVLeft+D'1', W
	XORLW 0x80
	SUBWF CompTempVar122, W
	BTFSS STATUS,Z
	GOTO	label268436514
	MOVF gbl_CVLeft, W
	SUBWF CompTempVar123, W
label268436514
	BTFSC STATUS,C
	GOTO	label268436515
	CLRF CompTempVar126
	BTFSS gbl_UnitDiv,7
	GOTO	label268436528
	GOTO	label268436529
label268436529
	BTFSS gbl_UnitDiv,7
	GOTO	label268436528
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436533
label268436528
	GOTO	label268436534
label268436533
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar125
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar126
	INCF CompTempVar125, F
	BTFSC STATUS,Z
	INCF CompTempVar126, F
	GOTO	label268436536
label268436534
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar125
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar126
label268436536
	MOVF CompTempVar125, W
	MOVWF gbl_CVLeft
	MOVF CompTempVar126, W
	MOVWF gbl_CVLeft+D'1'
label268436515
	CLRF CompTempVar61
	BTFSS gbl_UnitDiv,7
	GOTO	label268436537
	GOTO	label268436538
label268436538
	BTFSS gbl_UnitDiv,7
	GOTO	label268436537
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	COMF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	INCF _mul_8_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_8_16_00000_arg_b+D'1', F
	GOTO	label268436542
label268436537
	GOTO	label268436543
label268436542
	CALL _mul_8_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar60
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar61
	INCF CompTempVar60, F
	BTFSC STATUS,Z
	INCF CompTempVar61, F
	GOTO	label268436545
label268436543
	MOVLW	0xFF
	MOVWF _mul_8_16_00000_arg_a
	MOVF gbl_UnitDiv, W
	MOVWF _mul_8_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_8_16_00000_arg_b+D'1'
	CALL _mul_8_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar60
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar61
label268436545
	COMF CompTempVar60, W
	MOVWF CompTempVar128
	COMF CompTempVar61, W
	MOVWF CompTempVar129
	INCF CompTempVar128, F
	BTFSC STATUS,Z
	INCF CompTempVar129, F
	MOVF gbl_CVLeft+D'1', W
	XORLW 0x80
	MOVWF CompTempVar127
	MOVF CompTempVar129, W
	XORLW 0x80
	SUBWF CompTempVar127, W
	BTFSS STATUS,Z
	GOTO	label268436551
	MOVF CompTempVar128, W
	SUBWF gbl_CVLeft, W
label268436551
	BTFSC STATUS,C
	GOTO	label268436552
	CLRF CompTempVar131
	BTFSS gbl_UnitDiv,7
	GOTO	label268436565
	MOVLW	0xFE
	MOVWF _mul_16_16_00000_arg_a
	CLRF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	COMF gbl_UnitDiv, W
	MOVWF _mul_16_16_00000_arg_b
	COMF gbl_UnitDiv+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	INCF _mul_16_16_00000_arg_b, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_b+D'1', F
	GOTO	label268436568
label268436565
	MOVLW	0xFE
	MOVWF _mul_16_16_00000_arg_a
	CLRF _mul_16_16_00000_arg_a+D'1'
	INCF _mul_16_16_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_16_00000_arg_a+D'1', F
	MOVF gbl_UnitDiv, W
	MOVWF _mul_16_16_00000_arg_b
	MOVF gbl_UnitDiv+D'1', W
	MOVWF _mul_16_16_00000_arg_b+D'1'
	CALL _mul_16_16_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar130
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar131
	INCF CompTempVar130, F
	BTFSC STATUS,Z
	INCF CompTempVar131, F
	GOTO	label268436574
label268436568
	CALL _mul_16_16_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar130
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar131
label268436574
	MOVF CompTempVar130, W
	MOVWF gbl_CVLeft
	MOVF CompTempVar131, W
	MOVWF gbl_CVLeft+D'1'
label268436552
	MOVF gbl_CVRight, W
	MOVWF SetPWM_00000_arg_CVR
	MOVF gbl_CVRight+D'1', W
	MOVWF SetPWM_00000_arg_CVR+D'1'
	MOVF gbl_CVLeft, W
	MOVWF SetPWM_00000_arg_CVL
	MOVF gbl_CVLeft+D'1', W
	MOVWF SetPWM_00000_arg_CVL+D'1'
	CALL SetPWM_00000
	BTFSS gbl_SendFeedback,2
	GOTO	label268436582
	MOVF gbl_SetPoint+D'1', W
	XORLW 0x80
	MOVWF CompTempVar132
	MOVLW	0x80
	SUBWF CompTempVar132, W
	BTFSS STATUS,Z
	GOTO	label268436587
	MOVLW	0x00
	SUBWF gbl_SetPoint, W
label268436587
	BTFSS STATUS,C
	GOTO	label268436588
	MOVF gbl_SetPoint, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436595
label268436588
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_SetPoint, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436595
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_PVLeft+D'1', W
	XORLW 0x80
	MOVWF CompTempVar133
	MOVLW	0x80
	SUBWF CompTempVar133, W
	BTFSS STATUS,Z
	GOTO	label268436611
	MOVLW	0x00
	SUBWF gbl_PVLeft, W
label268436611
	BTFSS STATUS,C
	GOTO	label268436612
	MOVF gbl_PVLeft, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436619
label268436612
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_PVLeft, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436619
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_PVRight+D'1', W
	XORLW 0x80
	MOVWF CompTempVar134
	MOVLW	0x80
	SUBWF CompTempVar134, W
	BTFSS STATUS,Z
	GOTO	label268436635
	MOVLW	0x00
	SUBWF gbl_PVRight, W
label268436635
	BTFSS STATUS,C
	GOTO	label268436636
	MOVF gbl_PVRight, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436643
label268436636
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_PVRight, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436643
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_Kpro+D'1', W
	XORLW 0x80
	MOVWF CompTempVar135
	MOVLW	0x80
	SUBWF CompTempVar135, W
	BTFSS STATUS,Z
	GOTO	label268436659
	MOVLW	0x00
	SUBWF gbl_Kpro, W
label268436659
	BTFSS STATUS,C
	GOTO	label268436660
	MOVF gbl_Kpro, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436667
label268436660
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_Kpro, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436667
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_Kdif+D'1', W
	XORLW 0x80
	MOVWF CompTempVar136
	MOVLW	0x80
	SUBWF CompTempVar136, W
	BTFSS STATUS,Z
	GOTO	label268436683
	MOVLW	0x00
	SUBWF gbl_Kdif, W
label268436683
	BTFSS STATUS,C
	GOTO	label268436684
	MOVF gbl_Kdif, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436691
label268436684
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_Kdif, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436691
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_Kint+D'1', W
	XORLW 0x80
	MOVWF CompTempVar137
	MOVLW	0x80
	SUBWF CompTempVar137, W
	BTFSS STATUS,Z
	GOTO	label268436707
	MOVLW	0x00
	SUBWF gbl_Kint, W
label268436707
	BTFSS STATUS,C
	GOTO	label268436708
	MOVF gbl_Kint, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436715
label268436708
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_Kint, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436715
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVF gbl_Bias+D'1', W
	XORLW 0x80
	MOVWF CompTempVar138
	MOVLW	0x80
	SUBWF CompTempVar138, W
	BTFSS STATUS,Z
	GOTO	label268436731
	MOVLW	0x00
	SUBWF gbl_Bias, W
label268436731
	BTFSS STATUS,C
	GOTO	label268436732
	MOVF gbl_Bias, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436739
label268436732
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_Bias, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436739
	MOVLW	0x09
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	MOVLW	0x00
	SUBWF gbl_Kpause, W
	BTFSS STATUS,C
	GOTO	label268436753
	MOVF gbl_Kpause, W
	MOVWF serialSend_00006_arg_n
	CALL serialSend_00006
	GOTO	label268436760
label268436753
	MOVLW	0x2D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	COMF gbl_Kpause, W
	MOVWF serialSend_00006_arg_n
	INCF serialSend_00006_arg_n, F
	CALL serialSend_00006
label268436760
	MOVLW	0x0D
	MOVWF serialSend_00002_arg_value
	CALL serialSend_00002
	GOTO	label268436774
label268436582
	MOVLW	0x14
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
label268436774
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Command
	MOVF gbl_Command, W
	XORLW 0x20
	BSF PCLATH,3
	BTFSC STATUS,Z
	GOTO	label268436782
	MOVF gbl_Command, W
	XORLW 0x21
	BTFSC STATUS,Z
	GOTO	label268436784
	MOVF gbl_Command, W
	XORLW 0x22
	BTFSC STATUS,Z
	GOTO	label268436786
	MOVF gbl_Command, W
	XORLW 0x23
	BTFSC STATUS,Z
	GOTO	label268436788
	MOVF gbl_Command, W
	XORLW 0x24
	BTFSC STATUS,Z
	GOTO	label268436790
	MOVF gbl_Command, W
	XORLW 0x25
	BTFSC STATUS,Z
	GOTO	label268436792
	MOVF gbl_Command, W
	XORLW 0x26
	BTFSC STATUS,Z
	GOTO	label268436794
	MOVF gbl_Command, W
	XORLW 0x27
	BTFSC STATUS,Z
	GOTO	label268436796
	GOTO	label268436797
label268436782
	BTFSS gbl_pir1,5
	GOTO	label268436782
	BCF PCLATH,3
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Value
	CLRF CompTempVar140
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar139
	BTFSS STATUS,C
	DECF CompTempVar140, F
	CLRF CompTempVar142
	BSF PCLATH,3
	GOTO	label268436817
label268436817
	BTFSS CompTempVar139,7
	GOTO	label268436822
	COMF CompTempVar139, W
	MOVWF _mul_16_8_00000_arg_a
	COMF CompTempVar140, W
	MOVWF _mul_16_8_00000_arg_a+D'1'
	INCF _mul_16_8_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_8_00000_arg_a+D'1', F
	MOVLW	0x0A
	MOVWF _mul_16_8_00000_arg_b
	BCF PCLATH,3
	CALL _mul_16_8_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar141
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar142
	INCF CompTempVar141, F
	BTFSC STATUS,Z
	INCF CompTempVar142, F
	BSF PCLATH,3
	GOTO	label268436825
label268436822
	MOVF CompTempVar139, W
	MOVWF _mul_16_8_00000_arg_a
	MOVF CompTempVar140, W
	MOVWF _mul_16_8_00000_arg_a+D'1'
	MOVLW	0x0A
	MOVWF _mul_16_8_00000_arg_b
	BCF PCLATH,3
	CALL _mul_16_8_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar141
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar142
label268436825
	MOVF CompTempVar141, W
	MOVWF gbl_SetPoint
	MOVF CompTempVar142, W
	MOVWF gbl_SetPoint+D'1'
	BSF PCLATH,3
	GOTO	label268436797
label268436784
	BTFSS gbl_pir1,5
	GOTO	label268436784
	BCF PCLATH,3
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Value
	CLRF CompTempVar144
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar143
	BTFSS STATUS,C
	DECF CompTempVar144, F
	CLRF CompTempVar146
	BSF PCLATH,3
	GOTO	label268436846
label268436846
	BTFSS CompTempVar143,7
	GOTO	label268436851
	COMF CompTempVar143, W
	MOVWF _mul_16_8_00000_arg_a
	COMF CompTempVar144, W
	MOVWF _mul_16_8_00000_arg_a+D'1'
	INCF _mul_16_8_00000_arg_a, F
	BTFSC STATUS,Z
	INCF _mul_16_8_00000_arg_a+D'1', F
	MOVLW	0x0A
	MOVWF _mul_16_8_00000_arg_b
	BCF PCLATH,3
	CALL _mul_16_8_00000
	COMF CompTempVarRet0, W
	MOVWF CompTempVar145
	COMF CompTempVarRet0+D'1', W
	MOVWF CompTempVar146
	INCF CompTempVar145, F
	BTFSC STATUS,Z
	INCF CompTempVar146, F
	BSF PCLATH,3
	GOTO	label268436854
label268436851
	MOVF CompTempVar143, W
	MOVWF _mul_16_8_00000_arg_a
	MOVF CompTempVar144, W
	MOVWF _mul_16_8_00000_arg_a+D'1'
	MOVLW	0x0A
	MOVWF _mul_16_8_00000_arg_b
	BCF PCLATH,3
	CALL _mul_16_8_00000
	MOVF CompTempVarRet0, W
	MOVWF CompTempVar145
	MOVF CompTempVarRet0+D'1', W
	MOVWF CompTempVar146
label268436854
	MOVF CompTempVar145, W
	MOVWF gbl_Bias
	MOVF CompTempVar146, W
	MOVWF gbl_Bias+D'1'
	BSF PCLATH,3
	GOTO	label268436797
label268436786
	BTFSS gbl_pir1,5
	GOTO	label268436786
	BCF PCLATH,3
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Value
	CLRF CompTempVar148
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar147
	BTFSS STATUS,C
	DECF CompTempVar148, F
	MOVF CompTempVar147, W
	MOVWF gbl_Kpro
	MOVF CompTempVar148, W
	MOVWF gbl_Kpro+D'1'
	BSF PCLATH,3
	GOTO	label268436797
label268436788
	BTFSS gbl_pir1,5
	GOTO	label268436788
	BCF PCLATH,3
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Value
	CLRF CompTempVar150
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar149
	BTFSS STATUS,C
	DECF CompTempVar150, F
	MOVF CompTempVar149, W
	MOVWF gbl_Kint
	MOVF CompTempVar150, W
	MOVWF gbl_Kint+D'1'
	BSF PCLATH,3
	GOTO	label268436797
label268436790
	BTFSS gbl_pir1,5
	GOTO	label268436790
	BCF PCLATH,3
	CALL serialRece_00003
	MOVF CompTempVarRet0, W
	MOVWF gbl_Value
	CLRF CompTempVar152
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar151
	BTFSS STATUS,C
	DECF CompTempVar152, F
	MOVF CompTempVar151, W
	MOVWF gbl_Kdif
	MOVF CompTempVar152, W
	MOVWF gbl_Kdif+D'1'
	BSF PCLATH,3
	GOTO	label268436797
label268436792
	BTFSS gbl_pir1,5
	GOTO	label268436792
	CLRF CompTempVar154
	MOVLW	0x32
	SUBWF gbl_Value, W
	MOVWF CompTempVar153
	BTFSS STATUS,C
	DECF CompTempVar154, F
	MOVF CompTempVar153, W
	MOVWF gbl_Kpause
	MOVLW	0x00
	SUBWF gbl_Kpause, W
	BTFSS STATUS,C
	CLRF gbl_Kpause
	GOTO	label268436797
label268436794
	BSF gbl_SendFeedback,2
	GOTO	label268436797
label268436796
	BCF gbl_SendFeedback,2
label268436797
	BCF PCLATH,3
	GOTO	label268436143
; } main function end

	ORG 0x000008CA
_startup
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_SetPoint+D'1'
	CLRF gbl_SetPoint
	CLRF gbl_CVRight+D'1'
	CLRF gbl_CVRight
	CLRF gbl_CVLeft+D'1'
	CLRF gbl_CVLeft
	CLRF gbl_PVRight+D'1'
	CLRF gbl_PVRight
	CLRF gbl_PVLeft+D'1'
	CLRF gbl_PVLeft
	MOVLW	0x32
	MOVWF gbl_Kpro
	CLRF gbl_Kpro+D'1'
	MOVLW	0x01
	MOVWF gbl_Kint
	CLRF gbl_Kint+D'1'
	MOVLW	0x28
	MOVWF gbl_Kdif
	CLRF gbl_Kdif+D'1'
	CLRF gbl_ErrRight+D'1'
	CLRF gbl_ErrRight
	CLRF gbl_ErrLeft+D'1'
	CLRF gbl_ErrLeft
	CLRF gbl_ISum+D'1'
	CLRF gbl_ISum
	CLRF gbl_Bias+D'1'
	CLRF gbl_Bias
	MOVLW	0x32
	MOVWF gbl_UnitDiv
	CLRF gbl_UnitDiv+D'1'
	MOVLW	0x0C
	MOVWF gbl_Kpause
	BCF gbl_SendFeedback,2
	MOVLW	0xD5
	MOVWF gbl_5_LSR
	MOVLW	0xC4
	MOVWF gbl_5_LSR+D'1'
	MOVLW	0xBB
	MOVWF gbl_5_LSR+D'2'
	MOVLW	0xDC
	MOVWF gbl_5_LSR+D'3'
	BCF PCLATH,3
	GOTO	main
	ORG 0x00002007
	DW 0x3F79
	END
