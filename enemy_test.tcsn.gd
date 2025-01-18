extends CharacterBody3D

@onready var nav_agent: NavigationAgent3D = $NavigationAgent3D

func _physics_process(delta: float) -> void:
	var current_pos = global_transform.origin
	var next_pos = nav_agent.get_next_location()
	
	var 

func _update(target_location):
	nav_agent.set_target_location(target_location)
