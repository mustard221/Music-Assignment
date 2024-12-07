extends Timer  ##trying different ways to add timer

var timer_on: bool = false

func _on_bass_pressed():
	if timer_on:
		stop()  
		timer_on = false  #set timer to off if on
	else:
		start()  
		timer_on = true  #set timer to on if off

func _on_timeout() -> void:
	timer_on = false #reset state when done
