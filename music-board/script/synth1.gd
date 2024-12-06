extends TextureButton
var music_playing = false
func _on_pressed() -> void:
	if music_playing:
		$"Music-synth1-13".stop()
		music_playing = false
	else:
		$"Music-synth1-13".play()
		music_playing = true
