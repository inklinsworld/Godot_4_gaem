extends Control

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://test_scenes/test.tscn")
  


func _on_button_2_pressed() -> void:
	get_tree().quit()
