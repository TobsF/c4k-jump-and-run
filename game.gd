extends Node2D

func _ready():
	for node in get_children():
		if node.has_signal("treasure_collected"):
			node.treasure_collected.connect(_on_treasure_collected)

func _on_pit_body_entered(_body):
	get_tree().call_deferred("reload_current_scene")

func _on_treasure_collected():
	print("Schatz gesammelt!")
