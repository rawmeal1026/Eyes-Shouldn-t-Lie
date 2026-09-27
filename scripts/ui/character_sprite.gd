extends TextureRect

const blib = {
	"Angry" : [preload("res://assets/sprites/Blib/Angry/Sprite-0001.png"), preload("res://assets/sprites/Blib/Angry/Sprite-0002.png")],
	"Crying" : [preload("res://assets/sprites/Blib/Crying/Sprite-0001.png"), preload("res://assets/sprites/Blib/Crying/Sprite-0002.png")],
	"Dissapointed" :  [preload("res://assets/sprites/Blib/Disappointed/Sprite-0001.png"), preload("res://assets/sprites/Blib/Disappointed/Sprite-0002.png")],
	"Embarrassed" :  [preload("res://assets/sprites/Blib/Embarrassed/Sprite-0001.png"), preload("res://assets/sprites/Blib/Embarrassed/Sprite-0002.png")],
	"Symphathetic" :  [preload("res://assets/sprites/Blib/Emphatic/Sprite-0001.png"), preload("res://assets/sprites/Blib/Emphatic/Sprite-0002.png")],
	"Expressionless" :  [preload("res://assets/sprites/Blib/Expressionless/Sprite-0001.png"), preload("res://assets/sprites/Blib/Expressionless/Sprite-0002.png")],
	"Happy" :  [preload("res://assets/sprites/Blib/Happy/Sprite-0001.png"), preload("res://assets/sprites/Blib/Happy/Sprite-0002.png")],
	"Sad" :  [preload("res://assets/sprites/Blib/Sad/Sprite-0001.png"), preload("res://assets/sprites/Blib/Sad/Sprite-0002.png")],
	"Serious" :  [preload("res://assets/sprites/Blib/Serious/Sprite-0001.png"), preload("res://assets/sprites/Blib/Serious/Sprite-0002.png")],
	"Sleepy" :  [preload("res://assets/sprites/Blib/Sleepy/Sprite-0001.png"), preload("res://assets/sprites/Blib/Tired/Sprite-0002.png")],
}

const wubba = {
	"Angry" : [preload("res://assets/sprites/Wubba/Angry/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Angry/Sprite-0002.png")],
	"Crying" : [preload("res://assets/sprites/Wubba/Crying/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Crying/Sprite-0002.png")],
	"Dissapointed" :  [preload("res://assets/sprites/Wubba/Disappointed/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Disappointed/Sprite-0002.png")],
	"Embarrassed" :  [preload("res://assets/sprites/Wubba/Embarrassed/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Embarrassed/Sprite-0002.png")],
	"Symphathetic" :  [preload("res://assets/sprites/Wubba/Emphatic/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Emphatic/Sprite-0002.png")],
	"Expressionless" :  [preload("res://assets/sprites/Wubba/Expressionless/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Expressionless/Sprite-0002.png")],
	"Happy" :  [preload("res://assets/sprites/Wubba/Happy/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Happy/Sprite-0002.png")],
	"Sad" :  [preload("res://assets/sprites/Wubba/Sad/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Sad/Sprite-0002.png")],
	"Serious" :  [preload("res://assets/sprites/Wubba/Serious/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Serious/Sprite-0002.png")],
	"Sleepy" :  [preload("res://assets/sprites/Wubba/Sleepy/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Sleepy/Sprite-0002.png")],
	"Tired" :  [preload("res://assets/sprites/Wubba/Tired/Sprite-0001.png"), preload("res://assets/sprites/Wubba/Tired/Sprite-0002.png")],
}

const zazz = {
	"Angry" : [preload("res://assets/sprites/Zazz/Angry/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Angry/Sprite-0002.png")],
	"Crying" : [preload("res://assets/sprites/Zazz/Crying/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Crying/Sprite-0002.png")],
	"Dissapointed" :  [preload("res://assets/sprites/Zazz/Disappointed/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Disappointed/Sprite-0002.png")],
	"Embarrassed" :  [preload("res://assets/sprites/Zazz/Embarrassed/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Embarrassed/Sprite-0002.png")],
	"Symphathetic" :  [preload("res://assets/sprites/Zazz/Emphatic/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Emphatic/Sprite-0002.png")],
	"Expressionless" :  [preload("res://assets/sprites/Zazz/Expressionless/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Expressionless/Sprite-0002.png")],
	"Happy" :  [preload("res://assets/sprites/Zazz/Happy/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Happy/Sprite-0002.png")],
	"Sad" :  [preload("res://assets/sprites/Zazz/Sad/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Sad/Sprite-0002.png")],
	"Serious" :  [preload("res://assets/sprites/Zazz/Serious/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Serious/Sprite-0002.png")],
	"Sleepy" :  [preload("res://assets/sprites/Zazz/Sleepy/Sprite-0001.png"), preload("res://assets/sprites/Zazz/Tired/Sprite-0002.png")],
}

const zorp = {
	"Angry" : [preload("res://assets/sprites/Zorp/Angry/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Angry/Sprite-0002.png")],
	"Crying" : [preload("res://assets/sprites/Zorp/Crying/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Crying/Sprite-0002.png")],
	"Dissapointed" :  [preload("res://assets/sprites/Zorp/Disappointed/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Disappointed/Sprite-0002.png")],
	"Embarrassed" :  [preload("res://assets/sprites/Zorp/Embarrassed/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Embarrassed/Sprite-0002.png")],
	"Symphathetic" :  [preload("res://assets/sprites/Zorp/Emphatic/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Emphatic/Sprite-0002.png")],
	"Expressionless" :  [preload("res://assets/sprites/Zorp/Expressionless/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Expressionless/Sprite-0002.png")],
	"Happy" :  [preload("res://assets/sprites/Zorp/Happy/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Happy/Sprite-0002.png")],
	"Sad" :  [preload("res://assets/sprites/Zorp/Sad/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Sad/Sprite-0002.png")],
	"Serious" :  [preload("res://assets/sprites/Zorp/Serious/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Serious/Sprite-0002.png")],
	"Sleepy" :  [preload("res://assets/sprites/Zorp/Sleepy/Sprite-0001.png"), preload("res://assets/sprites/Zorp/Tired/Sprite-0002.png")],
}

var character : String = ""
var emotion : String = ""
var talking : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	character = "Blib"
	emotion = "Symphathetic"
	talking = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		if talking == false:
			talking = true
			update_sprite()
		elif talking == true:
			talking = false
			update_sprite()

func get_sprite_lib():
	match character:
		"Blib":
			return blib
		"Wubba":
			return wubba
		"Zazz":
			return zazz
		"Zorp":
			return zorp
		_:
			return

func get_mouth_state():
	match talking:
		true:
			return 0
		false:
			return 1
		_:
			return 0

func update_sprite():
	texture = get_sprite_lib()[emotion][get_mouth_state()]
