extends CharacterBody2D

@export var move_speed: float
var mira_dercha = true
@onready var animated_sprite = $AnimatedSprite2D
@onready var actionable_finder = $Direction/ActionableFinder

func _physics_process(delta):
	# movimiento
	var input_axis = Input.get_axis("move_left","move_rigth")
	velocity.x = input_axis * move_speed
	
	var input_axis2 = Input.get_axis("move_up","move_down")
	velocity.y = input_axis2 * move_speed
	
	# para donde mira
	if (mira_dercha and velocity.x < 0) or (not mira_dercha and velocity.x > 0):
		scale.x *= -1
		mira_dercha = not mira_dercha
		
	move_and_slide()
	update_animations()
func update_animations():
	if (velocity.x) or (velocity.y):
		animated_sprite.play("run")
	else:
		animated_sprite.play("idle")

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
		
	
