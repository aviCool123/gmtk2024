extends Area2D

@onready var player = %player


func _on_body_entered(body):
	print("hello") # Replace with function body.
	player.increase_size()
