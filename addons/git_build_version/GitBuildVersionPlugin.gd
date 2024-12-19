@tool
class_name GitBuildVersionPlugin extends EditorPlugin

const PLUGIN_NAME = "GIT_BUILD_VERSION"
const PLUGIN_RES = "res://addons/git_build_version/GitBuildVersion.gd"

func _enable_plugin():
	add_autoload_singleton(PLUGIN_NAME, PLUGIN_RES)

func _disable_plugin():
	remove_autoload_singleton(PLUGIN_NAME)

func _build():
	return true
