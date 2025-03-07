extends Area2D
@onready var player = %player




	

func _on_body_entered(body):
	player.make_smaller()
	print("get smaller") # Replace with function body.
	
 # Replace with function body.
