package kha.modplayer.backends.korempt;

@:headerCode('#include <Kore/pch.h>')
@:unreflective
@:structAccess
@:include("MPTStreamer.h")
@:native("KMPT::MPTStreamer")
extern class MPTStreamer{

		 //----------------------------------------------------------	
		 @:native("KMPT::MPTStreamer")public static function create () : MPTStreamer;
		 //----------------------------------------------------------

		public function loadFile(file:kha.internal.BytesBlob) : Void;
		public function selectSubSong(songIndex:Int) 		: Void;
		public function setVolume(v:Float) 					: Void;
		public function setLoop(loopCount:Int)				: Void;
		public function pause() 							: Void;
		public function resume()							: Void;
		public function stop() 								: Void;
		public function init()								: Void;
}