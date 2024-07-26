extends Node

var score = 0
@onready var score_label = $ScoreLabel
@onready var coin_count = $Hud/CoinCount
@onready var player = %Player

func _ready():
	coin_count.text = "Coins: " + str(score)
	if CheckPoints.spawn:
		player.global_position = CheckPoints.spawn

func add_point():
	score += 1
	score_label.text = "Total coins: " + str(score) + "/20"
	coin_count.text = "Coins: " + str(score)
