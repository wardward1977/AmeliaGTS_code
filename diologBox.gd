  extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var dialog = ["Hello My name is Amelia! and I don't like going to sleep."]
var page = 0
onready var testglobal = get_node("/root/Test/")
# Called when the node enters the scene tree for the first time.
func _ready():
	
	if testglobal.welcomeMsg == 0 :
		set_bbcode(dialog[page])
		set_visible_characters(0)
		var Player_actor = get_node("../../Player/")
		Player_actor.Player_talk()
		
	else:
		
		get_parent().visible = false
			
			
		
	
	

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	yield(get_tree().create_timer(15.0),"timeout")
	get_parent().visible = false
	var testglobal = get_node("/root/Test/")
	testglobal.welcomeMsg = 1
	
	#get_node(".").get_parent().visible = false
	
	
 
