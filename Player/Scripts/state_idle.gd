class_name State_Idle extends State

@onready var walk : State = $"../Walk"

## What happens when the player enteres this state?
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass



## What happens when the Player exits this state?
func Exit() ->void:
	pass



## What happens during the _process update in this state?
func Process(_delta: float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null



## What happens during the _physiscs_process update in this state?
func Physics(_delta: float) -> State:
	return null




## What happens with the input events in this state?
func HandleInput(_event: InputEvent) -> State:
	return null
