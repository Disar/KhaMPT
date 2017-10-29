package kha.modplayer.backends.chiptunejs;

@:native('ChiptuneAudioContext')
extern class ChiptuneAudioContext{

}


@:native('ChiptuneJsPlayer')
extern class ChiptuneJsPlayer{
	function new(config:ChiptuneJsConfig) : Void;
	function duration() : Int;
	function play(buffer:haxe.io.BytesData) : Void;
	function stop() : Void;
	function togglePause() : Void;
}

typedef ChiptuneJsConfig = {
	var repeatCount:Int;
	 @:optional var context:ChiptuneAudioContext;
}