extends TextureButton

var music_playing = false
func _on_pressed() -> void:
	if music_playing:
		$"Music-synth4-16".stop()
		music_playing = false
	else:
		$"Music-synth4-16".play()
		music_playing = true
