extends Area2D
@export var next_scene_path: String
@onready var anim = $AnimatedSprite2D
@onready var tiempo = $Timer
func _process(delta):
	pass

	

func _on_body_entered(body):
	if body.name == "Player":
		anim.play("opening")
		tiempo.start()
		await (tiempo.timeout)
		anim.play("open")
		change_scene()
		
func change_scene():
	get_tree().change_scene_to_file(next_scene_path)


# Replace with function body.
