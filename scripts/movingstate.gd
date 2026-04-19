
extends State
class_name MovingState

func onEnter(owner :CharacterBody2D):
	owner.velocity = Vector2.ZERO
	for child in owner.get_children():
		if child is ColorRect:
			ColorRect.color = Color.YELLOW
			break

func onExit(owner :CharacterBody2D) :
	pass
func onRun(owner : CharacterBody2D, delta):
	pass
