extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-bass4-12".stop()
		music_playing = false
	else:
		$"Music-bass4-12".play()
		music_playing = true
