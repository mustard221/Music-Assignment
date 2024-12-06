extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-beat3-2".stop()
		music_playing = false
	else:
		$"Music-beat3-2".play()
		music_playing = true
