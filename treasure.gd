extends Area2D

signal treasure_collected

func _on_body_entered(body: Node2D) -> void:
	treasure_collected.emit()
	queue_free()
