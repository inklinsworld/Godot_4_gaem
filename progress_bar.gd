extends Control

@export var player : CharacterBody3D


func _process(delta: float) -> void:
	$ProgressBar.value = player.stamina
