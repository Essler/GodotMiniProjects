extends RigidBody3D


@export var move_speed : float = 2.0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Called at a fixed rate every second.
func _physics_process(delta):
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		linear_velocity.x = -move_speed
		
	if Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		linear_velocity.x = move_speed
		
	if Input.is_key_pressed(KEY_SPACE):
		linear_velocity.y = move_speed
		
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().reload_current_scene()


func _on_body_entered(body):
	if body.is_in_group("Trees"):
		get_tree().reload_current_scene()
