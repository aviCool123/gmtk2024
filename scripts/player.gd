extends CharacterBody2D

@onready var player_sprite = %player_sprite
@onready var collision_shape_2d = $CollisionShape2D
@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var audio_stream_player_2d_2 = $AudioStreamPlayer2D2


const SPEED = 175.0
var JUMP_VELOCITY = -325.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("mainMenu "):
		get_tree().change_scene_to_file("res://main_menu/menu.tscn")
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
		
	if is_on_floor() and direction != 0:
		player_sprite.play("run")
		if direction>0:
			player_sprite.flip_h = false
		else:
			player_sprite.flip_h = true
	else:
		player_sprite.play("idle")
			
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
func increase_size():
	if scale != Vector2(3,3):
		audio_stream_player_2d.play()
	scale = Vector2(3,3)
	JUMP_VELOCITY = -450
func make_smaller():
	if scale != Vector2(1,1):
		audio_stream_player_2d_2.play()
	scale=Vector2(1,1)
	JUMP_VELOCITY = -325
func col_disable():
	collision_shape_2d.disabled = true
	
	
