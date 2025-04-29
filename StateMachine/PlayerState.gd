class_name PlayerState extends State

enum { IDLE, MOVING, AIR }
var player: Player

func _init(stateOwner: Player) -> void:
	player = stateOwner
	print(player)

func handle_input(event: InputEvent) -> void:
	pass

func state_process(delta: float) -> void:
	pass

func state_physics(delta: float) -> void:
	pass

func enter() -> void:
	pass

func exit() -> void:
	pass
