       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.
      *=================================================================
      *==AUTOR: BRAULIO FIGUEIREDO       EMPRESA: XPTO
      *==OBJETIVO: PRIMEIRO CONTATO COM COBOL
      *==DATA: 23/11/2025
      *==OBSERVACOES:
      *=================================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(30) VALUE SPACES.
       77 WRK-IDADE PIC 9(03) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY "DIGITE SEU NOME"
              ACCEPT WRK-NOME.
           DISPLAY "DIGITE SUA IDADE"
              ACCEPT WRK-IDADE.
           DISPLAY "NOME DIGITADO " WRK-NOME " IDADE " WRK-IDADE.
      *    DISPLAY "IDADE DIGITADA " .
           STOP RUN.
