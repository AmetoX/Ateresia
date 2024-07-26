extends Node

var score = 0
@onready var score_label = $ScoreLabel
@onready var coins = $"../Hud/Coins"

func _ready():
	if CheckPoints.spawn:
		player.global_position = CheckPoints.spawn
		print("checkpoint spawn: " + str(CheckPoints.spawn))

func add_point():
	score += 1
	score_label.text = "Coins collected: " + str(score) + "/21"
	coins.text = str(score)
