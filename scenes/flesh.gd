extends Area2D

@onready var player = %player
@onready var timer = $Timer
@onready var audio_stream_player_2d = $AudioStreamPlayer2D



# Called when the node enters the scene tree for the first time.
#func _physics_process(delta):
	


func _on_body_entered(body):
	
	print("yo")
	audio_stream_player_2d.play()
	timer.start()
	player.collision_mask = 2
	
	


	
	



func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
