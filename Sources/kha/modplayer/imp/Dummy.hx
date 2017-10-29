package kha.modplayer.imp;

class Dummy {
	public function new()  {}	
	public function init() : Void{
		trace("No suitable MPT extension for this platform available. Using Dummy")
	}
	public function play() : Void{}
	public function setFile(buffer:kha.Blob) : Void{};
	public function pause() : Void{}
	public function stop() : Void{}
	public function resume() : Void{};
	public function setVolume(v:Float) : Void{};
}
