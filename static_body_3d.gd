class_name watcher
extends StaticBody3D
const GREEN = preload("res://materials/green.tres")
const RED = preload("res://materials/red.tres")
@onready var mesh: MeshInstance3D = $MeshInstance3D

var is_red_light = false
var difficulty = 0
var times_flipped = 0

@export var min_time = 2.0
@export var max_time = 5.0
@onready var timer: Timer = $Timer

signal red_light
signal green_light

func _ready():
	timer.wait_time = randf_range(min_time, clamp(max_time, min_time, max_time - difficulty))

func set_timer():
	timer.wait_time = randf_range(min_time, clamp(max_time, min_time, max_time - difficulty))
	timer.start()

func _on_timer_timeout() -> void:
	if is_red_light:
		is_red_light = false
		green_light.emit()
		set_timer()
		mesh.set_surface_override_material(0, GREEN)
		print("green light")
		times_flipped += 1
	else:
		is_red_light = true
		red_light.emit()
		set_timer()
		mesh.set_surface_override_material(0, RED)
		print("red light!")
	if times_flipped == 4:
		difficulty += 1
