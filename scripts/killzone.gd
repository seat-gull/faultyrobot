extends Area2D

@onready var timer= $Timer
@onready var respawn_point_manager= get_parent().get_node("RespawnManager")
@onready var player= get_parent().get_node("player")

func _on_body_entered(body: Node2D) -> void:
	timer.start()
func _on_timer_timeout():
	player.position= respawn_point_manager.last_location
