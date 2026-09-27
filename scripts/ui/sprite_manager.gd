extends Node

@export var eye_1_button : Button
@export var eye_2_button : Button
@export var eye_3_button : Button
@export var eye_4_button : Button
@export var next_button : Button
@export var previous_button : Button
@export var emotion_label : Label
@export var paint_button : Button

const eye1_emotion_lib = ["Happy", "Sad", "Embarrassed"]
const eye2_emotion_lib = ["Sleepy", "Disappointed", "Crying"]
const eye3_emotion_lib = ["Angry", "Symphathetic"]
const eye4_emotion_lib = ["Serious", "Tired"]
var eye: String = ""
var current_emotion_lib : Array
var emotion_index : int = 0
var emotion: String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	eye_1_button.pressed.connect(set_to_eye_1)
	eye_2_button.pressed.connect(set_to_eye_2)
	eye_3_button.pressed.connect(set_to_eye_3)
	eye_4_button.pressed.connect(set_to_eye_4)
	previous_button.pressed.connect(move_to_previous)
	next_button.pressed.connect(move_to_next)

func set_to_eye_1():
	emotion_index = 0
	if eye != "1":
		eye = "1"
	elif eye == "1":
		eye = ""
	get_emotion()

func set_to_eye_2():
	emotion_index = 0
	if eye != "2":
		eye = "2"
	elif eye == "2":
		eye = ""
	get_emotion()

func set_to_eye_3():
	emotion_index = 0
	if eye != "3":
		eye = "3"
	elif eye == "3":
		eye = ""
	get_emotion()

func set_to_eye_4():
	emotion_index = 0
	if eye != "4":
		eye = "4"
	elif eye == "4":
		eye = ""
	get_emotion()

func select_emotion_lib():
	match eye:
		"1":
			current_emotion_lib = eye1_emotion_lib
		"2":
			current_emotion_lib = eye2_emotion_lib
		"3":
			current_emotion_lib = eye3_emotion_lib
		"4":
			current_emotion_lib = eye4_emotion_lib
		"":
			current_emotion_lib = [""]

func move_to_previous():
	emotion_index -= 1

func move_to_next():
	emotion_index += 1

func get_emotion():
	emotion = current_emotion_lib[emotion_index]
	update_emotion_label()
	return emotion

func update_emotion_label():
	emotion_label.text = emotion
