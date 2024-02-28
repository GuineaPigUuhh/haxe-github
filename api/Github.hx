package api;

import haxe.Json;
import haxe.Http;

/**
 * Haxe Github API
 * 
 * Library by GuineaPigUuhh
 */
class Github {
    public static function githubData(url:String) {
        var current_data = null;
        var api = new Http(url);
        api.setHeader("User-Agent", "request");

        api.onData = function (data) {
            if(current_data == null)
                current_data = data;
        }
        api.onError = function (error) {
            trace('error: $error');
        }

        api.request();
        return current_data;
    }
}
