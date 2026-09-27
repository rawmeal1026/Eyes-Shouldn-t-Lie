@tool
extends Node

## Reusable UI click-sound component. Assign any BaseButton in the inspector.
@export var button: BaseButton
@export_range(0.1, 2.0, 0.01) var minimum_pitch := 0.8
@export_range(0.1, 2.0, 0.01) var maximum_pitch := 1.2

@onready var audio_player: AudioStreamPlayer = $AudioStreamPlayer


func _ready() -> void:
    if Engine.is_editor_hint():
        update_configuration_warnings()
        return
    if not is_instance_valid(button):
        push_warning("UIButtonSFX requires a button assignment.")
        return
    if not button.pressed.is_connected(play_click):
        button.pressed.connect(play_click)


func _exit_tree() -> void:
    if is_instance_valid(button) and button.pressed.is_connected(play_click):
        button.pressed.disconnect(play_click)


func play_click() -> void:
    if not is_instance_valid(audio_player) or audio_player.stream == null:
        return
    var low_pitch := minf(minimum_pitch, maximum_pitch)
    var high_pitch := maxf(minimum_pitch, maximum_pitch)
    audio_player.pitch_scale = randf_range(low_pitch, high_pitch)
    audio_player.play()


func _get_configuration_warnings() -> PackedStringArray:
    var warnings := PackedStringArray()
    if not is_instance_valid(button):
        warnings.append("Assign a BaseButton to the button property.")
    if minimum_pitch > maximum_pitch:
        warnings.append("Minimum pitch is above maximum pitch; runtime will swap them.")
    return warnings
