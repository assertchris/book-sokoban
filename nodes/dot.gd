extends Area2D
class_name GameDot

func _on_dot_body_entered(body) -> void:
	if body is GameCrate:
		Variables.covered_crates += 1

func _on_dot_body_exited(body) -> void:
	if body is GameCrate:
		Variables.covered_crates -= 1
