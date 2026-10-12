extends Node2D
var card_face_paths: Array[String] = []
var CARD_SCENE = preload("res://card.tscn")
enum CARD_TYPES {ACE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, QUEEN, BKING, RKING, JOKER}
func _ready() -> void:
	
	
	
	var card = CARD_SCENE.instantiate()
	print(card.card_type)
	card.flip_card()
	var Main = get_parent()
	Main.add_child.call_deferred(card)
	
	
