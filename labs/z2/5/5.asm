;================================================================= 
title	�������� 5 (���� COM)		;��� ���������� �����  -  z1_pr2.asm
;------------------------------------------------------------------------------------------------------------
text		segment	'code'										;������ ��������, ����������� �����     					          		
																;��������� � ������� ���� � ������ text
org		100h													;��������� ������� ������ � ������
																;�������� �������� � 100h ��� ���������
																;����������
assume	     CS:text, DS:text, ES:text, SS:text 				;��������  CS, DS, ES, SS
																;������� ����� � ������������ ���������
;------------------------------------------------------------------------------------------------------------
																;�����������
stdout		equ		1 
lf			equ		10											;��� ASCII �������� ������  
cr			equ		13											;��� ASCII �������� �������
stg			equ		40h											;��� ASCII *
;------------------------------------------------------------------------------------------------------------
myproc	proc													;������ ��������� �� ����� myproc
																;����� �� ����� ������ ������  " ��������� �� �� � ����� ��������� "
		mov		AH,40h											;����� ������� ������ � ���� AH
		mov		BX,stdout										;���������� �������� � ������� BX
		mov		CX,meslen										;����� ��������� � ������� CX
		mov		DX,offset mes									;����� (��������) mes � ������� DX
		int		21h												;���������� MS DOS, ������� ���
																;������� ������� 40h � ����� AH
																;������� ������ �� ����� 
																;���������� ��������� � ����������� � ������������ �������
outprog:	mov		AH,4Ch										;����� ������� ���������� � AH
			mov		AL, 00h										;��� ���������� 
			int		21h											;���������� MS DOS, ������� ���
																;������� ������� 4�h � ����� AH
																;������������ ������� � ������� 
myproc		endp												;����� ���� ���������
;------------------------------------------------------------------------------------------------------------
																;���� ������
mes		db		stg,cr,lf, stg,stg,cr,lf, stg,stg,stg,cr,lf, stg,stg,stg,stg,cr,lf, stg,stg,stg,stg,stg,cr,lf, stg,stg,stg,stg,stg,stg,cr,lf, stg,stg,stg,stg,stg,stg,stg,cr,lf, stg,stg,stg,stg,stg,stg,stg,stg,cr,lf
meslen		equ		$-mes		       							;� meslen ����� ���������� ���������
;------------------------------------------------------------------------------------------------------------
text		ends												;����� �������� ���� 
;------------------------------------------------------------------------------------------------------------
end		myproc											;����� ���������
;=================================================================
