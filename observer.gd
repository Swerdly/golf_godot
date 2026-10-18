extends Node2D
var target_cards: Array[Card] =[]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_card_left_clicked(card: Card):
	print("left click recieved")
	if target_cards.size() == 1 and target_cards[0] == card:
		target_cards.clear()
	elif target_cards.size() == 0:
		target_cards.append(card)
	elif target_cards.size() == 1:
		card.swap(target_cards[0])
		target_cards.clear()
	
	
	
func _on_card_right_clicked(card: Node):
	print("right click recieved")
	pass
