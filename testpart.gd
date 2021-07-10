extends RigidBody2D

var selected = false
var delay = 1

onready var body = $"."

func _process(delta):
	if selected == true:
		body.mode = RigidBody2D.MODE_KINEMATIC
		body.position = get_global_mouse_position()
	if selected == false:
		body.mode = RigidBody2D.MODE_RIGID
		
	if Globel.gravity == true:
		gravity_scale = 3
	else:
		gravity_scale = 0


func _on_TextureRect_gui_input(event):
	if event is InputEventMouseButton and selected == false and delay == 1:
		selected = true
		delay = 0
		$Timer.start()
	if event is InputEventMouseButton and selected == true and delay == 1:
		selected = false
		delay = 0
		$Timer.start()


func _on_Timer_timeout():
	delay = 1
