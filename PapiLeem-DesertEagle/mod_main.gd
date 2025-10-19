extends Node

const MOD_DIR = "PapiLeem-DesertEagle"

var mod_dir_path := ""
var extensions_dir_path := ""

func _init():
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(MOD_DIR)

	install_script_extensions()

func install_script_extensions():
	extensions_dir_path = mod_dir_path.plus_file("extensions")

func _ready() -> void:
	
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")

	var mod_log = "PapiLeem"

	ContentLoader.load_data(extensions_dir_path + "/desert_eagle_item.tres", mod_log)
