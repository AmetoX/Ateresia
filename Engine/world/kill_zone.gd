extends Area2D
@onready var timer = $Timer
@onready var player = %Player

func _on_body_entered(body):
	print("You died...")
	timer.start()

func _on_timer_timeout():
	if CheckPoints.spawn:
		player.global_position = CheckPoints.spawn
	else:
		get_tree().reload_current_scene()
