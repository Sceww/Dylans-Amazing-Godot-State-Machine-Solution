# The Player class acts both as the Player's controller and the Player's State Machine.
class_name Player extends CharacterBody2D


enum { IDLE, MOVING, AIR }

var stateArray = [
	STATE_IDLE.new(self),
	STATE_MOVING.new(self),
]

var currentState: State = stateArray[IDLE]

func _unhandled_input(event: InputEvent) -> void:
	currentState.handle_input(event)

func _process(delta: float) -> void:
	currentState.state_process(delta)

func _physics_process(delta: float) -> void:
	currentState.state_physics(delta)

func switch_state(newState: int) -> void:
	currentState.exit()
	currentState = stateArray[newState]
	currentState.enter()
	pass
