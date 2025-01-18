extends RayCast3D

func _process(delta):
	if is_colliding():
		if get_collider().is_in_group("Watcher"):
			print("a")
