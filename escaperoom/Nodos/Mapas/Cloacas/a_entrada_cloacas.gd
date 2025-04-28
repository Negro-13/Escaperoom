extends Area2D
@export var next_scene_path: String
func _process(delta):
	pass

	

func _on_body_entered(body):
	if body.name == "Player":
		change_scene()
		
func change_scene():
	get_tree().change_scene_to_file(next_scene_path)
