package;

import haxegithub.utils.*;
import haxegithub.Request;

/**
 * Exemple of Lib
 */
class Exemple {
	static function main() {
		var repoName = 'haxe-github';
		var searchRepo = Search.search(repoName);
		for (i in 0...searchRepo.items.length) {
			var daItem = searchRepo.items[i];
			if (daItem.name == repoName) {
				trace(daItem);
				break;
			}
		}
	}
}
