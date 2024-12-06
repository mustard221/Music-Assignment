extends VSlider

var mb = AudioServer.get_bus_index("Master")

func _ready():
	value = 50 #start with volume

func _on_value_changed(new_value):
	var vol = ((new_value) / 50) * 80
	AudioServer.set_bus_volume_db(mb, vol - 80) #mapping slider and converting to decibel range
	
	if new_value == 1:
		AudioServer.set_bus_mute(mb, true) #mutes when slider is at bottom
	else:
		AudioServer.set_bus_mute(mb, false)
