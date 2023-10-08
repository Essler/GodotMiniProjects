extends Area3D


@export var clicks_to_pop : int = 3
@export var size_increase : float = 0.2
@export var score_to_give : int = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * size_increase
		clicks_to_pop -= 1
		if (clicks_to_pop) == 0:
			get_node("/root/MainNode").increase_score(score_to_give)
			queue_free()
		
