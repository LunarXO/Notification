Do not use this code maliciously.
You can fake the notification being from other apps, if you want to change the AUMID to another app:

1Press Win + R
2.Enter shell:AppsFolder
3.In File Explorer: Sort / Group by AppUserModelID
4.Copy any AppUserModelID you want and replace it as so:

$AUMID="MSEdge"   ->   $AUMID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\charmap.exe"

{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7} is the AUMID for powershell, however it also can have other apps used on top ex: {1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\services.msc

Here is a list of all the executable you can put on top off powershell's AUMID:
\charmap.exe
\cleanmgr.exe
\cmd.exe
\comexp.msc
\dfrgui.exe
\iscsicpl.exe
\LiveCaptions.exe
\magnify
\MdSched.exe
\msinfo32.exe
\narrator.exe
\obdbcad32.exe
\osk.exe
\psr.exe
\RecovertDrive.exe
\services.msc
\voiceaccess.exe
\WF.msc
\WindowsPowerShell\v1.0\powershell.exe
\WindowsPowerShell\v1.0\PowerShell_ISE.exe
