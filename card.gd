extends Node

enum Side {FRONT, BACK}
var current_side = Side.BACK
enum CARD_TYPES {ACE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, QUEEN, BKING, RKING, JOKER}

@export var card_types: CARD_TYPES
var card_type = CARD_TYPES.ACE

var clicked = false
var face
var card_faces = [
	preload("res://Assets/PNG-cards-1.3/ace_of_spades.png"),
	preload("res://Assets/PNG-cards-1.3/2_of_spades.png"),
	preload("res://Assets/PNG-cards-1.3/3_of_diamonds.png"),
	preload("res://Assets/PNG-cards-1.3/4_of_clubs.png"),
	preload("res://Assets/PNG-cards-1.3/5_of_hearts.png"),
	preload("res://Assets/PNG-cards-1.3/6_of_hearts.png"),
	preload("res://Assets/PNG-cards-1.3/7_of_spades.png"),
	preload("res://Assets/PNG-cards-1.3/8_of_clubs.png"),
	preload("res://Assets/PNG-cards-1.3/9_of_diamonds.png"),
	preload("res://Assets/PNG-cards-1.3/10_of_clubs.png"),
	preload("res://Assets/PNG-cards-1.3/jack_of_hearts2.png"),
	preload("res://Assets/PNG-cards-1.3/queen_of_diamonds2.png"),
	preload("res://Assets/PNG-cards-1.3/king_of_spades2.png"),
	preload("res://Assets/PNG-cards-1.3/king_of_spades2.png"), #TODO Get Red sprite
	preload("res://Assets/PNG-cards-1.3/black_joker.png")
	
	
]
var card_back = preload("res://Assets/PNG-cards-1.3/card back black.png")
var card_front = preload("res://Assets/PNG-cards-1.3/card back black.png")

func set_card(card:CARD_TYPES):
	
	card_front = card_faces[card]
	match card:
		CARD_TYPES.ACE:
			print("im a ", card)
		CARD_TYPES.TWO:
			print("im a ", card)
		CARD_TYPES.THREE:
			print("im a ", card)
		CARD_TYPES.FOUR:
			print("im a ", card)
		CARD_TYPES.FIVE:
			print("im a ", card)
		CARD_TYPES.SIX:
			print("im a ", card)
		CARD_TYPES.SEVEN:
			print("im a ", card)
		CARD_TYPES.EIGHT:
			print("im a ", card)
		CARD_TYPES.NINE:
			print("im a ", card)
		CARD_TYPES.TEN:
			print("im a ", card)
		CARD_TYPES.JACK:
			print("im a ", card)
		CARD_TYPES.QUEEN:
			print("im a ", card)
		CARD_TYPES.BKING:
			print("im a ", card)
		CARD_TYPES.RKING:
			print("im a ", card)
		CARD_TYPES.JOKER:
			print("im a ", card)
		




func flip_card():
	if (current_side == Side.FRONT):
		
		
		$CardArea/CardArt.texture = card_back
		current_side = Side.BACK
	elif (current_side == Side.BACK):
		
		$CardArea/CardArt.texture = card_front
		current_side = Side.FRONT
	




func _on_card_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if clicked == false:
				flip_card()
				print("well it works")
				
				clicked = true
			else:
				flip_card()
				clicked = false
				
				print("well it works")
