extends CharacterBody2D

const SPEED = 200.0

var current_state: State = State.new()



func _ready() -> void:
	currentState = State.Idle



func idle() -> void :
	$ColorRect.color = Color.GREEN
	if velocity.length() > 0 :
		currentState = State.Moving
	elif Input.is_action_pressed("hit") :
		currentState = State.Hitting


func moving() -> void :
	$ColorRect.color = Color.YELLOW
	move_and_slide()
	if velocity.length() == 0 :
		currentState = State.Idle
	elif Input.is_action_pressed("hit") :
		currentState = State.Hitting

func hitting() -> void :
	$ColorRect.color = Color.RED
	if velocity.length() > 0 :
		currentState = State.Moving
	elif velocity.length() == 0 :
		currentState = State.Idle

func handlInput() -> void :
	var direction = Input.get_vector("left", "right", "up", "down")

	if direction.length() >0 :
		velocity = direction * SPEED
	else :
		velocity = Vector2.ZERO

func updateEntity() :
	match currentState :
		State.Idle :
			idle()
		State.Moving :
			moving()
		State.Hitting :
			hitting()

func _process(_delta: float) -> void:
	handlInput()
	updateEntity()



