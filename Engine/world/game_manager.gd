extends Node

var score = 0
@onready var score_label = $ScoreLabel
@onready var coin_count = $Hud/CoinCount

func _ready():
	coin_count.text = "Coins: " + str(score)

func add_point():
	score += 1
	score_label.text = "Total coins: " + str(score) + "/15"
	coin_count.text = "Coins: " + str(score)
