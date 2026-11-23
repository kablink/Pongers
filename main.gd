extends Node
const SLIDER_SCENE = preload("res://slider.tscn")
var slider_left: CharacterBody2D 	= null
var slider_right: CharacterBody2D 	= null
var window_size: Vector2i
var width: int = 0
var height: int = 0

func _ready() -> void:
	get_window().unresizable = true
	get_border_boundary()
	instantiate_sliders()

func _process(delta: float) -> void:
	if Input.is_action_pressed("left_down"):
		slider_left.global_position.y += 10
		slider_left.position.y = clamp(slider_left.position.y, 0, height)
	if Input.is_action_pressed("left_up"):
		slider_left.global_position.y -= 10

	if Input.is_action_pressed("right_down"):
		slider_right.global_position.y += 10
	if Input.is_action_pressed("right_up"):
		slider_right.global_position.y -= 10

#func _input(event: InputEvent) -> void:
	
func instantiate_sliders() -> void:
	slider_left = SLIDER_SCENE.instantiate()
	slider_left.set_global_position(Vector2(30,300))
	add_child(slider_left)
	
	slider_right = SLIDER_SCENE.instantiate()
	slider_right.set_global_position(Vector2(width-30,300))
	add_child(slider_right)

func get_border_boundary() -> void:
	window_size = DisplayServer.window_get_size()
	width = window_size.x
	height = window_size.y
	print(width)
	print(height)
