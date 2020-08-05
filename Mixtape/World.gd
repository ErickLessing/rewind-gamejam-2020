extends Node2D

export var borders = Rect2(1,1,38*2,19)

onready var tilemap = $TileMap

const Player = preload("res://Metroidvania Resources/Player/Player.tscn")

func _ready():
	VisualServer.set_default_clear_color(Color.black)
	randomize()
	generate_level()
	
func generate_level():
	var walker = Walker.new(Vector2(1,11), borders)
	var map = walker.walk(500)
	walker.queue_free()
	for location in map:
		tilemap.set_cellv(location, -1)
	
	tilemap.update_bitmask_region(borders.position, borders.end)

func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().reload_current_scene()
