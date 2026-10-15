extends Node2D
var card_face_paths: Array[String] = []
var CARD_SCENE: = preload("res://card.tscn")
@export var observer: Node
enum CARD_TYPES {ACE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, QUEEN, BKING, RKING, JOKER}
func _ready() -> void:
	spawn_card()
	
	
	
	
func spawn_card():
	var card: Card = CARD_SCENE.instantiate()
	card.card_type = CARD_TYPES.FIVE
	print(card.card_type)
	card.left_clicked.connect(observer._on_card_left_clicked)
	card.right_clicked.connect(observer._on_card_right_clicked)
	add_child.call_deferred(card)
