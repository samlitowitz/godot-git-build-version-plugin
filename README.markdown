# Godot Git Build Version Plugin

# Installation

Clone this repository or download the
latest [release](https://github.com/samlitowitz/godot-git-build-version-plugin/releases/latest).

Copy the `addons/` folder to your project's root directory.

![copied addons directory in Godot project](assets/install-addons-directory.png)

Open the `Project Settings` dialog, navigate to the `Plugins` tab, and enable the plugin

[!enable the plugin](assets/enable-plugin.png)

# Usage

```godot
extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print(GIT_BUILD_VERSION.long())
	print(GIT_BUILD_VERSION.short())
```

# API Docs

| Return Type | Function Name and Parameters |
| --- | --- |
| [String](https://docs.godotengine.org/en/stable/classes/class_string.html#class-string) | `short()` |
| [String](https://docs.godotengine.org/en/stable/classes/class_string.html#class-string) | `long()` |
| [String](https://docs.godotengine.org/en/stable/classes/class_string.html#class-string) | `get_version()` |
| [String](https://docs.godotengine.org/en/stable/classes/class_string.html#class-string) | `get_build()` |
| [String](https://docs.godotengine.org/en/stable/classes/class_string.html#class-string) | `get_commit()` |
