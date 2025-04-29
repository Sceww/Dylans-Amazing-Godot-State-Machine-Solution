class_name STATE_IDLE extends PlayerState

#enum { IDLE, MOVING, AIR }

func handle_input(event: InputEvent) -> void:
	if Input.is_action_pressed("ui_accept"):
		print("Input event passed, attempting to switch states...")
		player.switch_state(MOVING)

func state_process(delta: float) -> void:
	pass

func state_physics(delta: float) -> void:
	pass

func enter() -> void:
	print("Entered Idle")
	pass

func exit() -> void:
	print("Exited Idle")
	pass
