extends Area2D
@onready var timer = $Timer

func _on_body_entered(body):
	print("You died...")
	#if CheckPoints.player:
		#print("Player found: ", CheckPoints.player.name)
	#else:
		#print("player not found")
	timer.start()

func _on_timer_timeout():
	if CheckPoints.spawn:
		CheckPoints.player.global_position = CheckPoints.spawn
	else:
		get_tree().reload_current_scene()
