extends Area2D

@onready var timer = $Timer
@onready var player = %player

func _on_body_entered(body):
	timer.start()# Replace with function body.
	

func _on_timer_timeout():
	
	get_tree().reload_current_scene()
