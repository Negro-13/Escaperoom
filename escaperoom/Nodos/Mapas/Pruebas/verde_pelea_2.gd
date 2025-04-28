extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
@onready var tiempo = $Timer
var estado = 0

func _ready():
	tiempo.wait_time = 1.0
	tiempo.start()
	anim.play("atack")

func _on_Timer_timeout():
	if estado == 0:
		anim.play("daño")
		estado = 1
	else:
		anim.play("atack")
		estado = 0
	tiempo.start()
