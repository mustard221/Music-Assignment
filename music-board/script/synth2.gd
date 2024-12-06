extends TextureButton
var music_playing = false
func _on_pressed() -> void:
	if music_playing:
		$"Music-synth2-14".stop()
		music_playing = false
	else:
		$"Music-synth2-14".play()
		music_playing = true
