extends Node


# Declare variabel buat spawnpoint
var player_scene = preload("res://scenes/player/Player.tscn")
var player
var current_spawn : PlayerSpawn

# buat ngetes autoload
func test():
	print("this is from auto load")

func spawn_player(parent):
	print("SPAWN PLAYER DIPANGGIL")
	print("player scene:", player_scene)
	print("spawn point:", current_spawn)
	print("parent:", parent)
	if player_scene == null:
		print("Player scene belum di assign di GameManager!")
		return
	
	if player:
		player.queue_free()

	player = player_scene.instance()
	parent.add_child(player)

	if current_spawn:
		player.global_position = current_spawn.global_position
	print("player instance:", player)

# fungsi buat player mati
func player_died():
	print("fungsi mati kepanggil")
	var parent : Node = get_parent()
	print(parent.name)
	spawn_player(parent)
