extends Node

func _ready():
	print(my_dict)

enum Alignment {ALLY, NEUTRAL, ENEMY}

@export var player_alignment : Alignment

@export var my_dict = {
	"Player1": {
		"Health": 100,
		"Power": 20,
		"Aligmnent": Alignment.ALLY
	},
	"Player2": {
		"Health": 80,
		"Power": 15,
		"Alignment": Alignment.ENEMY
	}
}

func _input(event):
	if event.is_action_pressed("my_action"):
		my_dict.Player1.Health = 110
		my_dict["Player2"]["Health"] = 100
		print(my_dict)




#func sumar(a,b):
	#return a+b
#
#func _input(event):
	#var num_a = randi_range(0,1000)
	#var num_b = randi_range(0,1000)
	#var num_c
	#if event.is_action_pressed("my_action"):
		#num_c = sumar(num_a,num_b)
		#print(num_c)

#@export var health: int = 100
	#
#func _input(event):
	#if event.is_action_pressed("my_action"):
		#if health > 0:
			#health -= 20
		#print(health)
		#
		#if health <= 0:
			#health = 0
			#print("YOU DIED!")
		#elif health < 50:
			#print("YOU ARE INJURED")
		#else:
			#print("YOU ARE HEALTHY")



# Handle input
#func _ready():
	#$Label.text = "Hello World!"
	#$Label.modulate = Color.MEDIUM_SPRING_GREEN
#
#func _input(event):
	#if event.is_action_pressed("my_action"):
		#$Label.modulate = Color.ORANGE_RED
	#
	#if event.is_action_released("my_action"):
		#$Label.modulate = Color.MEDIUM_SPRING_GREEN
