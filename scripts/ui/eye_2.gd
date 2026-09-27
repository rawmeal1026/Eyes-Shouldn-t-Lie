extends Button

signal ON_CLICK

func _on_pressed() -> void:
	ON_CLICK.emit()
