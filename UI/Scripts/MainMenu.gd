extends Control

@export var game_scene_path:String;
@export var settings_screen_path:String;

func _ready() -> void:
	assert(FileAccess.file_exists(game_scene_path),"No Game found")
	assert(FileAccess.file_exists(settings_screen_path),"No settings menu found")
	$VBoxContainer/NewGameButton.pressed.connect(start_new_game)
	$VBoxContainer/SettingsButton.pressed.connect(settings)
	$VBoxContainer/QuitButton.pressed.connect(quit_game)

func start_new_game() ->void:
	get_tree().change_scene_to_file(game_scene_path)

func settings():
	get_tree().change_scene_to_file(settings_screen_path)
func quit_game():
	get_tree().quit();
