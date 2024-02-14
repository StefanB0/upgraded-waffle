extends CharacterBody2D

@export_category("Player character")

@export_group("Movement")
@export var player_speed: float = 200.0

@export_subgroup("Jump")
@export_range(0, 200, 10) var jump_height : float = 110
@export_range(0, 1, 0.1) var jump_time_to_peak : float = 0.4
@export_range(0, 1, 0.1) var jump_time_to_descent : float = 0.3

@onready var jump_velocity : float = ((2.0 * jump_height) / jump_time_to_peak) * -1.0
@onready var jump_gravity : float = ((-2.0 * jump_height) / (jump_time_to_peak * jump_time_to_peak)) * -1.0
@onready var fall_gravity : float = ((-2.0 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1.0

@onready var animation_player:AnimationPlayer = $AnimationPlayer
@onready var animation_tree:AnimationTree = $AnimationTree
@onready var sprite2d := $Sprite2D
@onready var playback:AnimationNodeStateMachinePlayback = animation_tree["parameters/playback"]

func _ready() -> void:
	print("jump height = ", jump_height)

func _physics_process(delta: float) -> void:
	player_movement(delta)
	player_attack()
	move_and_slide()

func _process(_delta: float) -> void:
	pass
	

func player_movement(delta: float) -> void:
	var gravity := jump_gravity if velocity.y < 0.0 else fall_gravity
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		print("jump height = ", jump_height)
	
	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("move_left", "move_right")
	animation_tree.set("parameters/Walk/blend_position", direction)
	if direction:
		velocity.x = direction * player_speed
		
	else:
		velocity.x = move_toward(velocity.x, 0, player_speed)
		
	if signf(velocity.x) != 0:
		sprite2d.flip_h = velocity.x < 0

func player_attack() -> void:
	if Input.is_action_just_pressed("attack_1"):
		playback.travel("attack_1")
		
		
		
