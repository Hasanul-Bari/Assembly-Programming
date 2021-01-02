.MODEL SMALL
.STACK 100H
.DATA
	CR	EQU	0DH
	LF	EQU	0AH
MSG1	DB 'ENTER A LOWER CASE LETTER :  $'
MSG2	DB CR,LF,'IN UPPER CASE IT IS :   '
CHAR	DB ?,'$'
.CODE
MAIN	 PROC
; initialize DS
	MOV  AX,@DATA
	MOV DS,AX
;print user prompt
	LEA DX,MSG1
	MOV  AH,9
	INT 21H
; input a character and  convert to upper case
	MOV  AH,1
	INT 21H
	SUB AL,20H
	MOV CHAR,AL
; display on the next line
	LEA DX,MSG2
	MOV  AH,9
	INT 21H
; return TO DOS
	MOV AH,4CH
	INT 21H
MAIN  	ENDP
	END MAIN

