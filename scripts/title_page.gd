extends Control

@onready var startSelector = $Camera2D/HBoxContainer/Selector
@onready var exitSelector = $Camera2D/HBoxContainer2/Selector

var current_selection = 0

func set_current_selection(_current_selection):
	startSelector.text = ""
	exitSelector.text = ""
	if _current_selection == 0:
		startSelector.text = ">"
	elif _current_selection == 1:
		exitSelector.text = ">"
	
func _ready() -> void:
	set_current_selection(0)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down") and current_selection < 1:
		current_selection += 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)

func handle_selection(_current_selection):
	if _current_selection == 0:
		get_tree().change_scene_to_file("res://scenes/game.tscn")
	elif _current_selection == 1:
		get_tree().quit()
