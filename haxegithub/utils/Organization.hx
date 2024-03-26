import haxegithub.Request;

/**
 * Github Organization Util
 */
class Organization {
	/**
	 * Return the Organization JSON
	 * @param organization 
	 * @return Dynamic
	 */
	public static function get(organization:String):Dynamic {
		var api = new GithubAPI();
		api.request('orgs/$organization');
		return api.json;
	}

	/**
	 * Return the Organization Repositorys JSON
	 * @param organization 
	 * @return Dynamic
	 */
	public static function getRepositorys(organization:String):Dynamic {
		var api = new GithubAPI();
		api.request('orgs/$organization/repos');
		return api.json;
	}

	/**
	 * Return the Organization Teams JSON
	 * @param organization 
	 * @return Dynamic
	 */
	public static function getTeams(organization:String):Dynamic {
		var api = new GithubAPI();
		api.request('orgs/$organization/team');
		return api.json;
	}
}
