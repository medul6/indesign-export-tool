InDesign Export Tool
=============

Description
-------


This is an AppleScript for exporting all open documents in diffent formats. Like:

* "PDF-Export" -- export as *.pdf
* "IDML-Export" -- export as *.idml

After executing the script in InDesign you'll be presented with a "function" dialog.
This is where you can choose from one of the functions above.
After that it depends on the function you chose.
You can enter page ranges like "1-5,7-12" or "1,3,5,7,9" or just leave it "all pages".

The files are exported to the same directory as the *.indd files withe same name.



Disclaimer
-----
	Use my scripts at your own risk! I am not responsible for any damages to your InDesign Documents!
	With my Repositories I just want to give the world back what I have got from others who share their code – usable, productive AppleScripts!

Contributing
------------
Want to contribute? Great! You sure know what to do, I am new to Github so I don't know if I am doing this right :)

File-Formats
-----------
    Normally, in InDesign, I use the *.scpt format because it it precompiled but at the same time contains the code and is viewable via QuickLook. 
    I'm also commiting an *.applescript file, just because it it readable (If you just want to take a look) on github and the precompiled is not.
    They should be in sync, always.
    
Localization
-----------
    At the moment the script is mixed, english and german. with the documentation beeing mostly in english but most strings are in german.
    As far as I researched it is not trivial to localize AppleScripts. We (the studio I work in) use these scripts

Installation
-----------
	My scripts should work in a variety of InDesign Versions which is wy I use the Application ID instead of the name.
	But they should definitly work in the latest InDesign Version. We update our Adobe apps as soon as a new version comes out.
    Put the file in the application folder "Adobe InDesign CSx" > "Scripts" > "Scripts Panel"

Usage
-----
    open InDesign and some documents and start the script from the "Scripts Panel"
