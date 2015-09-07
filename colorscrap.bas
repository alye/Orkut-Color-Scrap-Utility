'Orkut Colour Scrap Utility v1.0
'Created by - Zeeshan Khatri
'Class 9. Niranjanlal Dalmia High school
'This program generates the code for making your scrap more colourful and
'attractive. The corresponding code for your scrap will be printed to the
'"scrap.txt" file. Copy the code from there and paste it in the scrapbook
'message box. Happy scrapping!!

'Programmed in Qbasic 4.5. It can be used with FreeBasic as well.


CLS
COLOR 15
PRINT "--------------------------------------------------------------------------------"
PRINT "<<<<<<<<<<<<<<<<<<<<<< Orkut Colour Scrap Utility v1.0 >>>>>>>>>>>>>>>>>>>>>>>>>"
PRINT "--------------------------------------------------------------------------------"
LOCATE 21: PRINT TAB(37); "Created By - Zeeshan Khatri,"
PRINT TAB(50); "Niranjanlal Dalmia high school,"
PRINT TAB(50); "E-mail:- andy.bas007@gmail.com "
LOCATE 6: INPUT "       Enter your message: ", msg$
mlen = LEN(msg$)
m = 1
LOCATE 10: PRINT TAB(20); "Select the alignment of your message"
PRINT TAB(25); "1. Vertical alignment"
PRINT TAB(25); "2. Horizontal alignment"
PRINT ""
INPUT "          Enter your choice: ", a
OPEN "scrap.txt" FOR OUTPUT AS #1
IF a = 1 THEN GOSUB verti
IF a = 2 THEN GOSUB hori
IF a > 2 OR a < 1 THEN GOSUB errr

GOSUB ending

hori:
FOR k = 1 TO mlen
 msgl$ = LEFT$(msg$, k)
 msgr$ = RIGHT$(msgl$, 1)
 m = m + 1
 IF m >= 8 THEN m = 1
 IF msgr$ = " " THEN newmsg$ = " ": GOTO 1
 IF m = 1 THEN newmsg$ = "[violet]" + msgr$ + "[/violet]": GOTO 1
 IF m = 2 THEN newmsg$ = "[purple]" + msgr$ + "[/purple]": GOTO 1
 IF m = 3 THEN newmsg$ = "[blue]" + msgr$ + "[/blue]": GOTO 1
 IF m = 4 THEN newmsg$ = "[green]" + msgr$ + "[/green]": GOTO 1
 IF m = 5 THEN newmsg$ = "[yellow]" + msgr$ + "[/yellow]": GOTO 1
 IF m = 6 THEN newmsg$ = "[orange]" + msgr$ + "[/orange]": GOTO 1
 IF m = 7 THEN newmsg$ = "[red]" + msgr$ + "[/red]": GOTO 1
1 finmsg$ = finmsg$ + newmsg$
NEXT k
PRINT #1, finmsg$
CLOSE #1
GOSUB ending

verti:
FOR k = 1 TO mlen
 msgl$ = LEFT$(msg$, k)
 msgr$ = RIGHT$(msgl$, 1)
 m = m + 1
 IF m >= 8 THEN m = 1
 IF msgr$ = " " THEN newmsg$ = " ": GOTO 3
 IF m = 1 THEN newmsg$ = "[violet]" + msgr$ + "[/violet]": GOTO 3
 IF m = 2 THEN newmsg$ = "[purple]" + msgr$ + "[/purple]": GOTO 3
 IF m = 3 THEN newmsg$ = "[blue]" + msgr$ + "[/blue]": GOTO 3
 IF m = 4 THEN newmsg$ = "[green]" + msgr$ + "[/green]": GOTO 3
 IF m = 5 THEN newmsg$ = "[yellow]" + msgr$ + "[/yellow]": GOTO 3
 IF m = 6 THEN newmsg$ = "[orange]" + msgr$ + "[/orange]": GOTO 3
 IF m = 7 THEN newmsg$ = "[red]" + msgr$ + "[/red]": GOTO 3
3 PRINT #1, newmsg$
NEXT k
CLOSE #1
GOSUB ending

errr:
LOCATE 16: PRINT TAB(25); "<<<<< Invalid choice >>>>>"
LOCATE 18: PRINT TAB(20); "<<<<< Press any key to Exit >>>>>"
DO
LOOP WHILE INKEY$ = ""
END

ending:
LOCATE 16: PRINT " The Corresponding code for your message has been sent to the 'scrap.txt' file. "
PRINT " Open the file, copy the code and paste it into the orkut scrap window. Enjoy!!"
LOCATE 19: PRINT TAB(20); "<<<<< Press Any Key To Exit >>>>>"
DO
LOOP WHILE INKEY$ = ""




