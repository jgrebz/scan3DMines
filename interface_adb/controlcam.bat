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
<HTA:APPLICATION 
  SCROLL="yes" 
  SYSMENU="yes"
  APPLICATIONNAME="Scanner 3D Mobile"
  BORDER="thin"
  ICON="icone.ico"
  SINGLEINSTANCE="yes"
  INNERBORDER="No"
  SELECTION="No"
  MAXIMIZEBUTTON="No"
  MINIMIZEBUTTON="No" >

<TITLE>Scanner 3D Mobile</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(1000,900);

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

</SCRIPT>
<meta charset="utf-8" />
    
    <title>Contrôle du scanner mobile</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    
</HEAD>
<BODY>
    <div id="wrapper">
         
        
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>Contrôle du scanner mobile</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Bienvenue</strong> sur la page de contrôle du smartphone.
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 

                <div class="row text-center pad-top">

                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
                      <div class="div-square">
                      <!--button class="button" onclick=""-->
                        <h4>Etape 1</h4>
                        <p>Calibration du smartphone</p>
                      <!--/button-->
                      </div>
                  </div> 

                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-6">
                      <div class="div-square">
                      <button class="button" onclick="wakeup();">
                      	<h4>Etape 2</h4>
                        <p>Sortir de la mise en veille</p>
                      </button>
                      </div>
                  </div> 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                      	<button class="button" onclick="opencam();">
                      		<h4>Etape 3</h4>
                          <p>Lancer l'appareil photo</p>
                      	</button>
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                        <button class="button" onclick="settings();">
                      		<h4>Etape 4</h4>
                          <p>Réglages APN</p>
                      	</button>
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                        <!--button class="button" onclick=""-->
                          <h4>Etape 5</h4>
                          <p>Acquisition</p>
                        <!--/button-->
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
						            <button class="button" onclick="save_seq();">
                      		<h4>Etape 6</h4>
                          <p>Enregistrement de la séquence</p>
                      	</button>
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                        <!--button class="button" onclick=""-->
                          <h4>Etape 7</h4>
                          <p>Intégration à Substance</p>
                        <!--/button-->
                      </div>
                  </div>
                  
              </div>
                 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                    Scanner de matériaux 3D mobile | octobre 2017 | SmartPixel | Mines-Paristech
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    
    
   
</BODY>
</HTML>
