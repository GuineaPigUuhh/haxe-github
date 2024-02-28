package;

import haxe.Json;
import sys.io.File;
import api.Github; 

class Test
{
    public static function main()
    {
        var data:Array<Dynamic> = Json.parse(Github.githubData('https://api.github.com/users/GuineaPigUuhh/followers'));
        for (i in data)
        {
            trace('${i.login}, ${i.html_url}');
        }
    }    
}