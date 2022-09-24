extends Resource
class_name GameLevel

@export var name := "New level"

@export var width := 7

@export var layout : Array[Types.blocks] = [
	Types.blocks.wall_top_left, Types.blocks.wall_top, Types.blocks.wall_top, Types.blocks.wall_top, Types.blocks.wall_top, Types.blocks.wall_top, Types.blocks.wall_top_right,
	Types.blocks.wall_left, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.wall_right,
	Types.blocks.wall_left, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.wall_right,
	Types.blocks.wall_left, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.wall_right,
	Types.blocks.wall_left, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.wall_right,
	Types.blocks.wall_left, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.empty, Types.blocks.wall_right,
	Types.blocks.wall_bottom_left, Types.blocks.wall_bottom, Types.blocks.wall_bottom, Types.blocks.wall_bottom, Types.blocks.wall_bottom, Types.blocks.wall_bottom, Types.blocks.wall_bottom_right,
]
