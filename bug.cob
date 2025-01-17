01  WS-AREA. 
    05  WS-DATE PIC 9(8). 
    05  WS-TIME PIC 9(6). 

PROCEDURE DIVISION.
    DISPLAY "Enter date (YYYYMMDD): ".
    ACCEPT WS-DATE.
    DISPLAY "Enter time (HHMMSS): ".
    ACCEPT WS-TIME.

    IF WS-DATE > 20231231 THEN
        DISPLAY "Invalid date" 
        GO TO end-program.
    END-IF.

    IF WS-TIME > 235959 THEN
        DISPLAY "Invalid time"
        GO TO end-program.
    END-IF.

    DISPLAY "Date: " WS-DATE
    DISPLAY "Time: " WS-TIME

end-program. STOP RUN.