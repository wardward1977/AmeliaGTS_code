extends Area2D


func _ready():
	connect("body_entered",self,"start_dialogue")
	connect("body_exited",self,"end_dialogue")
	



func start_dialogue(body):
	if body.name == "Player":
		get_tree().change_scene("Hall.tscn")
		
func end_dialogue(body):
	if body.name == "Player":
		var changebed = get_node("../YSort/Bed")
		changebed.Makevis()
		var changePlay = get_node("../YSort/Player")
		changePlay.Makevis()
		print("good bye!")
