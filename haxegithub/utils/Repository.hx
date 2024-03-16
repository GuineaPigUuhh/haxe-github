package haxegithub.classes;

import haxegithub.Request;

class Repository {
    /**
     * Return the Repository JSON
     * @param user 
     * @param repo 
     */
    public static function get(user:String, repo:String) {
        return Request.easyparse('repos/$user/$repo');
    }

    /**
     * get Contributors from a Repository
     * @param user 
     * @param repo 
     */
    public static function getContributors(user:String, repo:String) {
        return Request.easyparse('repos/$user/$repo/collaborators');
    }
}