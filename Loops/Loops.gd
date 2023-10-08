extends Node2D


@export var spawn_count : int = 200
var star_scene = preload("res://Loops/Star.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	
	for i in spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
		
		star.position.x = randi_range(-280, 280)
		star.position.y = randi_range(-150, 150)
		
		var star_size = randf_range(0.2, 1.2)
		star.scale.x = star_size
		star.scale.y = star_size
		
		var r = randf_range(0.1,1)
		var g = randf_range(0.4,1)
		var b = randf_range(0.1,1)
		var a = randf_range(0.97,0.99)
		
		star.modulate = Color(r,g,b,a)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
