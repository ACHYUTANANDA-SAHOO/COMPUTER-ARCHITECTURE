;8 BIT MULTIPLICATION
LDA 1000H  ; Fetched the Multiplicand
MOV A,B
LDA 1001H  ; Fetched the Multiplier
MOV D,A
MVI A,00H  ; Cleared the Acuumulator for multiple addition of the Multiplicand
L1: ADD B
DCR D
JNZ L1     ; Repeated Addition for multiplication
STA 1010H
