extends Area2D

var respawn_point_manager 
func _ready() -> void:
	respawn_point_manager= get_parent().get_parent().get_node("RespawnManager")
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		respawn_point_manager.last_location= $marker.global_position
