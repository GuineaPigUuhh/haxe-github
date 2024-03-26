package haxegithub.utils;

import haxegithub.Request;

/**
 * TODO: add more types to search
 */
enum SearchTypes {
	USER;
	REPOSITORY;
}

class Search {
	/**
	 * TODO: add support for Specifications
	 * 
	 * search a Item
	 * @param name 
	 * @param type 
	 */
	public static function search(name:String, ?type:SearchTypes = REPOSITORY):Dynamic {
		var urlType = switch (type) {
			case USER:
				'search/users?q=$name';
			case REPOSITORY:
				'search/repositories?q=$name';
		}
		return Request.easyparse(urlType);
	}
}
