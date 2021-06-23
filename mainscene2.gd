extends Node2D





func _on_CheckBox_toggled(button_pressed):
	if button_pressed == true:
		Globel.gravity = false
	else: 
		Globel.gravity = true
