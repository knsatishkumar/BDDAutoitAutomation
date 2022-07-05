#pragma compile(Out, 'consoleau3.exe')
#pragma compile(Console, True)

$sAutoit = 'C:\Program Files (x86)\AutoIt3\AutoIt3.exe'

$iPid = Run('"' & $sAutoit & '" /ErrorStdout ' & $CMDLINERAW, '', @SW_SHOW, 2) ; 2 = Get Stdout stream.
If @error Then Exit

; Open process handle.
$hPid = _ProcessOpenHandle($iPid)

; Get Stdout stream and then print to Console.
$sStdout = ''

Do
    Sleep(10)
    If $sStdout Then ConsoleWrite($sStdout & @CRLF)
    $sStdout = StdoutRead($iPid)
Until @error

; Require process to be closed before calling _ProcessGetExitCode()
ProcessWaitClose($iPid)

; Get exitcode of process.
$iExitcode = _ProcessGetExitCode($hPid)

; Close process handle.
_ProcessCloseHandle($hPid)

Exit $iExitcode

Func _ProcessOpenHandle($iPID)
    ; Get the process handle of the process to query\n Return: Success Handle as array. Failure 0
    Local Const $PROCESS_QUERY_INFORMATION = 0x400
    Local $hPID = DllCall('kernel32.dll', 'ptr', 'OpenProcess', 'int', $PROCESS_QUERY_INFORMATION, 'int', 0, 'int', $iPID)
    If @error Then Return SetError(@error, @extended, 0)
    Return $hPID[0]
EndFunc

Func _ProcessGetExitcode($hPID)
    ; Get exitcode of the closed process\n Return: Success Exitcode as integer. Failure 0
    Local $vPlaceholder
    $hPID = DllCall('kernel32.dll', 'ptr', 'GetExitCodeProcess', 'ptr', $hPID, 'int*', $vPlaceholder)
    If @error Then Return SetError(@error, @extended, 0)
    Return $hPID[2]
EndFunc

Func _ProcessCloseHandle($hPID)
    ; Close the handle of a process\n Return: Success 1. Failure 0
    DllCall('kernel32.dll', 'ptr', 'CloseHandle', 'ptr', $hPID)
    If @error Then Return SetError(@error, @extended, 0)
    Return 1
EndFunc