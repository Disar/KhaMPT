package kha.modplayer;



#if (kha_html5 || kha_debug_html5)
typedef ModulePlayer = kha.modplayer.imp.Chiptune;
#elseif kha_kore
typedef ModulePlayer = kha.modplayer.imp.KoreMPT;
#else
typedef ModulePlayer = kha.modplayer.imp.Dummy;
#end


/*class Module{
	public static function setup(callback:Void->Void){
		#if kha_html5
		
		var doc = js.Browser.window.document;
		var count:Int = 0;
		var onLoad:Void->Void;

		var chiptune = doc.createScriptElement();
		var libopenmpt =  doc.createScriptElement();

		onLoad = function(){
			count++;
			if(count > 1){
			
				chiptune.onload = null;
				libopenmpt.onload = null;
				callback();
			}
		}


		doc.body.appendChild(libopenmpt);
		doc.body.appendChild(chiptune);

		libopenmpt.src = 'libopenmpt.js';
		chiptune.src = 'chiptune2.js';

		chiptune.onload = onLoad;
		libopenmpt.onload = onLoad;

		#else

		callback();

		#end		
	}
}*/