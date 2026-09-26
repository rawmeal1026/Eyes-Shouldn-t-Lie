extends Control

const GAME_SCENE := "res://scenes/main.tscn"
const SETTINGS_FILE := "user://audio_settings.cfg"
const SFX_BUS := "SFX"
const BGM_BUS := "BGM"

@onready var start_button: Button = %StartButton
@onready var settings_button: Button = %SettingsButton
@onready var settings_panel: PanelContainer = %SettingsPanel
@onready var sfx_slider: HSlider = %SFXSlider
@onready var bgm_slider: HSlider = %BGMSlider
@onready var sfx_value: Label = %SFXValue
@onready var bgm_value: Label = %BGMValue


func _ready() -> void:
    _ensure_audio_bus(SFX_BUS)
    _ensure_audio_bus(BGM_BUS)
    _load_audio_settings()
    _apply_volume(SFX_BUS, sfx_slider.value)
    _apply_volume(BGM_BUS, bgm_slider.value)
    start_button.grab_focus()


func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("ui_cancel") and settings_panel.visible:
        settings_panel.hide()
        settings_button.grab_focus()
        get_viewport().set_input_as_handled()


func _on_start_pressed() -> void:
    var error := get_tree().change_scene_to_file(GAME_SCENE)
    if error != OK:
        push_error("Could not open game scene: %s" % error_string(error))


func _on_settings_pressed() -> void:
    settings_panel.visible = not settings_panel.visible
    if settings_panel.visible:
        sfx_slider.grab_focus()
    else:
        settings_button.grab_focus()


func _on_sfx_volume_changed(value: float) -> void:
    _apply_volume(SFX_BUS, value)
    sfx_value.text = "%d%%" % roundi(value)


func _on_bgm_volume_changed(value: float) -> void:
    _apply_volume(BGM_BUS, value)
    bgm_value.text = "%d%%" % roundi(value)


func _on_volume_drag_ended(value_changed: bool) -> void:
    if value_changed:
        _save_audio_settings()


func _ensure_audio_bus(bus_name: StringName) -> void:
    if AudioServer.get_bus_index(bus_name) >= 0:
        return
    AudioServer.add_bus()
    AudioServer.set_bus_name(AudioServer.bus_count - 1, bus_name)


func _apply_volume(bus_name: StringName, percent: float) -> void:
    var bus_index := AudioServer.get_bus_index(bus_name)
    if bus_index < 0:
        return
    var linear_volume := percent / 100.0
    AudioServer.set_bus_mute(bus_index, is_zero_approx(linear_volume))
    AudioServer.set_bus_volume_db(bus_index, linear_to_db(maxf(linear_volume, 0.0001)))


func _load_audio_settings() -> void:
    var config := ConfigFile.new()
    if config.load(SETTINGS_FILE) != OK:
        return
    sfx_slider.value = clampf(float(config.get_value("audio", "sfx", 80.0)), 0.0, 100.0)
    bgm_slider.value = clampf(float(config.get_value("audio", "bgm", 70.0)), 0.0, 100.0)


func _save_audio_settings() -> void:
    var config := ConfigFile.new()
    config.set_value("audio", "sfx", sfx_slider.value)
    config.set_value("audio", "bgm", bgm_slider.value)
    var error := config.save(SETTINGS_FILE)
    if error != OK:
        push_warning("Could not save audio settings: %s" % error_string(error))
