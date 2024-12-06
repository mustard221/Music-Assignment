extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-beat1-3".stop()
		music_playing = false
	else:
		$"Music-beat1-3".play()
		music_playing = true
