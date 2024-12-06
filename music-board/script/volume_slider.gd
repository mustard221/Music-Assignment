extends VSlider

var master_bus = AudioServer.get_bus_index("Master")

func _on_value_changed(new_value):
	AudioServer.set_bus_volume_db(master_bus, new_value)
	
	if new_value == 0:
		AudioServer.set_bus_mute(master_bus, true)
	else:
		AudioServer.set_bus_mute(master_bus, false)
