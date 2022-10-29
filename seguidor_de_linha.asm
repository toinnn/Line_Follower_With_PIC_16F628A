#INCLUDE <P16F628A.inc>
;O PROJETO Final USA 3/5 SENSORES DIGITAIS NA FRENTE PARA DETECÇÃO DA LINHA ,
;COM O CALCULO DO VALOR DE PID OS MOTORES TEEM SUA VELOCIDADE ALTERADA
;AFIM DE CORRIGIR A DIREÇÃO DO CARRO
;Nesta entrega Parcial
;org 0x00
;    goto INICIO
;org 0x4 
;    goto INTER
;    
;INTER:
;INICIO:
;    Pin_Motor_Dir EQU 5 ;Pino em PortB usado como PWM manual
;    Pin_Motor_Esq EQU 3 ;Pino em PortB usado como PWM manual
; 
;    Chave_Vira_Esq EQU 6;Pino em PortB usado como Chave que liga o vira esquerda
;    Chave_Vira_Dir EQU 7;Pino em PortB usado como Chave que liga o vira esquerda
;    Chave_Vira_Curva EQU 1;Pino em PortB usado como Chave que liga o vira esquerda
; 
;    BANKSEL CMCON	;   CONFIGURAÇÃO INICIAL DAS PORTAS DE ENTRADA E SAÍDA
;    MOVLW B'00000111'
;    MOVWF CMCON
;    
;    BANKSEL TRISA
;    CLRF TRISA
;    BANKSEL TRISB
;    MOVLW B'00000111'
;    MOVWF TRISB
;    
;    BANKSEL PORTB
;    CLRF PORTB
;    
;    
;VIRA_ESQ:
;    bcf PORTB , Pin_Motor_Esq ; Desliga o Motor esq e aciona o direito
;    BSF PORTB , Pin_Motor_Dir ; Provocando assim um desvio para esquerda
;    ;FAZ ALGO PARA MANTER ESSE ESTADO UM POUCO E DEPOIS GOTO TESTE
;    ;Pin_Motor_Esq
;VIRA_DIR:
;    bcf PORTB , Pin_Motor_Dir ; Desliga o Motor dir e aciona o equerdo
;    BSF PORTB , Pin_Motor_Esq ; Provocando assim um desvio para direita
;    ;FAZ ALGO PARA MANTER ESSE ESTADO UM POUCO E DEPOIS GOTO TESTE
;    
;SEGUE_RET:
;    BSF PORTB , Pin_Motor_Dir ; Apenas Segue em frente
;    BSF PORTB , Pin_Motor_Esq ; 
;    ;FAZ ALGO PARA MANTER ESSE ESTADO UM POUCO E DEPOIS GOTO TESTE
;GIRO:
;    bcf PORTB , Pin_Motor_Esq ; Desliga o Motor esq e aciona o direito
;    BSF PORTB , Pin_Motor_Dir ;
;    ;FAZ ALGO PARA GARANTIR O GIRO
END 