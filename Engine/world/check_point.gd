extends Area2D

func _on_body_entered(body):
	$AnimatedSprite2D.play("default")
	CheckPoints.spawn = global_position
	print("enterd the checkpoint: " +str(CheckPoints.spawn))
