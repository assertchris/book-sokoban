extends Area2D
class_name GameDoor

func _on_door_body_entered(body) -> void:
	if body is GamePlayer:
		body.queue_free()
		print("You win!")
