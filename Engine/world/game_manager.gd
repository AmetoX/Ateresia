extends Node

var score = 0
@onready var score_label = get_node("ScoreLabel")
@onready var coin_count = get_node("Hud/CoinCount")


func _ready():
	if CheckPoints.spawn:
		player.global_position = CheckPoints.spawn

func add_point():
	score += 1
	score_label.text = "Total coins: " + str(score) + "/20"
	coin_count.text = "Coins: " + str(score)
