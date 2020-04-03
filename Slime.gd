extends Area2D

var directions = [Vector2.RIGHT, Vector2.LEFT, Vector2.UP, Vector2.DOWN]
var target_position setget set_target_position

onready var collisionCheck = $CollisionCheck

func set_target_position(value):
	target_position = value
	$TargetSprite.rect_global_position = target_position

func _ready():
	randomize()
	get_new_target_position()

func get_new_target_position():
	var possible_directions = []
	for direction in directions:
		if collisionCheck.is_not_colliding(direction):
			possible_directions.append(direction)
	possible_directions.shuffle()
	self.target_position = global_position + possible_directions[0] * 16

func move():
	global_position = target_position
	get_new_target_position()

func _on_Timer_timeout():
	move()
