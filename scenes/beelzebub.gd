class_name Beelzebub
extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity.x = 500
	velocity.y = randf_range(-100,100)
	move_and_slide()
	


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body is Beelzebub:
		position.x=get_viewport_rect().size.x*-1 - $Bcollisionshape.shape.radius *0.1 
		print(body)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Beelzebub:
		position.x=get_viewport_rect().size.x + $Bcollisionshape.shape.radius *0.1
		print(body)
