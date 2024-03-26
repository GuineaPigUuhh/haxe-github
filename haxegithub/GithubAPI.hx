package haxegithub;

import haxe.Http;
import haxe.Json;

class GithubAPI {
	/**
	 * It's for the more complex things
	 */
	public var token:Null<String> = null;

	/**
	 * Request Value
	 */
	public var data:String = "";

	/**
	 * JSON Data
	 */
	public var json:Dynamic = null;

	public function new(?token:Null<String>):Void {
		this.token = token;
	}

	/**
	 * Request to Github API
	 * @param url 
	 */
	public function request(url:String):Void {
		var api = new Http('https://api.github.com/' + url);
		api.setHeader("User-Agent", "request");
		if (token != null)
			api.setHeader("Authorization", "token " + token);

		api.onData = function(data) {
			this.data = data;
			json = Json.parse(data);
		};
		api.onError = function(error) trace(error);

		api.request();
	}
}
