       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA09.
      *=================================================================
      *==AUTOR: BRAULIO FIGUEIREDO       EMPRESA: XPTO
      *==OBJETIVO: TESTAR MEDIA DO ALUNO
      *==DATA: 03/12/2025
      *==OBSERVACOES:
      *=================================================================
 XP01 *==ALTERACOES:
   .  *==REMONTEI LOGICA DOS APROVADOS
   .  *==AUTOR: BRAULIO                         EMPRESA: XTOP
 XP01 *==DATA : 07/12/2025
      *=================================================================


       ENVIRONMENT              DIVISION.
       CONFIGURATION            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                     DIVISION.
       WORKING-STORAGE          SECTION.
 XP01  77 WRK-NIVEL  PIC X(10)    VALUE SPACES.
       77 WRK-NOTA1  PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2  PIC 9(02)V99 VALUE ZEROS.
       77 WRK-MEDIA  PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE              SECTION.
           DISPLAY "NIVEL (FUND / MEDIO) "
               ACCEPT WRK-NIVEL
           DISPLAY "NOTA 1 "
               ACCEPT WRK-NOTA1
           DISPLAY "NOTA 2 "
               ACCEPT WRK-NOTA2.

       0150-PROCESSA            SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

       0200-MOSTRA              SECTION.
           DISPLAY 'MEDIA... ' WRK-MEDIA.
 XP01      IF WRK-MEDIA GREATER THAN OR EQUAL 6 AND
 XP01         WRK-NIVEL(01:04) EQUAL 'FUND'
 XP01          DISPLAY "APROVADO"
 XP01      ELSE
               DISPLAY "REPROVADO"
           END-IF.

 XP01      IF WRK-MEDIA GREATER THAN OR EQUAL 7 AND
 XP01         WRK-NIVEL(01:05) EQUAL 'MEDIO'
 XP01          DISPLAY "APROVADO"
 XP01      ELSE
 XP01          DISPLAY "REPROVADO"
           END-IF.

       0300-FINALIZAR           SECTION.
           STOP RUN.
