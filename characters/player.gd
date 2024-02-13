extends CharacterBody2D

@export_category("Player character")

@export_group("Movement")
@export var player_speed: float = 200.0

@export_subgroup("Jump")
@export_range(0, 200, 10) var jump_height : float = 50
@export_range(0, 1, 0.1) var jump_time_to_peak : float = 0.4
@export_range(0, 1, 0.1) var jump_time_to_descent : float = 0.3

var jump_velocity : float = ((2.0 * jump_height) / jump_time_to_peak) * -1.0
var jump_gravity : float = ((-2.0 * jump_height) / (jump_time_to_peak * jump_time_to_peak)) * -1.0
var fall_gravity : float = ((-2.0 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1.0

@onready var animation_player := $AnimationPlayer

func _physics_process(delta: float):
	player_movement(delta)
	move_and_slide()

func _process(_delta: float) -> void:
	animation_player.play("attack_spin")
	

func player_movement(delta: float):
	
	#region jumping
	var gravity := jump_gravity if velocity.y < 0.0 else fall_gravity
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
	#endregion
	
	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * player_speed
	else:
		velocity.x = move_toward(velocity.x, 0, player_speed)

