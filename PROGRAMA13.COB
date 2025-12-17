       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA13.
      *=================================================================
      *==AUTOR: BRAULIO FIGUEIREDO       EMPRESA: XPTO
      *==OBJETIVO: ADAPTAR AS BOAS PRATICAS COM PERFORM
      *==DATA: 16/12/2025
      *==OBSERVACOES:
      *=================================================================

       ENVIRONMENT              DIVISION.
       CONFIGURATION            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                     DIVISION.
       WORKING-STORAGE          SECTION.
       77 WRK-NOTA1  PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2  PIC 9(02)V99 VALUE ZEROS.
       77 WRK-MEDIA  PIC 9(02)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL           SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR 2 TIMES.
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR         SECTION.
           DISPLAY "NOTA 1 "
               ACCEPT WRK-NOTA1
           DISPLAY "NOTA 2 "
               ACCEPT WRK-NOTA2.

       0200-PROCESSAR           SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           DISPLAY 'MEDIA... ' WRK-MEDIA.

           EVALUATE TRUE
               WHEN WRK-MEDIA GREATER 10
                   DISPLAY "ENTRE COM NOTAS CORRETAS"
               WHEN WRK-MEDIA >= 6
                   DISPLAY "APROVADO"
               WHEN WRK-MEDIA < 6
                   DISPLAY "REPROVADO"
           END-EVALUATE.

       0300-FINALIZAR           SECTION.
           DISPLAY "FIM DE PROGRAMA".
