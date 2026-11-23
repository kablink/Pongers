extends Node2D

class_name slider

@export var slider_color : Color = Color.WHITE

func _init(slider_color : Color) -> void:
	change_color(slider_color)
	
func change_color(slider_color : Color) -> void:
	self.slider_color = slider_color
	
