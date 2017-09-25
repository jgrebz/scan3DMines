--------------------------
PR�REQUIS ET INSTALLATION
--------------------------

1. ADB

L'outil ADB est n�cessaire au fonctionnement du programme.
Un programme d'installation vous est fourni :

	a. Executez "15-seconds-adb-installer_1-4-2_fr_432817.exe" (dans le sous-dossier "adb")
	b. Suivez les instructions, r�pondre "Y" � chaque �tape
	c. V�rifiez que adb est bien pr�sent dans le path :
		-Ouvrez l'"Invite de commandes" (tapez "cmd" dans l'outil de recherche du menu d�marrer)
		-Tapez "adb version" puis la touche "Entr�e"
		-Si la console affiche quelque chose commen�ant par "Android Debug Bridge", c'est bon, sinon ajoutez adb au path
	d. Pour ajouter adb au path :
		-Trouvez le dossier d'installation contenant "adb.exe", par exemple "C:\adb"
		-Ajoutez ce dossier au path en tapant dans la console 'setx path "%path%;path\to\adb"',
		par exemple 'setx path "%path%;C:\adb"'

2. Substance

Substance est n�cessaire au traitement des photos afin d'obtenir la normal map et l'albedo.

3. T�l�phone en mode USB d�bogage

Pour utiliser le programme, le t�l�phone Android doit �tre en mode USB d�bogage.
	
	a. Acc�dez aux param�tres de votre t�l�phone.
	b. Dans l'onglet "A propos de l'appareil", trouvez l'objet "Num�ro de version" ou "Build number".
	c. Cliquez 7 fois sur cet objet.
	d. L'appareil devrait vous indiquer que vous avez activ� le mode d�veloppeur.
	e. Revenez dans le menu pr�c�dent, un onglet "Options de d�veloppement" devrait �tre apparu.
	f. Dans cet onglet, activez l'option "D�bogage USB".

4. Chemin de download des photographies

Le programme r�cup�re automatiquement les photographies � condition qu'elles soient stock�es dans le r�pertoire "/sdcard/DCIM/Camera".
Si ce dossier est modifi�, le t�l�chargement des photos ne sera pas automatis�.

Si l'utilisateur souhaite modifier ce fichier (par exemple si il change d'application photo) , il lui suffit de rentrer le nouveau nom
dans le fichier "DEVICE_DIR.txt".
Attention, ce nom doit �tre exact.


-----------
UTILISATION
-----------

1. Pr�paration du t�l�phone

	a. Votre t�l�phone doit �tre connect� par USB en mode debug � votre ordinateur.
	b. Activez la connection Bluetooth et connectez vous � "ab shutter 3"
	c. Placez le t�l�phone dans le scanner                                                          

2. Calibration du scanner

	a. Ouvrez la fen�tre de contr�le principale en ex�cutant "Smartscan.exe"
	b. De cette fen�tre, ouvrez Vysor (�a peut prendre un peu de temps) et l'interface Arduino
	c. Gr�ce � Vysor vous pouvez voir l'�cran du t�l�phone et le contr�ler depuis l'ordinateur. 
L'interface Arduino permet de g�rer l'allumage des lumi�res.
	d. Ouvrez l'application cam�ra que vous souhaitez utiliser
	e. Placez le plan appropri� sur l'objet.
	f. Alignez l'appareil photo sur le miroir: l'objectif doit �tre au milieu de l'�cran.
	g. Suivez la proc�dure de calibration d�crite dans le PDF "calibration.pdf" dans le dossier 'Tips'

3. Acquisition de la s�quence

	a. Pour lancer l'acquisition de 8 photos, cliquez sur le bouton "Lancer prises de vue" sur l'interface Arduino.
	b. NE PAS BOUGER LE SYSTEME avant la fin de l'acquisition.
	c. Pour ne prendre qu'une seule photo (mesure de transparence ou photo de calibration), l'utilisateur a la possibilit�
de n'allumer qu'une seule barre de LED. La photo unique doit �tre prise directement via l'interface du t�l�phone (via Vysor).

                                                                                                       

4. Enregistrement de la s�quence

	a. Sur la fen�tre principale, vous pouvez enregistrer la derni�re s�quence de 8 photos acquise (s�quence) ou la derni�re photo
(calibration ou opacit�).
	b. Renseignez dans le champ appropri� (Etape 3) le nom que vous voulez donner � la s�quence
	c. Validez en cliquant sur OK

5. Int�gration � Substance Designer

	a. Ouvrez le fichier Smartscan.sbs du sous-dossier substance avec Substance Designer
	b. Cliquez sur "Cherchez les s�quences disponibles" dans la fen�tre principale
	c. Dans le menu d�roulant qui s'affiche, s�lectionnez la s�quence que vous voulez charger et cliquez sur OK
		* si elle n'y est pas c'est qu'elle n'a pas fini de s'enregistrer, faites "Retour" et recommencez
	d. Les ressources dans Substance Designer se mettent � jour automatiquement, il n'est pas n�cessaire de relancer Substance

6. Param�tres sur Substance Designer

Certains param�tres du noeud Pics_to_maps peuvent �tre r�gl�s par l'utilisateur :

	-Dimensions_de_l_image_d_origine : largeur et hauteur (en pixel) de l'image d'origine, la valeur par d�faut correspond au format
	 des photos prises par le Motorola X1560

	-Zoom : permet de zoomer sur une partie de l'image, 0 correspond au plus grand carr� possible sur l'image, 1 correspond � 1 pixel
		* attention le crop entra�ne une diminution de la qualit� de l'image, il est pr�f�rable de cadrer le scanner

	-D�calage_de_l_image : permet de faire glisser l'image afin de centrer sur la zone d'int�r�t
		* le cadre ne peut pas sortir de l'image, en format portrait, si le crop est � 0 il n'y a pas de d�placement horizontal 
	possible

	-Intensit� : r�gle la saturation de la normal map, une valeur plus �lev�e accentue les reliefs

	-Format : permet de choisir entre DirectX et OpenGL pour la normal map