extends Label

var is_typing = false
var current_character = 0
var typing_speed = 1
var dialogue = ["Oh, hey dude, what's up? I'm Aristotle, ever heard of me? Tight, tight. oh yeah-
Welcome to Hell, dude. For. Real.", 
"Well, technically we're in Limbo right now. Dude, it's dangerous here, man. You should really head out...", 
"WOAH! Wait, is that the Golden Sword of Lucifer's Bunion Cave? Dude, with that thing, you might just stand a chance.", 
"Yeah man, that might work. Jump off that cliff right there and you'll hit the really freaky hell... I'm talkin' like, demon kings.",
"Stick all of 'em with that sword, and you'll be like, the ruler of hell, and I'll be free. Pretty cool.",
"Good luck! Stay hydrated man, it's hot down there."]

var current_dialogue = -1
	
func _ready() -> void:
	current_dialogue = -1
	current_character = 0
	
	
func _process(delta: float) -> void:
	if is_typing == true:
		if visible_ratio < 1:
			current_character +=1
			visible_characters = current_character*typing_speed
		else:
			is_typing = false
	
	if Input.is_action_just_pressed("Advance"):
		if current_dialogue < 5:
			current_character = 0
			visible_characters = 0
			current_dialogue += 1
			text = dialogue[current_dialogue]
			is_typing = true
		else:
			get_tree().change_scene_to_file("res://scenes/node_2d.tscn")
