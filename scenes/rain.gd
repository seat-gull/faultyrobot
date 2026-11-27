extends CharacterBody2D

var rota:float
var pos:Vector2
var dir:float
var speed= 100




func _on_ready() -> void:
	global_position= pos
	global_rotation= rota

func _physics_process(delta):
	velocity=Vector2(speed,0).rotated(dir)
	move_and_slide()
