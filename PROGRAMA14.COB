       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA14.
      *=================================================================
      *==AUTOR: BRAULIO FIGUEIREDO       EMPRESA: XPTO
      *==OBJETIVO:
      *==DATA: 16/12/2025
      *==OBSERVACOES:
      *=================================================================

       ENVIRONMENT              DIVISION.
       CONFIGURATION            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                     DIVISION.
       WORKING-STORAGE          SECTION.
       77 WRK-NUMERO    PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR  PIC 9(02) VALUE 1.
       77 WRK-RESULTADO PIC 9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-INICIALIZAR         SECTION.
           DISPLAY "QUAL NUMERO .. "
               ACCEPT WRK-NUMERO.

       0200-PROCESSAR           SECTION.

      *=======================UNTIL
      *     PERFORM UNTIL WRK-CONTADOR EQUAL 11
      *         COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *         DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *         ADD 1 TO WRK-CONTADOR
      *     END-PERFORM.

      *=======================TIMES
      *     PERFORM 10 TIMES
      *         COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
      *         DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
      *         ADD 1 TO WRK-CONTADOR
      *     END-PERFORM.

           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                     UNTIL WRK-CONTADOR GREATER 10
               COMPUTE WRK-RESULTADO = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO " X " WRK-CONTADOR " = " WRK-RESULTADO
           END-PERFORM.

       0300-FINALIZAR           SECTION.
           STOP RUN.
