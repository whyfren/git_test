extends Area2D

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	print(body.name)
	if body.name == "Player":  # so only player triggers it, not other bodies
		print("mati")
		GameManager.player_died()
