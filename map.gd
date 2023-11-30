extends Node2D



func _ready():
	$player/Button.hide()
	
var count = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("somethingcanchange"):
		count += 1
		if count %2 == 0:
			$player/Button.hide()
		if count %2 != 0:
			$player/Button.show()
	pass



func _on_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
