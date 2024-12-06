extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-beat2-4".stop()
		music_playing = false
	else:
		$"Music-beat2-4".play()
		music_playing = true
