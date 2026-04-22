
extends State
class_name HittingState

func onEnter(owner :CharacterBody2D):
	for child in owner.get_children():
		if child is ColorRect:
			ColorRect.color = Color.RED

func onExit(_owner :CharacterBody2D) :
	pass


func onRun(_owner : CharacterBody2D, _delta):
	pass
