extends Node2D

func _ready():
	$Button3.hide()

	


var count = 0

func _on_button_pressed():
	
	if $Button2.rotation == 0:
		$Button2.rotation -= 0.3
	elif count == 2:
		get_node("")
		$text.clear()
		$Button3.show()
		if $Button2.rotation < -0.2:
			$Button2.rotation += 0.3
		pass #hien thi text box nch

		
		
	else:
		count += 1
		
	pass



func _on_button_2_pressed():
	get_tree().quit()
	

	pass # Replace with function body.


func _on_text_text_changed():
	get_node("text")
	$text.clear()
	pass # Replace with function body.


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://map.tscn")
	pass # Replace with function body.
