extends Control

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:

	anim.stop()
	anim.frame = 0


func _on_button_pressed() -> void:
	anim.play("jogar")
	
	await anim.animation_finished
	
	# 3. Aqui é só mudar para a cena do jogo
	get_tree().change_scene_to_file("res://cena_do_jogo_ex.tscn")
