extends Node2D

func _on_pit_body_entered(body):
	get_tree().call_deferred("reload_current_scene")
