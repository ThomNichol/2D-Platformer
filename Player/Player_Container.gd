extends Node2D

var Player = load("res://Player/player.tscn")

func _physics_process(_delta):
	if get_child_count() <= 1:
		var player = Player.instantiate()
		player.position = $Spawn.position
		add_child(player)
		


func _on_door_body_entered(body):
	pass # Replace with function body.
