extends Node

var score = 0
@onready var score_label = $ScoreLabel
#@onready var player_score = $Hud/playerScore
@onready var coin_count = $Hud/CoinCount

func add_point():
	score += 1
	score_label.text = "Coins collected: " + str(score)
	#player_score.text = "Coins: " + str(score)
	coin_count.text = "Coins: " + str(score)
