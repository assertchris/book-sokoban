extends CharacterBody2D
class_name GamePlayer

@onready var level : GameLevel = Variables.current_level

var walls_blocks := [
	Types.blocks.wall_top_left,
	Types.blocks.wall_top,
	Types.blocks.wall_top_right,
	Types.blocks.wall_right,
	Types.blocks.wall_bottom_right,
	Types.blocks.wall_bottom,
	Types.blocks.wall_bottom_left,
	Types.blocks.wall_left,
]

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_pressed():
		var offset = Vector2(0, 0)

		if event.is_action_pressed("ui_right"):
			offset.x = 64
		if event.is_action_pressed("ui_down"):
			offset.y = 64
		if event.is_action_pressed("ui_left"):
			offset.x = -64
		if event.is_action_pressed("ui_up"):
			offset.y = -64

		var target_block := block_at_position(position + offset)
		var further_target_block := block_at_position(position + offset + offset)

		var is_wall : bool = walls_blocks.has(target_block)
		var is_closed_door : bool = target_block == Types.blocks.door and Variables.covered_crates < Variables.total_crates

		var crate := crate_at_position(position + offset)
		var is_crate_blocked_by_wall : bool = walls_blocks.has(further_target_block)

		if crate and not is_crate_blocked_by_wall:
			crate.position = crate.position + offset
			position = position + offset
		elif not crate and not is_wall and not is_closed_door:
			position = position + offset

func crate_at_position(position: Vector2) -> GameCrate:
	for child in get_parent().get_children():
		if child is GameCrate and child.position.x == position.x and child.position.y == position.y:
			return child

	return null

func block_at_position(position : Vector2) -> int:
	var i := 0
	var half = floor(level.width / 2)
	var remainder = level.width % 2

	for y in range(-half - remainder, half):
		for x in range(-half - remainder, half):
			if position.x == x * 64 and position.y == y * 64:
				return level.layout[i]

			i += 1

	return -1
