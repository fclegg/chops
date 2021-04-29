extends Node2D

var posGoggle
var posGarth
var posGreener
var posArchie

func _ready():
	pass


func _physics_process(_delta):
	posGoggle = $Goggle/posGoggle.get_global_position()
	posGarth = $Garth.get_global_position()
	posGreener = $Greener.get_global_position()
	posArchie = $Archie.get_global_position()
	
	if posGoggle.y > 350:
		$Goggle.position = (Vector2(30, 130))
		get_node("Goggle").velocity = Vector2(0, 0)
	if posGreener.y > 350:
		$Greener.position = (Vector2(30, 130))
		get_node("Greener").velocity = Vector2(0, 0)
	if posGarth.y > 350:
		$Garth.position = (Vector2(30, 130))
		get_node("Garth").velocity = Vector2(0, 0)
	if posArchie.y > 350:
		$Archie.position = (Vector2(30, 130))
		get_node("Archie").velocity = Vector2(0, 0)



