package kha.modplayer.imp;


import kha.modplayer.backends.korempt.MPTStreamer;

@:headerCode('#include <Kore/pch.h>')

class KoreMPT {
	var player:MPTStreamer;

	public function new()  {}	
	public function init() : Void {
		player =  MPTStreamer.create();
		player.init();
	}
	public function play() : Void{
		if(isNull()) return;		
		player.resume();
	}
	public function setFile(buffer:kha.internal.BytesBlob) : Void{
		if(isNull()) return;	
		player.pause();		
		player.loadFile(buffer);
	};
	public function pause() : Void{
		if(isNull()) return;		
		player.pause();
	}
	public function stop() : Void{
		if(isNull()) return;		
		player.stop();		
	}
	public function resume() : Void{
		if(isNull()) return;		
		player.resume();		
	};

	public function setVolume(v:Float) : Void{
		player.setVolume(v);
	};


	inline function isNull(){
		return untyped __cpp__('&player == nullptr');
	} 
}