extends Node2D

@onready var door: Area2D = $Door
@onready var enemies_vulnerable := false

func _ready() -> void:
	$Key.collected.connect(on_key_collected)
	
func on_key_collected():
	door.open()


func _on_door_entered() -> void:
	$WinLabel.text = "YOU WIN"
	$WinLabel.visible = true


func _on_door_door_entered() -> void:
	$WinLabel.text = "YOU WIN"
	$WinLabel.visible = true


func _on_gem_collected() -> void:
	enemies_vulnerable = true
	get_tree().call_group("enemies", "set_vulnerable", true)
	print("Gem collected → enemies vulnerable!")
