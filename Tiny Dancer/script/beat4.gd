extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-beat4-1".stop()
		music_playing = false
	else:
		$"Music-beat4-1".play()
		music_playing = true
