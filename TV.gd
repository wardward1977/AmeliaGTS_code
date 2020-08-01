extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var testglobal = get_node("/root/Test/")

# Called when the node enters the scene tree for the first time.
func _ready():
	var playtv = get_node("AnimatedSprite/AnimationPlayer")
	playtv.play("Static")
	if testglobal.TV_Show == "on":
		playtv.play("tv_youtube")



	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
