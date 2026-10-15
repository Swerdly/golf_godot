extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_card_left_clicked(card: Card):
	print(card.card_type)
	pass
	
	
func _on_card_right_clicked(card: Node):
	pass
