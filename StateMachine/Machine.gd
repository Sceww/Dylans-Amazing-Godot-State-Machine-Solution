class_name Machine extends Node

@export var currentState: State

func _unhandled_input(event: InputEvent) -> void:
	currentState.handle_input(event)

func _process(delta: float) -> void:
	currentState.state_process(delta)

func _physics_process(delta: float) -> void:
	currentState.state_physics(delta)

func switch_state(newState: State) -> void:
	currentState.exit()
	newState.enter()
