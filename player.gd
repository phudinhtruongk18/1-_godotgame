extends CharacterBody2D


@export var Bullet = load("res://bullet.tscn")
@export var speed = 200


func get_input():
	if Input.is_action_just_pressed("shoot"):
		shoot()
		
	look_at(get_global_mouse_position())
	var input_direction = Input.get_vector("go_left", "go_right", "go_up", "go_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func shoot():
	var b = Bullet.instantiate()
	add_child(b)
	b.transform = $Node/Muzzle.transform
