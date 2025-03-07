extends Area2D
@onready var dooor_2 = %dooor2
var  yes = true
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

func _on_body_entered(body):
	if yes:
		dooor_2.queue_free()
		audio_stream_player_2d.play()
		yes = false
