extends Control


func _on_new_game_button_pressed():
	get_tree().change_scene_to_file("res://TestScene.tscn")

func _on_settings_button_pressed():
	print("TODO: make settings screen")

func _on_quit_button_pressed():
	get_tree().quit();
