extends State
class_name IdleState

func onEnter(owner :CharacterBody2D):
	owner.velocity = Vector2.ZERO
	for child in owner.get_children():
		if child is ColorRect:
			ColorRect.color = Color.GREEN
			break

func onExit(owner :CharacterBody2D) :
	pass
func onRun(owner : CharacterBody2D, delta):
	pass
