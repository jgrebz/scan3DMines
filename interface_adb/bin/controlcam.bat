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

function vysor(){
   var oShell = new ActiveXObject("Shell.Application");
   oShell.ShellExecute("Vysor.exe");
}

function arduino(){
   var oShell = new ActiveXObject("Shell.Application");
   oShell.ShellExecute("arduino.exe");
}

function liste(){
   var wshShell = new ActiveXObject("WScript.Shell");
   var output = wshShell.Exec("cmd /c dir \"../Scans/\" /b").StdOut.readAll().split("\n");
   var html_list = "<form method=\"post\"> <p> <select id=\"selected_folder\" name=\"menu_destination\">"
   for (var i= 0; i < output.length - 1; i++) {
   	 var name = output[i];
	 html_list = html_list + "<option value=\"" + name + "\">" + name + "</option>";
	 }
   html_list = html_list + "</select> <input type=\"button\" value=\"Go\" onclick=\"load_seq()\" /> </p> </form>"
   return html_list;
}

function show_seq(){
   document.getElementById("list").innerHTML = liste();
   document.getElementById("list").style.display = 'block';
   document.getElementById("check_list").style.display = 'none';
}

function load_seq() {
   var select = document.getElementById("selected_folder");
   var folder = select.options[ select.selectedIndex ].value;
   var wshShell = new ActiveXObject("WScript.Shell");
   wshShell.Run("integration.bat "+folder,0,true);
   document.getElementById("list").style.display = 'none';
   document.getElementById("check_list").style.display = 'block';
}

function save_seq(){
  var nom_dossier = document.getElementById("nom_dossier").value;
  var programme = "getfiles.bat ";
  var run = programme+nom_dossier;
  var wshShell = new ActiveXObject("WScript.Shell");
  wshShell.Run(run,0,true);
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
                        <h4>Etape 1</h4>
			<input type="button" value="Ouvrir Vysor" onclick="vysor()" />
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                          <h4>Etape 2</h4>
                          <input type="button" value="Ouvrir l'interface Arduino" onclick="arduino()" />
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                          <h4>Etape 3</h4>
                          <p>Enregistrement de la séquence sous le nom :</p>
                        <form>
                          <textarea id="nom_dossier" rows="1" col="30"></textarea>
			  <input type="button" value="OK" onclick="save_seq()" />
                        </form>
                      </div>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                        <!--button class="button" onclick=""-->
                          <h4>Etape 4</h4>
                          <p>Intégration à Substance</p>
			  <div id="check_list"><input type="button" value="Chercher les sequences disponibles" onclick="show_seq()" /></div>
			  <div id="list" style="display:none"><script>document.write(liste())</script></div>
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
