extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello World")
	pass

func _input(event):
	if event.is_action_pressed("move_up"):
		print("上键被按下")
	elif event.is_action_pressed("move_down"):
		print("下键被按下")
	elif event.is_action_pressed("move_left"):
		print("左键被按下")
	elif event.is_action_pressed("move_right"):
		print("右键被按下")
