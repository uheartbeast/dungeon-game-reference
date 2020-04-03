extends Area2D

func _on_Coins_area_entered(area):
	queue_free()
