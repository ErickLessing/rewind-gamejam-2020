extends Area2D

func _on_FallDeath_body_entered(body):
	body.queue_free()
