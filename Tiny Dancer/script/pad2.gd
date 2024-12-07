extends TextureButton
var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-pad2-6".stop()
		music_playing = false
	else:
		$"Music-pad2-6".play()
		music_playing = true
