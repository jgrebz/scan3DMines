--------------------------
PRERECQUIS ET INSTALLATION
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
		-Ajoutez ce dossier au pass en tapant dans la console 'setx path "%path%;path\to\adb"', par exemple 'setx path "%path%;C:\adb"'

2. Substance

Substance est n�cessaire au traitement des photos afin d'obtenir la normal map et l'albedo.

-----------
UTILISATION
-----------

1. Pr�paration du t�l�phone

	a. Votre t�l�phone doit �tre connect� par USB en mode debug � votre ordinateur.
	b. Activez la connection Bluetooth et connectez vous � ""                                       ### � pr�ciser
	c. Placez le t�l�phone dans le scanner                                                          ### � pr�ciser

2. Calibration du scanner

	a. Ouvrez la fen�tre de contr�le principale en ex�cutant "Smartscan.exe"
	b. De cette fen�tre, ouvrez Vysor (�a peut prendre un peu de temps) et l'interface Arduino
	c. Gr�ce � Vysor vous pouvez voir l'�cran du t�l�phone et le contr�ler depuis l'ordinateur
	d. Ouvrez l'application cam�ra que vous voulez utiliser

                                                                                                        ### � finir

3. Acquisition de la s�quence

                                                                                                        ### � faire

4. Enregistrement de la s�quence

	a. Sur la fen�tre principale, vous pouvez enregistrer la derni�re s�quence acquise
	b. Renseignez dans le champ appropri� (Etape 3) le nom que vous voulez donner � la s�quence
	c. Validez en cliquant sur OK

5. Int�gration � Substance Designer

	a. Ouvrez le fichier Smartscan.sbs du sous-dossier substance avec Substance Designer
	b. Cliquez sur "Cherchez les s�quences disponibles" dans la fen�tre principale
	c. Dans le menu d�roulant qui s'affiche, s�lectionnez la s�quence que vous voulez charger et cliquez sur OK
		* si elle n'y est pas c'est qu'elle n'a pas fini de s'enregistrer, faites "Retour" et recommencez
	d. Les ressources dans Substance Designer se mettent � jour automatiquement

6. Param�tre sur Substance Designer

Certains param�tre du noeud Pics_to_maps peuvent �tre r�gl�s par l'utilisateur :

	-Dimensions_de_l_image_d_origine : largeur et hauteur (en pixel) de l'image d'origine, la valeur par d�faut correspond au format des photos prises par le Motorola X1560

	-Zoom : permet de zoomer sur une partie de l'image, 0 correspond au plus grand carr� possible sur l'image, 1 correspond � 1 pixel
		* attention le crop entra�ne une diminution de la qualit� de l'image, il est pr�f�rable de cadrer le scanner

	-D�calage_de_l_image : permet de faire glisser l'image afin de centrer sur la zone d'int�r�t
		* le cadre ne peut pas sortir de l'image, en format portrait, si le crop est � 0 il n'y a pas de d�placement horizontal possible

	-Intensit� : r�gle la saturation de la normal map, une valeur plus �lev�e accentue les reliefs

	-Format : permet de choisir entre DirectX et OpenGL pour la normal map