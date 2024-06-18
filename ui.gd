extends CanvasLayer

const LABEL_TEXT = "Treasure: %s / %s"

var count = 0
var target = 0

func _ready():
	_update_label()

func increase_counter():
	count += 1
	_update_label()
	
func set_target(new_target):
	target = new_target
	_update_label()
	
func _update_label():
	$TreasureLabel.text = LABEL_TEXT % [count, target]
