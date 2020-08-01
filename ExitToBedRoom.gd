extends Area2D

func _ready():
	connect("body_entered",self,"start_dialogue")
	connect("body_exited",self,"end_dialogue")
	


 



func start_dialogue(body):
	if body.name == "Player":
		var testglobal = get_node("/root/Test/")
		testglobal.Bedroom1Start = 2
		get_tree().change_scene("World.tscn")
		
func end_dialogue(body):
	if body.name == "Player":
		print("good bye!")
