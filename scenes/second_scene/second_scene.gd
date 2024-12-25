class_name SecondScene
extends Control
## Second feature of the game.

const COST:int = 25



func _ready() -> void:
	if Game.ref.data.progression.second_scene_unlocked:
		_display_view(true)
	else:
		_display_view(false)
		(%UnlockButton as Button).pressed.connect(_on_unlocked_button_pressed)


func _display_view(unlocked:bool = false) -> void:
	($TabContainer as TabContainer).current_tab = int(unlocked)

func _try_to_unlock() -> void:
	if Game.ref.data.progression.second_scene_unlocked:
		return
	
	if Game.ref.data.resources.idleons < COST:
		return
	
	Game.ref.data.resources.idleons -= COST
	Game.ref.data.progression.second_scene_unlocked = true

	_display_view(true)

func _on_unlocked_button_pressed() -> void:
	_try_to_unlock()
	
