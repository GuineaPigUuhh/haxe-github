# Haxe-Github

Haxe functions to use the [Github API](https://docs.github.com/pt/rest?apiVersion=2022-11-28).

### Installation

on GIT:

```bash
haxelib git haxe-github https://github.com/GuineaPigUuhh/haxe-github.git
```

### Usage Exemple

```haxe
import haxegithub.utils.*;

var target_user = User.get('GuineaPigUuhh'); // returns User Json
var target_repository = Repository.get('GuineaPigUuhh', 'haxe-github'); // returns Repository Json

// Trace the items
trace("USER: " + target_user + "\nREPOSITORY: " + target_repository);
/* USER: https://api.github.com/users/GuineaPigUuhh */
/* REPOSITORY: https://api.github.com/repos/GuineaPigUuhh/haxe-github */
```

#### Other Usage Exemple:

- [HaxeFlixel](https://github.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple)
  ![HaxeFlixelImg](https://raw.githubusercontent.com/GuineaPigUuhh/HaxeFlixel-Github-Exemple/main/img/e.PNG)
