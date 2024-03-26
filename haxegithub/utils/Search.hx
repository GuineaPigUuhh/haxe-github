package haxegithub.utils;

import haxe.macro.Expr.Case;

enum SearchTypes {
	USER;
	REPOSITORY;
	CODE;
	COMMIT;
	ISSUE;
	LABEL;
	TOPIC;
}

/**
 * Github Search Util
 */
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
				'users';
			case REPOSITORY:
				'repositories';
			case CODE:
				'code';
			case COMMIT:
				'commits';
			case ISSUE:
				'issues';
			case LABEL:
				'labels';
			case TOPIC:
				'topics';
		}

		var api = new GithubAPI();
		api.request('search/$urlType?q=$name');
		return api.json;
	}
}
