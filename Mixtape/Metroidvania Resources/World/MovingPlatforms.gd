extends Node2D

onready var pathFollow = $Path2D/PathFollow2D

func _ready():
	randomize()
	pathFollow.unit_offset = rand_range(0,1)
