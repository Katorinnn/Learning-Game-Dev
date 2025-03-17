extends Node

@onready var counter: Label = $Counter

var score = 0

func add_score():
	score += 1
	counter.text = "Coins: " + str(score)
