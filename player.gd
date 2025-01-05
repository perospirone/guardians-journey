extends CharacterBody2D

@export var speed = 100

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	
func _physics_process(delta):
	get_input()
	
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.animation = "back"
	
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.animation = "front"
	
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.animation = "right"
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.animation = "left"
	
	move_and_slide()
