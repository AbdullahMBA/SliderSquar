extends KinematicBody2D
class_name Actors

export var gravity: = 9000.0
export var speed: = Vector2(300.0, 1000)
var velocity: = Vector2.ZERO
const WALK_SPEED = 200



func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity) 

func _input(event):
	if event is InputEventKey:
		if event.is_action_pressed("ui_right"):
			velocity.x =  WALK_SPEED * 2
		elif event.is_action_pressed("ui_left"):
			velocity.x =  -WALK_SPEED * 2
		elif event.is_action_pressed("ui_up"):
			velocity.y =  -WALK_SPEED 
		elif event.is_action_pressed("ui_down"):
			velocity.y =  WALK_SPEED
	
	else: 
		velocity = Vector2.ZERO
