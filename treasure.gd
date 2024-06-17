extends Area2D

signal treasure_collected

func _on_body_entered(_body):
	treasure_collected.emit()
	queue_free()
