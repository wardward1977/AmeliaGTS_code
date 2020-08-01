  extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var dialog = ["Hello My name is Amelia! and I don't like going to sleep."]
var page = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)

	var Player_actor = get_node("../../Player/")
	Player_actor.Player_talk()
	
	

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
	
 
