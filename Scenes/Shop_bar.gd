extends TabBar

func _process(delta: float) -> void:
	$RichTextLabel/Control.position.x = -$HScrollBar.value
