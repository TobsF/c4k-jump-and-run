class_name Coin
extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	Events.coin_collected.emit()
	queue_free()
