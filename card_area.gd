extends Area2D

enum Side {FRONT, BACK}
var current_side = Side.BACK
var pos1 = position
var clicked = false
var face
var card_back = preload("res://Assets/PNG-cards-1.3/card back black.png")
var card_front = preload("res://Assets/PNG-cards-1.3/2_of_spades.png")




func flip_card():
	if (current_side == Side.FRONT):
		
		
		$CardArt.texture = card_back
		current_side = Side.BACK
	elif (current_side == Side.BACK):
		
		$CardArt.texture = card_front
		current_side = Side.FRONT
	



func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if clicked == false:
				flip_card()
				print("well it works")
				clicked = true
			else:
				flip_card()
				clicked = false
				position = event.position
				print("well it works")
