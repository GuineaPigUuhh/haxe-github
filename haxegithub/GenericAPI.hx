package haxegithub;

import haxe.Http;
import haxe.Json;

class GenericAPI {
	var data:String = "";

	public function new():Void {}

	public function request(url:String):Void {
		var api = new Http(url);

		api.onData = function(data) this.data = data;
		api.onError = function(error) trace(error);

		api.request();
	}
}
