```cobol
01  WS-DATA-AREA.
05  WS-NUMBER PIC 9(5) VALUE 0.
05  WS-FLAG PIC X VALUE 'N'.

PROCEDURE DIVISION.
    PERFORM 100-PROCESS-DATA.
    STOP RUN.

100-PROCESS-DATA SECTION.
    ADD 1 TO WS-NUMBER.
    IF WS-NUMBER > 10 THEN
        MOVE 'Y' TO WS-FLAG
    ELSE
        MOVE 'N' TO WS-FLAG
    END-IF.
    DISPLAY "Number: " WS-NUMBER " Flag: " WS-FLAG
    GO TO 100-PROCESS-DATA.
```