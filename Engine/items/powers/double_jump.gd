extends Area2D
@onready var player = %Player

func _on_body_entered(body):
	print("New Power: +1 jump")
	player.max_jumps += 1
	queue_free()
