extends Node2D

var treasure_count = 0
const WINNING_TREASURE_COUNT = 3

func _ready():
	$UI.set_target(WINNING_TREASURE_COUNT)
	for node in get_children():
		if node.has_signal("treasure_collected"):
			node.treasure_collected.connect(_on_treasure_collected)

func _on_pit_body_entered(_body):
	get_tree().call_deferred("reload_current_scene")

func _on_treasure_collected():
	treasure_count += 1
	$UI.increase_counter()
