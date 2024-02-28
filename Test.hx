package;

import haxe.Json;
import sys.io.File;
import api.Github; 

class Test
{
    public static function main()
    {
        var data = Json.parse(Github.getUser('NineFds'));
        trace(data);
    }    
}