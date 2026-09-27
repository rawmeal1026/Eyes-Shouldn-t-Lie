extends Node

@export var eye_1_button : Button
@export var eye_2_button : Button
@export var eye_3_button : Button
@export var eye_4_button : Button
@export var next_button : Button
@export var previous_button : Button
@export var emotion_label : Label
@export var paint_button : Button

var eye: String = ""
var emotion: String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	eye_1_button.ON_CLICK

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Left mouse button clicked at: ", event.position)

func get_emotion():
	return emotion
