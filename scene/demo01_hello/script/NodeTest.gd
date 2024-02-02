extends Sprite2D

var speed: int = 400

func _ready():
	print("node test")
	pass


func _process(delta):
	handle_movement(delta)

func handle_movement(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1

	if velocity.length() <= 0:
		return
	
	velocity = velocity.normalized() * speed
	position += velocity * delta

func myCall():
	print("my call")
	get_parent().position = Vector2.ZERO
	pass
