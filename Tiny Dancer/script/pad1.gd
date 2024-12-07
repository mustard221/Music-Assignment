extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-pad1-5".stop()
		music_playing = false
	else:
		$"Music-pad1-5".play()
		music_playing = true
