extends Node2D


func _ready() -> void:
	for treasure in $Treasures.get_children():
		treasure.treasure_collected.connect(_on_treasure_collected)

func _on_treasure_collected() -> void:
	print("Schatz gesammelt!")

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().call_deferred("reload_current_scene")
