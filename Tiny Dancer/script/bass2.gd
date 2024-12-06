extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-bass2-10".stop()
		music_playing = false
	else:
		$"Music-bass2-10".play()
		music_playing = true
