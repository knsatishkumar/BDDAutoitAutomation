

; Run the Windows Calculator.
Run("calc.exe")

; Wait for the calculator to become active with a timeout of 10 seconds.
 Local $hWnd = WinWaitActive("Calculator", "", 10)

; If the calculator did not appear after 10 seconds then exit the script.
If WinExists("Calculator") = 0 Then Exit


;ControlClick("Calculator" , "" , "Button5")
;ControlClick("Calculator" , "" , "Button23")
;ControlClick("Calculator" , "" , "Button5")
; Automatically type the 123456789 into the calculator.
ControlSend("Calculator", "","#327701", '5')
Sleep(1000)
ControlClick("Calculator" , "" , "Button23")
Sleep(1000)
ControlSend("Calculator", "","#327701", '5')
Sleep(1000)
ControlClick("Calculator" , "" , "Button28")

;Local $sText = WinGetText($hWnd, "", "#327701")

Local $Text=ControlGetText("Calculator","","#327701")

; Display the text of the edit control.
;MsgBox($MB_SYSTEMMODAL, "", "The text in Edit1 is: " & $sText)
;MsgBox($MB_SYSTEMMODAL, "", "The text in Edit1 is: " & $Text)

 ; Retrieve the window text of the active window.
    Local $sText = WinGetText("[ACTIVE]")

    ; Display the window text.
    ;MsgBox($MB_SYSTEMMODAL, "", $sText)

	ConsoleWrite($sText)

	;ECHO ($sText)

; Slow the script down so we can see what's going on.
Sleep(2000)

; Close the Windows calculator - always tidy up afterwards.
WinClose("Calculator")