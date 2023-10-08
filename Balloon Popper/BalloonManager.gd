extends Node3D


var score : int = 0
@export var score_text : Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func increase_score (amount):
	score += amount
	score_text.text = str("Score: ", score)
