package haxegithub;

import haxe.Http;
import haxe.Json;

class Request {
	/**
	 * easy Parse Github JSON
	 * @param url 
	 */
	public static function easyparse(url:String):Dynamic {
		var result = Json.parse(api_request(url));
		return result;
	}

	/**
	 * Easy request to the Github API
	 * @param more 
	 * @return String
	 * @return return request('https://api.github.com/$more')
	 */
	public static function api_request(more:String)
		return request('https://api.github.com/$more');

	/**
	 * Easy request bytes o the Github API
	 * @param more 
	 * @return String
	 */
	public static function api_requestBytes(more:String)
		return requestBytes('https://api.github.com/$more');

	/**
	 * is used to give a request a site and returns a JSON string
	 * @param url 
	 * @return String
	 */
	public static function request(url:String) {
		var current_data = null;
		var api = new Http(url);
		api.setHeader("User-Agent", "request");

		api.onData = function(data) current_data = data;
		api.onError = function(error) trace(error);

		api.request();
		return current_data;
	}

	/**
	 * is used to give a request a site and returns the Bytes
	 * @param url 
	 * @return haxe.io.Bytes
	 */
	public static function requestBytes(url:String) {
		var current_data = null;
		var api = new Http(url);
		api.setHeader("User-Agent", "request");

		api.onBytes = function(data) current_data = data;
		api.onError = function(error) trace(error);

		api.request();
		return current_data;
	}
}
