class_name STATE_MOVING extends PlayerState

#enum { IDLE, MOVING, AIR }

func handle_input(event: InputEvent) -> void:
	pass

func state_process(delta: float) -> void:
	pass

func state_physics(delta: float) -> void:
	player.velocity = Vector2(100,2)
	player.move_and_slide()

func enter() -> void:
	print("Started Moving!")
	pass

func exit() -> void:
	print("Exited Moving!")
	pass
