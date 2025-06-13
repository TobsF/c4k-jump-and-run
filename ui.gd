extends CanvasLayer

const LABEL_TEXT: String = "Treasure: %s / %s"
var count: int = 0
var target: int = 0

func _ready() -> void:
	_update_label()
	
func increase_counter() -> void:
	count += 1
	_update_label()

func set_target(new_target: int) -> void:
	target = new_target
	_update_label()
	
func display_win() -> void:
	$WinnerLabel.show()

func _update_label() -> void:
	$Label.text = LABEL_TEXT % [count, target]
