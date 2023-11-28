extends Area2D


var doors = [
	{ "level":"res://game.tscn", "portal":"res://Level 1.tscn" }
	,{ "level":"res://Level 1.tscn", "portal":"res://Level 2.tscn" }
	,{ "level":"res://Level 2.tscn", "portal":"res://Level 3.tscn" }
	,{ "level":"res://Level 3.tscn", "portal":"res://game.tscn" }
]


func _on_body_entered(body):
	if body.name == "Player":
		for d in doors:
			if d["level"] == get_tree().current_scene.scene_file_path:
				get_tree().change_scene_to_file(d["portal"])
