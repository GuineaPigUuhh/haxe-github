# hxgithub-api
Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

### Installation
for now it's just git, but maybe I'll add it to Haxelib
```bash
haxelib git hxgithub-api https://github.com/GuineaPigUuhh/hxgithub-api.git
```

### Usage Exemple
```haxe
import hxgithub.Github;

trace(Github.getUser('NineFds'));
// RESULT (Remembering that it is just a part of the JSON so that the README does not get too big)
/*
    {
        "login": "NineFds",
        "avatar_url": "https://avatars.githubusercontent.com/u/160635502?v=4",
        "gravatar_id": "",
        "name": null,
        "company": null,
        "blog": "",
        "followers": 1,
        "following": 2
    }
*/
```