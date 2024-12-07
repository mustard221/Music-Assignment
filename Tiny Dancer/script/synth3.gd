extends TextureButton

var music_playing = false

func _on_pressed() -> void:
	if music_playing:
		$"Music-synth3-15".stop()
		music_playing = false
	else:
		$"Music-synth3-15".play()
		music_playing = true
