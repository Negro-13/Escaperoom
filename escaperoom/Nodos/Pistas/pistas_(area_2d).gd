extends Area2D

var jugador_cerca = false

func _ready():
	$Label.visible = false

func _on_body_entered(body):
	if body.name == "Personaje": # cambia este nombre si tu personaje tiene otro nombre
		jugador_cerca = true
		$Label.visible = true

func _on_body_exited(body):
	if body.name == "Personaje":
		jugador_cerca = false
		$Label.visible = false

func _process(_delta):
	if jugador_cerca and Input.is_action_just_pressed("interactuar"): # debes crear esta acción en InputMap
		mostrar_mensaje()
		
func mostrar_mensaje():
	get_node("/root/Nodos").mostrar_mensaje("Esta caja está cerrada con candado.")
	print("Es una pista: ¡Revisa debajo del escritorio!")
