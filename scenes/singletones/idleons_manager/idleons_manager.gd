class_name IdleonsManager
extends Node
## Manages the Idleon resource

## Singleton reference
static var ref:IdleonsManager

## Constructor
func _init() -> void:
	if not ref:ref = self
	else: queue_free()

## The amount of idleons has been updated
signal idleons_updated
# signal idleons_created
# signal idleons_consumed



## Reference to the game data
var data:Data = Game.ref.data


func get_idleons() -> int:
	return data.resources.idleons
	
func create_idleons(quantity:int)-> Error:
	if quantity <= 0: return FAILED
	
	data.resources.idleons += quantity
	idleons_updated.emit()
	
	return OK

func consume_idleons(quantity:int) -> Error:
	if quantity < 0: return FAILED
	if quantity > data.resources.idleons: return FAILED
	
	data.resources.idleons -= quantity
	idleons_updated.emit()
	
	return OK
