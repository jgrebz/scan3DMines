--------------------------
PRERECQUIS ET INSTALLATION
--------------------------

1. ADB

L'outil ADB est nécessaire au fonctionnement du programme.
Un programme d'installation vous est fourni :

	a. Executez "15-seconds-adb-installer_1-4-2_fr_432817.exe" (dans le sous-dossier "adb")
	b. Suivez les instructions, répondre "Y" à chaque étape
	c. Vérifiez que adb est bien présent dans le path :
		-Ouvrez l'"Invite de commandes" (tapez "cmd" dans l'outil de recherche du menu démarrer)
		-Tapez "adb version" puis la touche "Entrée"
		-Si la console affiche quelque chose commençant par "Android Debug Bridge", c'est bon, sinon ajoutez adb au path
	d. Pour ajouter adb au path :
		-Trouvez le dossier d'installation contenant "adb.exe", par exemple "C:\adb"
		-Ajoutez ce dossier au pass en tapant dans la console 'setx path "%path%;path\to\adb"', par exemple 'setx path "%path%;C:\adb"'

2. Substance

Substance est nécessaire au traitement des photos afin d'obtenir la normal map et l'albedo.

-----------
UTILISATION
-----------

1. Préparation du téléphone

	a. Votre téléphone doit être connecté par USB en mode debug à votre ordinateur.
	b. Activez la connection Bluetooth et connectez vous à ""                                       ### à préciser
	c. Placez le téléphone dans le scanner                                                          ### à préciser

2. Calibration du scanner

	a. Ouvrez la fenêtre de contrôle principale en exécutant "Smartscan.exe"
	b. De cette fenêtre, ouvrez Vysor (ça peut prendre un peu de temps) et l'interface Arduino
	c. Grâce à Vysor vous pouvez voir l'écran du téléphone et le contrôler depuis l'ordinateur
	d. Ouvrez l'application caméra que vous voulez utiliser

                                                                                                        ### à finir

3. Acquisition de la séquence

                                                                                                        ### à faire

4. Enregistrement de la séquence

	a. Sur la fenêtre principale, vous pouvez enregistrer la dernière séquence acquise
	b. Renseignez dans le champ approprié (Etape 3) le nom que vous voulez donner à la séquence
	c. Validez en cliquant sur OK

5. Intégration à Substance Designer

	a. Ouvrez le fichier Smartscan.sbs du sous-dossier substance avec Substance Designer
	b. Cliquez sur "Cherchez les séquences disponibles" dans la fenêtre principale
	c. Dans le menu déroulant qui s'affiche, sélectionnez la séquence que vous voulez charger et cliquez sur OK
		* si elle n'y est pas c'est qu'elle n'a pas fini de s'enregistrer, faites "Retour" et recommencez
	d. Les ressources dans Substance Designer se mettent à jour automatiquement

6. Paramètre sur Substance Designer

Certains paramètre du noeud Pics_to_maps peuvent être réglés par l'utilisateur :

	-Dimensions_de_l_image_d_origine : largeur et hauteur (en pixel) de l'image d'origine, la valeur par défaut correspond au format des photos prises par le Motorola X1560

	-Zoom : permet de zoomer sur une partie de l'image, 0 correspond au plus grand carré possible sur l'image, 1 correspond à 1 pixel
		* attention le crop entraîne une diminution de la qualité de l'image, il est préférable de cadrer le scanner

	-Décalage_de_l_image : permet de faire glisser l'image afin de centrer sur la zone d'intérêt
		* le cadre ne peut pas sortir de l'image, en format portrait, si le crop est à 0 il n'y a pas de déplacement horizontal possible

	-Intensité : règle la saturation de la normal map, une valeur plus élevée accentue les reliefs

	-Format : permet de choisir entre DirectX et OpenGL pour la normal map