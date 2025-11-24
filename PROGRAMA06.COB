       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA06.
      *=================================================================
      *==AUTOR: BRAULIO FIGUEIREDO       EMPRESA: XPTO
      *==OBJETIVO: VARIAVEL ESTRUTURAL (GRUPO) - EXEMPLO 2
      *==DATA: 23/11/2025
      *==OBSERVACOES:
      *==  ARQUIVO: CLIENTES
      *==
      *==  LAY-OUT
      *==  CODIGO : 04
      *==  NOME   : 15
      *==  SALARIO: 06
      *==
      *==  CCCCNNNNNNNNNNNNNNNSSSSSS
      *==  0001SILVIO SANTOS  500000
      *==  0002CARLOS ALBERTO 050000
      *==  0003OSMAR SANTOS   070000
      *==
      *=================================================================

       ENVIRONMENT              DIVISION.
       CONFIGURATION            SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                     DIVISION.
       WORKING-STORAGE          SECTION.
       01 WRK-ENTRADA.
          05 WRK-CODIGO         PIC 9(04)   VALUE ZEROS.
          05 WRK-NOME           PIC X(15)   VALUE SPACES.
          05 WRK-SALARIO        PIC 9(06)   VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE              SECTION.
           DISPLAY "ENTRE COM A LINHA DE DADOS "
           ACCEPT WRK-ENTRADA.

       0200-MOSTRA              SECTION.
           DISPLAY "CODIGO... " WRK-CODIGO.
           DISPLAY "NOME..... " WRK-NOME.
           DISPLAY "SALARIO.. " WRK-SALARIO.
       0300-FINALIZAR           SECTION.
           STOP RUN.
