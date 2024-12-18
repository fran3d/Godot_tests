class_name FirstScene
extends Control

@export var idleons:int = 0
@export var amountIdleons:int = 1


func _ready() -> void:
	update_label()
	(get_node("AddIdleonButton")as Button).pressed.connect(_on_button_pressed)
	(get_node("AddIdleonButton")as Button).text="Add %s idleons"%amountIdleons
	
func update_label():
	(get_node("IdleonLabel")as Label).text="Idleons: %s"%idleons
	
func _on_button_pressed() -> void:
	idleons += amountIdleons
	update_label()
