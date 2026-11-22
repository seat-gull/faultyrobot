extends Area2D

var checkpoint_manager


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("robot"):
		pass
