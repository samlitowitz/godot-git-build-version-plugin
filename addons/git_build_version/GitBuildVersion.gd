@tool
class_name GitBuildVersion extends Node

const PROJECT_NAME = "Project Name"

var _version: String
var _built_at: String
var _commit: String

var _thread : Thread
var _stdio : FileAccess

func _ready():
	self.build_version_data()

func build_version_data():
	self._set_version()
	self._set_build()
	self._set_commit()

func short():
	return PROJECT_NAME + " - " + self._version + " - " + self._built_at

func long():
	return PROJECT_NAME + \
		"\n Version: " + self._version + \
		"\n Commit:  " + self._commit + \
		"\n Build:   " + self._built_at

func get_version():
	return self._version

func get_build():
	return self._built_at

func get_commit():
	return self._commit

func _set_version():
	var output = []
	var r := OS.execute("sh", ["-c", "git describe --tags --always|sed -e \"s/\\-/\\./g\""], output)
	if (r == -1):
		return
	self._version = output[0].strip_edges()

func _set_build():
	var output = []
	var r := OS.execute("sh", ["-c", "TZ=UTC date +%FT%T%z"], output)
	if (r == -1):
		return
	self._built_at = output[0].strip_edges()

func _set_commit():
	var output = []
	var r := OS.execute("sh", ["-c", "git rev-parse HEAD"], output)
	if (r == -1):
		return
	self._commit = output[0].strip_edges()

