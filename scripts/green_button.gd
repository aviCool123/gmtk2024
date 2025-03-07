extends Area2D
@onready var dooor = %dooor
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

var  yes = true
func _on_body_entered(body):
	if yes:
		dooor.queue_free()
		audio_stream_player_2d.play()
		yes = false
	
	
