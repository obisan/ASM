;====== ��������� 13.  ���� z4_pr13.asm ====================
masm 
model tiny 
.code         
		org     100h 
;--------------------------------------------
stdout		equ		1 
LN			equ		26
;--------------------------------------------
begin:  
		jmp     main 
titlex  db      'Change to uppercase letters$'
main    proc    near
        lea     BX,titlex+1
        mov     CX,LN
b20:
        mov     AH,[BX]
        cmp     AH,61h
        jb      B30
        cmp     AH,7ah
        ja      B30
        and     AH,11011111B
        mov     [BX],AH
B30:
        inc     BX
        loop    B20
		
		lea     DX,titlex	  				;�������� � DX �������� �� mess1
        mov     AH,09h	  					;������� 09h ������ ������
        int     21h
		
	
	ret
main    endp
        end     begin
