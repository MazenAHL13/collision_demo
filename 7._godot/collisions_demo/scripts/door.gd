extends Area2D
signal door_entered

@export var closed_texture: Texture2D
@export var open_texture: Texture2D

func _ready() -> void:
	close()

func open():
	$CollisionShape2D.disabled = false
	$Sprite2D.texture = open_texture
	
func close():
	$CollisionShape2D.disabled = true
	$Sprite2D.texture = closed_texture
	
func _on_area_entered(area: Area2D) -> void:
	print("DOOR body_entered:", area)
	door_entered.emit()
