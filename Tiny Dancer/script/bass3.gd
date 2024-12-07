extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-bass3-11".stop()
		music_playing = false
	else:
		$"Music-bass3-11".play()
		music_playing = true
