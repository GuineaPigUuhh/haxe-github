# Haxe-Github
Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

### Installation
for now it's just git, but maybe I'll add it to Haxelib
```bash
haxelib git haxe-github https://github.com/GuineaPigUuhh/haxe-github.git
```

### Usage Exemple
```haxe
import haxegithub.Github;

trace(Github.getUser('GuineaPigUuhh'));
// RESULT: https://api.github.com/users/GuineaPigUuhh

trace(Github.getRepo('GuineaPigUuhh', 'haxe-github'));
// RESULT: https://api.github.com/repos/GuineaPigUuhh/haxe-github
```

#### Other Usage Exemple:
- [HaxeFlixel](https://github.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple)

![HaxeFlixelImg](https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/e.PNG)