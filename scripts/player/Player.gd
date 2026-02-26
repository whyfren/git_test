extends KinematicBody2D

# ===== CONFIG =====
export(float) var speed = 400.0
export(float) var gravity = 1000.0
export(float) var jump_force = -400.0

# ===== INTERNAL =====
var velocity := Vector2.ZERO
const UP := Vector2.UP

func _ready():
<<<<<<< HEAD
	pass
=======
	print("PLAYER SCRIPT JALAN")
	print("gravity =", gravity)
>>>>>>> 82af2f1 (nambah scene checkpoint dan script)

func _physics_process(delta):
	# GRAVITASI
	velocity.y += gravity * delta

<<<<<<< HEAD
	# 2. Input Horizontal
	var direction = 0
	if Input.is_action_pressed("maju"):
=======
	# INPUT HORIZONTAL
	var direction := 0
	if Input.is_action_pressed("ui_right"):
>>>>>>> 82af2f1 (nambah scene checkpoint dan script)
		direction += 1
	if Input.is_action_pressed("mundur"):
		direction -= 1

	velocity.x = direction * speed

<<<<<<< HEAD
	# 3. Melompat
	if is_on_floor() and Input.is_action_just_pressed("lompat"):
=======
	# LOMPAT
	if is_on_floor() and Input.is_action_just_pressed("ui_select"):
>>>>>>> 82af2f1 (nambah scene checkpoint dan script)
		velocity.y = jump_force

	# GERAK + TABRAKAN
	velocity = move_and_slide(velocity, UP)
