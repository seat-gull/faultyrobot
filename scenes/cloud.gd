extends Node2D

var rain_path=preload("res://scenes/rain.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("interact"):
		fire()
func fire():
	var raindrop= rain_path.instantiate()
	raindrop.dir=rotation
	raindrop.pos=%FiringPoint.global_position
	raindrop.rota=global_rotation
	get_parent().add_child(raindrop)
