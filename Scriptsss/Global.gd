extends Node

var score: int = 0
var player: Node = null

func add_score(points: int) -> void:
	score += points

func reset_score() -> void:
	score = 0
