extends Sprite

var mouse_Position = Vector2.ZERO

func _ready():
	hide()
	
func _process(_delta):
	mouse_Position = get_local_mouse_position()
	rotation += mouse_Position.angle() * 0.2
	
func gun_facing_left():
	z_index = get_parent().z_index - 1
	
func gun_facing_right():
	z_index = get_parent().z_index + 1
	
func gun_facing_down():
	z_index = get_parent().z_index + 1
	
func gun_facing_up():
	z_index = get_parent().z_index - 1
