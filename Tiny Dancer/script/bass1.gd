extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-bass1-9".stop()
		music_playing = false
	else:
		$"Music-bass1-9".play()
		music_playing = true
