extends Sprite

var mouse_Position
var crosshairZoomingIn = 0

func _ready():
	hide()

func _process(_delta):
	mouse_Position = get_local_mouse_position()
	rotation += (mouse_Position.angle() + PI/2) * 0.2
