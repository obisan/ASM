;===  ��������� 3.     ���� z2_pr3.asm  ===========
masm 
model		tiny 
stdout=1
lf=10
cr=13
.data
mes		db		'����⠥�� �� �� - ���� ��ᥬ����',cr,lf
meslen=$-mes
.code 
org		100h
myproc  	proc
;����� ������ �� �����
			mov     AH,40h
			mov     BX,stdout
        	mov     CX,meslen       
        	mov     DX,offset mes   
        	int     21h             
outpr:  	mov     AH,4Ch
        	mov     AL,00h
        	int     21h
myproc  	endp
    end     myproc
;=========================================