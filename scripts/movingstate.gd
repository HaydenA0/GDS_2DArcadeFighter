
extends State
class_name MovingState
func onEnter(owner :CharacterBody2D):
	for child in owner.get_children():
		if child is ColorRect:
			ColorRect.color = Color.YELLOW
			break

func onExit(_owner :CharacterBody2D) :
	pass
func onRun(owner : CharacterBody2D, _delta):
	if owner.velocity and owner.SPEED :
		var direction = Input.get_vector("left", "right", "up", "down")
		if direction.length() >0 :
			owner.velocity = direction * owner.SPEED
		else :
			owner.velocity = Vector2.ZERO
		pass
