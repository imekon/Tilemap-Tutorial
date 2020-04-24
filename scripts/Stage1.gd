extends Node2D

onready var local_player = $Player

func _ready():
	Global.player = local_player
