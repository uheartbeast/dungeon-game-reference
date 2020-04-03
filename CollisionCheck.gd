extends Position2D

onready var rayCast = $RayCast

func is_not_colliding(vector):
	rayCast.cast_to = vector * 16
	rayCast.force_raycast_update()
	return not rayCast.is_colliding()
