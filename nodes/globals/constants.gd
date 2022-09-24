extends Node
class_name Types

enum screens {
	none,
	level_selection,
	play,
}

@export var level_selection_scene : PackedScene
@export var play_scene : PackedScene

@onready var screen_scenes := {
	screens.level_selection: level_selection_scene,
	screens.play: play_scene,
}

enum blocks {
	wall_top_left,
	wall_top,
	wall_top_right,
	wall_right,
	wall_bottom_right,
	wall_bottom,
	wall_bottom_left,
	wall_left,
	empty,
	player,
	crate,
	dot,
	door,
}

const _wall_coordinates := Vector2i(8, 7)
const _door_coordinates := Vector2i(10, 0)

const tile_coordinates := {
	blocks.wall_top_left: _wall_coordinates,
	blocks.wall_top: _wall_coordinates,
	blocks.wall_top_right: _wall_coordinates,
	blocks.wall_right: _wall_coordinates,
	blocks.wall_bottom_right: _wall_coordinates,
	blocks.wall_bottom: _wall_coordinates,
	blocks.wall_bottom_left: _wall_coordinates,
	blocks.wall_left: _wall_coordinates,
	blocks.door: _door_coordinates,
}

@export var crate_scene : PackedScene
@export var door_scene : PackedScene
@export var dot_scene : PackedScene
@export var player_scene : PackedScene

@onready var node_scenes := {
	blocks.crate: crate_scene,
	blocks.door: door_scene,
	blocks.dot: dot_scene,
	blocks.player: player_scene,
}
