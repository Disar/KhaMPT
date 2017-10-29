# Kha OpenMPT

Play module files in your kha project!

Supported targets:
- Native (C++) :  requires [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) &  [requires Kore MPT](https://github.com/Disar/KMPT)
- HTML5: requires [Chiptune2](https://github.com/deskjet/chiptune2.js)

# Installation

### KhaMPT

Clone this repo under

        project/Libraries/

### HTML5:

1. Build your project at least once so the build folders are created.
2. Copy/Clone the [repository](https://github.com/deskjet/chiptune2.js) where ever you like.
3. Copy the files 

    . chiptune2.js
    . libopenempt.js
    . libopenmpt.js.mem

    To the root of the folder of your html5 build where the index.html resides:
    
    project/build/html5-debug 
    or
    project/build/html5

4. edit the index.html to include the scripts

        <body>
        	<canvas id="khanvas" width="0" height="0"></canvas>
        	<script src="kha.js"></script>
        	<script src="libopenmpt.js"></script>
        	<script src="chiptune2.js"></script>
        </body>

### Kore(c++):

1.  Clone KoreMPT and add it to your project under Libraries.
2.  In the korempt folder create a folder names LibOpenMPT
3.  Download libopenmpt and unzip it under the previously created folder
    The folder structures should look like

        project/Libraries/korempt/LibOpebMPT/common/
        project/Libraries/korempt/LibOpenMPT/libopenmpt/
        project/Libraries/korempt/LibOpenMPT/include/
        
4. Add the lib to your khafile.js

        project.addLibrary('korempt');


### Playing modules:

    import kha.modplayer.ModulePlayer;
    
    class myClass{
    	var mod:ModulePlayer;
    	
    	//somewhere in your code
    	    mod = new ModulePlayer();
    		mod.init();
    		mod.setFile(kha.Assets.blobs.mod_file);
    		mod.setVolume(1.0);
    		mod.play();
    }
    
### Notes

For kore/c++ targets it's important that ModulePlayer object is defined in class scope as a member variable in haxe.
Creating it as a local variable ( i.e. in a function ) means the object is deleted once it goes out of scope.