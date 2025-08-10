extends Area2D
@onready var text_button: Button = $"../text_button"


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		text_button.visible = true



func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		text_button.visible = false
