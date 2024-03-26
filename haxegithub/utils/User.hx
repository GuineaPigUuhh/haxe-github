package haxegithub.utils;

import haxegithub.Request;

class User {
	/**
	 * Return the User JSON
	 * @param user 
	 */
	public static function get(user:String):Dynamic {
		return Request.easyparse('users/$user');
	}

	/**
	 * Return the User Followers JSON
	 * @param user 
	 */
	public static function getFollowers(user:String):Dynamic {
		return Request.easyparse('users/$user/followers');
	}

	/**
	 * Return the User Following Json
	 * @param user 
	 */
	public static function getFollowing(user:String):Dynamic {
		return Request.easyparse('users/$user/following');
	}

	/**
	 * Return the Repositorys from the User
	 * @param user 
	 */
	public static function getRepositorys(user:String):Dynamic {
		return Request.easyparse('users/$user/repos');
	}

	/**
	 * Return the Gits from the user
	 * @param user 
	 */
	public static function getGists(user:String):Dynamic {
		return Request.easyparse('users/$user/gists');
	}

	/**
	 * Return the Starred Repositorys from the User
	 * @param user 
	 */
	public static function getStarred(user:String):Dynamic {
		return Request.easyparse('users/$user/starred');
	}
}
