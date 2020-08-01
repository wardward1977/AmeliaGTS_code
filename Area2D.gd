extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _ready():
	connect("body_entered",self,"start_dialogue")
	connect("body_exited",self,"end_dialogue")

func start_dialogue(body):
	if body.name == "Player":
		var changebed = get_node("../YSort/Bed")
		changebed.MakeInvis()
		var changePlay = get_node("../YSort/Player")
		changePlay.MakeInvis()
		print("greetings!")
		
func end_dialogue(body):
	if body.name == "Player":
		var changebed = get_node("../YSort/Bed")
		changebed.Makevis()
		var changePlay = get_node("../YSort/Player")
		changePlay.Makevis()
		print("greetings!")
		
		print("good bye!")
