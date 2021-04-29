extends Node2D

onready var bg1 = $Background1.get_transform()
onready var bg2 = $Background2.get_transform()
onready var joinbutton = $Join/joinbutton

func _ready():
	#get_tree().connect("network_peer_connected", self, "_player_connected")
	$LevelSelect.visible = false
	$MainMenu.visible = true
	$MainMenu/Join/joinbutton.disabled = false
	
	$MainMenu/AnimatedSprite.playing = true
	$MainMenu/AnimatedSprite2.playing = true
	$MainMenu/AnimatedSprite3.playing = true
	$MainMenu/AnimatedSprite4.playing = true
	$MainMenu/Join/JoinIcon.frame = 1
	

func _physics_process(delta):
	bg1 = $Background1.get_transform()
	bg2 = $Background2.get_transform()
	$Background1.translate(Vector2(0.5, 0))
	$Background2.translate(Vector2(0.5, 0))
	if bg1 == Transform2D(0, Vector2(506, 0)):
		$Background1.set_global_position(Vector2(-650, 0))
	if bg2 == Transform2D(0, Vector2(506, 0)):
		$Background2.set_global_position(Vector2(-650, 0))

func _on_joinbutton_pressed():
	#var net = NetworkedMultiplayerENet.new()
	#net.create_client("127.0.0.1, 6969")
	#get_tree().set_network_peer(net)
	$MainMenu/Join/JoinIcon.frame = 0
	yield(get_tree().create_timer(0.1), "timeout")
	$MainMenu/Join/JoinIcon.frame = 1
	yield(get_tree().create_timer(0.1), "timeout")

	
	
	
func _on_hostbutton_pressed():
	#var net = NetworkedMultiplayerENet.new()
	#net.create_server(6969, 2)
	#get_tree().set_network_peer(net)
	#print("hosting")
	$MainMenu/Host/HostIcon.frame = 0
	yield(get_tree().create_timer(0.1), "timeout")
	$MainMenu/Host/HostIcon.frame = 1
	get_tree().change_scene("res://Level1.tscn")
	
	
#func _player_connected(id):
	#Globals.player2id = id
