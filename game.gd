extends Node2D

var treasure_count: int = 0
const WINNING_TREASURE_COUNT: int = 3

func _ready() -> void:
	$UI.set_target(WINNING_TREASURE_COUNT)
	for treasure in $Treasures.get_children():
		treasure.treasure_collected.connect(_on_treasure_collected)

func _on_treasure_collected() -> void:
	treasure_count += 1
	$UI.increase_counter()
	
	if treasure_count >= WINNING_TREASURE_COUNT:
		$UI.display_win()
		get_tree().paused = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().call_deferred("reload_current_scene")
