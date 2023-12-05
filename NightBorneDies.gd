extends Node

@onready var SM = get_parent()
@onready var enemy = get_node("../..")

func _ready():
	await enemy.ready

func start():
	enemy.set_animation("NightBorneDeath")
	enemy.velocity = Vector2.ZERO
	enemy.collision_layer = 0
	enemy.collision_mask = 0
	
func die(_NightBorne):
	var NightBorne_Death_Voice = get_node("/root/NightBorne/NightBorneDeathVoice")
	NightBorne_Death_Voice.play()
