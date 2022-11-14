extends Control

var zoom: int = 1000

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_control"):
		print("FIXED ZOOM")
		if Input.is_action_just_pressed("fixed_zoom_minus"):
			if zoom == 1000:
				Global.camera.zoom_camera_percent(zoom)
			else:
				zoom -= 1000
				Global.camera.zoom_camera_percent(zoom)
		elif Input.is_action_just_pressed("fixed_zoom_plus"):
			zoom += 1000
			Global.camera.zoom_camera_percent(zoom)
		
	if zoom <= 1000:
		zoom = 1000
