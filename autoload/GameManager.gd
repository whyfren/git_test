extends Node


# Declare variabel buat spawnpoint
var player_scene = preload("res://scenes/player/Player.tscn")
var player
var current_spawn : PlayerSpawn
var current_position : Vector2 = Vector2.ZERO

# buat ngetes autoload
func test():
	print("this is from auto load")

# fungsi buat spawn/respawn player
func player_spawn(parent):
	# debug apakah player scene ada
	if player_scene == null:
		print("Player scene belum di assign di GameManager!")
		return
	# ngeset biar player lama dihapus, biar ga double nanti
	if player:
		player.queue_free()
	# spawn player lagi
	player = player_scene.instance()
	parent.add_child(player)
	# nyamain posisi spawn player sama posisi player spawn
	if current_spawn:
		player.global_position = current_spawn.global_position
	print("player instance:", player)

# fungsi buat player mati
func player_died():
	player_spawn(self)


 
