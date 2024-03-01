package haxegithub;

import haxe.Json;
import haxe.Http;
import haxegithub.types.*;

/**
 * Haxe Github API
 * 
 * Library by GuineaPigUuhh
 * 
 */
class Github {
    /**
     * get User JSON
     * @param user 
     */
    public static function getUser(user:String) 
        return githubParse('https://api.github.com/users/${user}');

    /**
     * get User Repository JSON
     * @param user 
     * @param repo 
     */
    public static function getRepo(user:String, repo:String) 
        return githubParse('https://api.github.com/repos/${user}/${repo}');
    

    /**
     * search a User and get the JSON
     * @param user 
     */
    public static function searchUser(user:String) 
        return githubParse('https://api.github.com/search/users?q=${user}');

    /**
     * search a Repository and get the JSON
     * @param repo 
     */
    public static function searchRepo(repo:String) 
        return githubParse('https://api.github.com/search/repositories?q=${repo}');

    /**
     * search a Topic and get the JSON
     * @param topic 
     */
    public static function searchTopic(topic:String) 
        return githubParse('https://api.github.com/search/topics?q=${topic}');

    /**
     * search a Issue and get the JSON
     * @param issue 
     */
    public static function searchIssue(issue:String) 
        return githubParse('https://api.github.com/search/issues?q=$issue');

    /**
     * search a Code and get the JSON
     * @param code 
     */
    public static function searchCode(code:String) 
        return githubParse('https://api.github.com/search/code?q=$code');

    /**
     * search Commit and get the JSON
     * @param commit 
     */
    public static function searchCommit(commit:String) 
        return githubParse('https://api.github.com/search/commits?q=$commit');

    /**
     * search Label and get the JSON
     * @param label 
     * @param id 
     */
    public static function searchLabel(label:String, id:String)
        return githubParse('https://api.github.com/search/labels?q=${label}&repository_id=${id}');

    /**
     * get a file from a repository
     * @param user 
     * @param repo 
     * @param branch 
     * @param file 
     */
    public static function getContent(user:String, repo:String, branch:String, file:String)
        return githubRequest('https://raw.githubusercontent.com/$user/$repo/$branch/$file');
    
    /**
     * easy Parse Github JSON
     * @param url 
     */
    public static function githubParse(url:String)
        return Json.parse(githubRequest(url));
    
    /**
     * is used to give a request to github and returns a JSON string
     * @param url 
     */
    public static function githubRequest(url:String) {
        var current_data = null;
        var api = new Http(url);
        api.setHeader("User-Agent", "request");

        api.onData = function (data) current_data = data;
        api.onError = function (error) throw error;

        api.request();
        return current_data;
    }

    /**
     * is used to give a request to github and returns the Bytes
     * @param url 
     */
    public static function githubRequestBytes(url:String) {
        var current_data = null;
        var api = new Http(url);
        api.setHeader("User-Agent", "request");

        api.onBytes = function (data) current_data = data;
        api.onError = function (error) throw error;

        api.request();
        return current_data;
    }
}