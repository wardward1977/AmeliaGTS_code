extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var StartPos2x = 261.156
#ar StartPos2y = 161.172


onready var testglobal = get_node("/root/Test/")

# Called when the node enters the scene tree for the first time.
func _ready():

	if testglobal.Bedroom1Start == 2:
		print("On Ready loaded ok")
		var Player = get_node("YSort/Player")
		print(Player.get_position())
		Player.set_position(Vector2(266.513,157.364))
		
			


