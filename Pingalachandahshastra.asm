lda 2000h
lxi h,2001h // initialize HL pair to store 0 and 2 sequence with memory pointer
mvi b,01h //initialize b so that it can be used for comparison with accumulator , so that program can be stopped when number turns 1
back1:cmp b //if b and a both are 1 than this program will end
//after even and odd loops get over the resultant value will be again sent for checking even or odd with jmp back1 instruction
jz END
rar
jc odd
ral
mvi C,02H;
back:cmp C;
JC done;
SUB C;
INR E;
JMP back;
done:mov a,e //load the e value into a
mvi e,00h //reset e so that in every new iteration,e dont have any unwanted vale
mov m,c //as the algorithm says if divisible by 2 mark 2 ,so store 2 in memory pointer
inx h; increase h, so that in every iteration marking can be done in sequence
jmp back1;
odd:ral
dcr A
cmp b
jz END
mvi c,00h //as algorithm says if not divisible by 2 than store 0 in sequence
mov m,c
inx h
jmp back1
END:HLT;
