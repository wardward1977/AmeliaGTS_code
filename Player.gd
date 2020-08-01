extends KinematicBody2D


const ACCELERATION = 500
const MAX_SPEED = 80
const FRICTION = 500

enum {
	MOVE,
	ROLL,
	ATTACK
}

var state = MOVE
var velocity = Vector2.ZERO

onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")

#####Remember the player start position ... dont use the default, i.e returning to a bedroom


	


func _ready():
	animationTree.active = true

##Set Player starting position on load on scene...
	
	


func _physics_process(delta):
	
	match state:
		MOVE:
			move_state(delta)
			
		ROLL:
			pass
			
		ATTACK:
			attack_state(delta)
	


func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	
	if input_vector != Vector2.ZERO:
			print(input_vector)
			

			
			animationTree.set("parameters/idle/blend_position", input_vector)
			animationTree.set("parameters/Run/blend_position", input_vector)
			animationState.travel("Run")
			velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	velocity = move_and_slide(velocity)
	 

func attack_state(delta):
	pass
	
	###Ed hacky code 
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_T:
			if event.shift:
				print("Shift+T was pressed")
				
			else:
				animationPlayer.play("Talking")
				print("T was pressed")

func MakeInvis():
	visible = false
	
func Makevis():
	visible = true
	
func Player_talk():
	pass
	
	










