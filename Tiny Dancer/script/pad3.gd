extends TextureButton
var music_playing = false
func _on_pressed() -> void:
	if music_playing:
		$"Music-pad3-7".stop()
		music_playing = false
	else:
		$"Music-pad3-7".play()
		music_playing = true
