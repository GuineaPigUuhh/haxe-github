package haxegithub.utils;

/**
 * Github Repository Util
 */
class Repository {
	/**
	 * Return the Repository JSON
	 * @param user 
	 * @param repo 
	 */
	public static function get(user:String, repo:String):Dynamic {
		var api = new GithubAPI();
		api.request('repos/$user/$repo');
		return api.json;
	}

	/**
	 * get Contributors from a Repository
	 * @param user 
	 * @param repo 
	 */
	public static function getContributors(user:String, repo:String):Dynamic {
		var api = new GithubAPI();
		api.request('repos/$user/$repo/collaborators');
		return api.json;
	}
}
