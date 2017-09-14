<!-- :: Batch section
@echo off
setlocal
if not defined flag set "flag=1" & start "HTA" /MIN "%~F0" & goto :EOF

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
exit
-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="yes" >

<TITLE>Camera control</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(800,200);

function settings(){
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("settings.bat",0,true);
}

function wakeup(){
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("wakeup.bat",0,true);
}

function opencam(){
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("opencam.bat",0,true);
}

function save_seq(){
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("getfiles.bat",0,true);
  }

function init_seq(){
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("init_seq.bat",0,true);
}

</SCRIPT>
</HEAD>
<BODY>
   <button onclick="wakeup();">Wake up phone</button>
   <button onclick="opencam();">Open camera</button>
   <button onclick="settings();">Settings</button>
   <button onclick="save_seq();">Save sequence</button>
   <button onclick="init_seq();">Start sequence</button>
</BODY>
</HTML>
