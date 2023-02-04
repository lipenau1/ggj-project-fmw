extends KinematicBody2D

var speed = 200

func player_movement(_delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x = speed
	if Input.is_action_pressed("left"):
		velocity.x = -speed
	if Input.is_action_pressed("down"):
		velocity.y = speed
	if Input.is_action_pressed("up"):
		velocity.y = -speed
	
	self.global_position += velocity * _delta


func _process(delta):
	player_movement(delta)

	
