extends Area2D

onready var PlantStatus = get_node("/root/Test/")



func _ready():
	connect("body_entered",self,"start_dialogue")
	connect("body_exited",self,"end_dialogue")
	var test = get_parent().get_node("AnimationPlayer")
	test.play("water1")
	
func start_dialogue(body):
	if body.name == "Player":
		var test = get_parent().get_node("AnimationPlayer")
		if PlantStatus.PlantWaterRate == 0:
			test.play("water1")
		
		if PlantStatus.PlantWaterRate == 1:
			test.play("water2")
			
		if  PlantStatus.PlantWaterRate == 2:
			test.play("water3")
			
		if PlantStatus.PlantWaterRate == 3:
			test.play("water4")
			
		if PlantStatus.PlantWaterRate == 4:
			test.play("water5")
			
		#Test.Start1used = "t"
		#get_tree().change_scene("World.tscn")
	
		

