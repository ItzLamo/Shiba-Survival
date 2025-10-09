extends TabBar

func _process(delta: float) -> void:
	$RichTextLabel.position.x = -$HScrollBar.value
