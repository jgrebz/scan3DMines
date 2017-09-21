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