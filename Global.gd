extends Node

var death_zone = 0
var coins = 0


func get_coin():
	coins += 1

func update_coins(coins):
	coins += coins
	var hud = get_node_or_null("/root/Coins")
	if hud != null:
		hud.update_score()
		
func end_game(success):
	if success:
		get_tree().change_scene_to_file("res://Game_End.tscn")
	else:
		get_tree().change_scene_to_file("res://Game_End.tscn")
