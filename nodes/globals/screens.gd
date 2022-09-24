extends Node

var root = null
var current_screen : Types.screens
var current_screen_node : GameScreen
var is_changing_screen := false

func _ready() -> void:
	root = get_tree().get_root()
	current_screen_node = root.get_children().back()

func change_screen(new_screen: Types.screens) -> void:
	if is_changing_screen:
		return

	is_changing_screen = true

	var new_screen_node : GameScreen = Constants.screen_scenes[new_screen].instantiate()
	load_new_screen(new_screen_node, new_screen)

func load_new_screen(new_screen_node: GameScreen, new_screen: Types.screens) -> void:
	current_screen_node.queue_free()
	root.add_child(new_screen_node)

	current_screen = new_screen
	current_screen_node = new_screen_node

	is_changing_screen = false
