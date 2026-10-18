extends Node2D
@export var CARD_SCENE: PackedScene
@export var observer: Node
enum CARD_TYPES {ACE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, TEN, JACK, QUEEN, BKING, RKING, JOKER}
func _ready() -> void:
	spawn_card(Vector2(500,500))
	spawn_card(Vector2(700,700))
	
	
	
	
func spawn_card(pos: Vector2):
	var card: Card = CARD_SCENE.instantiate()
	card.global_position = pos
	card.card_type = randi() % 10 as CARD_TYPES

	print(card.card_type)
	card.left_clicked.connect(observer._on_card_left_clicked)
	card.right_clicked.connect(observer._on_card_right_clicked)
	get_parent().add_child.call_deferred(card)
