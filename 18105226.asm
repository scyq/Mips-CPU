ori $1,0x1010
ori $2,0x0101            #����ori

ori $3,10
ori $4,100
ori $5,10

addu $20,$20,$3          #��addu $20=10
addu $21,$21,$4          #��addu $21=100


beq $3,$5,then
circle1:
addu $6,$6,$3            #$6��ԶΪ0
j end

then:                    #ȷ�Ͻ������,beq��ת
sw $3,4($0)
sw $4,12($0)

end:
subu $4,$4,$3
beq $3,$4,circle2
j end

circle2:
subu $21,$21,$20
subu $21,$21,$20
lw $15,4($0)
lw $16,12($0)

lui $17,0xabab
lui $18,0xcdcd


