package api;

import haxe.Json;
import haxe.Http;

/**
 * Haxe Github API
 * 
 * Library by GuineaPigUuhh
 */
class Github {
    /**
     * get User JSON
     * @param user 
     */
    public static function getUser(user:String) {
        if(user != '')
            return githubData('https://api.github.com/users/${user}');
        return '';
    }

    /**
     * get User Repo
     * @param user 
     * @param repo 
     */
    public static function getRepo(user:String, repo:String) {
        if(user != '' && repo != '')
            return githubData('https://api.github.com/repos/${user}/${repo}');
        return '';
    }

    /**
     * search a User
     * @param user 
     */
    public static function searchUser(user:String) {
        if(user != '')
            return githubData('https://api.github.com/search/users?q=${user}');
        return '';
    }

    /**
     * search a Repository
     * @param repo 
     */
    public static function searchRepo(repo:String) {
        if(repo != '')
            return githubData('https://api.github.com/search/repositories?q=${repo}');
        return '';
    }

    /**
     * is used to give a request to github and returns a string
     * @param url 
     */
    public static function githubData(url:String) {
        var current_data = null;
        var api = new Http(url);
        api.setHeader("User-Agent", "request");

        api.onData = function (data) {
            if(current_data == null)
                current_data = data;
        }
        api.onError = function (error) throw error;

        api.request();
        return current_data;
    }
}
