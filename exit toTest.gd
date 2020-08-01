extends Area2D

func _ready():
	connect("body_entered",self,"start_dialogue")
	
	


func start_dialogue(body):
	if body.name == "Player":
		get_tree().change_scene("res://Test2.tscn")
