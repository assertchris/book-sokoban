extends GameScreen

@onready var _tiles := $Center/Stage/Tiles as TileMap
@onready var _nodes := $Center/Stage/Nodes as Node2D

func _ready() -> void:
	var i := 0
	var level : GameLevel = Variables.current_level
	var half = floor(level.width / 2)
	var remainder = level.width % 2

	Variables.total_crates = 0
	Variables.covered_crates = 0

	for y in range(-half - remainder, half):
		for x in range(-half - remainder, half):
			if Types.tile_coordinates.has(level.layout[i]):
				_tiles.set_cell(0, Vector2i(x, y), 0, Types.tile_coordinates[level.layout[i]])

			if Constants.node_scenes.has(level.layout[i]):
				var new_node = Constants.node_scenes[level.layout[i]].instantiate()
				_nodes.add_child(new_node)
				new_node.position = Vector2(x * 64, y * 64)

			if level.layout[i] == Types.blocks.crate:
				Variables.total_crates += 1

			i += 1
