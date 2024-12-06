extends TextureButton
var music_playing = false
func _on_pressed() -> void:
	if music_playing:
		$"Music-pad4-8".stop()
		music_playing = false
	else:
		$"Music-pad4-8".play()
		music_playing = true
