class_name FirstScene
extends Control

@export var amountIdleons:int = 10

func _ready() -> void:
	update_label()
	(get_node("AddIdleonButton")as Button).pressed.connect(_on_AddIdleonButton_pressed)
	IdleonsManager.ref.idleons_updated.connect(_on_idleons_updated)


## Updates the label to display the latest known amount of Idleons
func update_label():
	(get_node("IdleonLabel")as Label).text="Idleons: %s"%IdleonsManager.ref.get_idleons()

## Generates Idleons and update the label
func create_idleons()->void:
	IdleonsManager.ref.create_idleons(amountIdleons)
	update_label()
	
## Triggered when the button is pressed
func _on_AddIdleonButton_pressed() -> void:
	create_idleons()

func _on_idleons_updated() -> void:
	update_label()
