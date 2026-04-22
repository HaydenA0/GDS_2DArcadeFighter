extends CharacterBody2D

const SPEED = 200.0

var cuurentState :State



func _ready() -> void:
	cuurentState = IdleState.new()
	pass
	

func _physics_process(_delta: float) -> void:
	if cuurentState:
		cuurentState.onRun(self, _delta)
		checkTransition()

	pass


func checkTransition() -> void	 :
	pass

