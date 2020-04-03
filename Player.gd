extends Area2D

var last_position

onready var collisionCheck = $CollisionCheck

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right"):
		if collisionCheck.is_not_colliding(Vector2.RIGHT):
			last_position = global_position
			global_position.x += 16
	
	if Input.is_action_just_pressed("ui_up"):
		if collisionCheck.is_not_colliding(Vector2.UP):
			last_position = global_position
			global_position.y -= 16
	
	if Input.is_action_just_pressed("ui_left"):
		if collisionCheck.is_not_colliding(Vector2.LEFT):
			last_position = global_position
			global_position.x -= 16
	
	if Input.is_action_just_pressed("ui_down"):
		if collisionCheck.is_not_colliding(Vector2.DOWN):
			last_position = global_position
			global_position.y += 16

func _on_Player_area_entered(area):
	pass
#	var t = global_position
#	global_position = last_position
#	last_position = t
