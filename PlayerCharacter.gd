extends CharacterBody2D
var speed
const run_speed = 800
const walk_speed = 400

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	speed = walk_speed;
	if Input.is_action_pressed("run"):
		speed = run_speed;
	else:
		speed = walk_speed
	get_input()
	move_and_slide()




