extends Control

@export var button_group_path : NodePath
var button_group : ButtonGroup

func _ready():
	button_group = get_node(button_group_path)
	for button in button_group.get_buttons():
		button.connect("pressed", self, "_on_button_pressed", [button])

func _on_button_pressed(button):
	for other_button in button_group.get_buttons():
		if other_button != button:
			other_button.disabled = true

	for other_button in button_group.get_buttons():
		if other_button != button:
			other_button.disabled = false
