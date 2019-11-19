extends Node2D

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var path = $Navigation2D.get_simple_path($Player.position, event.position)
			$Line2D.points = path
			$Player.path = path

