extends Label

var bt = 0

func _on_button_pressed():

	if bt % 2 == 0:
		text = "按钮被按下"
		
	else:
		text = "按钮被释放"
	bt += 1
