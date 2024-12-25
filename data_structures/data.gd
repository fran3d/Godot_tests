class_name Data
extends Resource
## Main data object used to save and load.

##An example variable.
@export var example:String = "default"

## Contains data relative to in-game resources.
@export var resources:DataResources = DataResources.new()

## Contains progresssion data
@export var progression:DataProgression = DataProgression.new()
