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