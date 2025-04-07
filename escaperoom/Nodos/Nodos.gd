extends Node
func mostrar_mensaje(texto):
	$HUD/MensajeLabel.text = texto
	$HUD/MensajeLabel.visible = true
	await get_tree().create_timer(3).timeout
	$HUD/MensajeLabel.visible = false
