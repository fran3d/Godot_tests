class_name FirstScene
extends Control

## Reference to the data object.
var data:Data = Game.ref.data

@export var amountIdleons:int = 1


func _ready() -> void:
	update_labels()
	(get_node("AddIdleonButton")as Button).pressed.connect(_on_AddIdleonButton_pressed)

func _process(_delta: float) -> void:
	update_labels()

	
func update_labels():
	(get_node("AddIdleonButton")as Button).text="Add %s idleons"%amountIdleons
	(get_node("IdleonLabel")as Label).text="Idleons: %s"%data.resources.idleons
	
func _on_AddIdleonButton_pressed() -> void:
	data.resources.idleons += amountIdleons
	update_labels()
