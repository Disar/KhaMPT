package kha.modplayer.imp;

class Chiptune{

	var player:kha.modplayer.backends.chiptunejs.ChiptuneJS.ChiptuneJsPlayer;
	var blob:kha.Blob;

	public function new() {
		
	}
	
	public function init() : Void{		
		var config = {repeatCount:-1};
		player = new kha.modplayer.backends.chiptunejs.ChiptuneJS.ChiptuneJsPlayer(config);
	}
	public function play() : Void{
		if(blob == null) return;
		if(player == null) return;		
		player.play(blob.toBytes().getData());
	}
	public function setFile(buffer:kha.Blob) : Void{
		blob = buffer;
	};
	public function pause() : Void{
		if(player == null) return;		
		player.togglePause();
	}
	public function stop() : Void{
		if(player == null) return;		
		player.stop();		
	}
	public function resume() : Void{
		if(player == null) return;		
		player.togglePause(); // FIX
	};

	public function setVolume(v:Float) : Void{
	
	};

}