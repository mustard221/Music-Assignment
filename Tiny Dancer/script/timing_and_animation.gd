extends Control

@onready var timer_beat = $Timer_Beat
@onready var timer_bass = $Timer_Bass
@onready var timer_synth = $Timer_Synth
@onready var timer_pad = $Timer_Pad

@onready var pb_beat = $ProgressBar
@onready var pb_bass = $ProgressBar2
@onready var pb_synth = $ProgressBar3
@onready var pb_pad = $ProgressBar4

@onready var beat_buttons = [$"GridContainer/Beat 1", $"GridContainer/Beat 2", $"GridContainer/Beat 3", $"GridContainer/Beat 4"]
@onready var bass_buttons = [$"GridContainer/Bass 1", $"GridContainer/Bass 2", $"GridContainer/Bass 3", $"GridContainer/Bass 4"]
@onready var synth_buttons = [$"GridContainer/Synth 1", $"GridContainer/Synth 2", $"GridContainer/Synth 3", $"GridContainer/Synth 4"]
@onready var pad_buttons = [$"GridContainer/Pad 1", $"GridContainer/Pad 2", $"GridContainer/Pad 3", $"GridContainer/Pad 4"]
#adding everything to be accessed individually
var beat_active = false
var bass_active = false
var synth_active = false
var pad_active = false #tracking status of buttons
##mostly timer stuff
func _ready():
	var wait_time = 6.555
	pb_beat.value = wait_time
	pb_bass.value = wait_time
	pb_synth.value = wait_time
	pb_pad.value = wait_time #setting values for progressbars

func _process(delta):
	if timer_beat.is_processing:
		pb_beat.value = timer_beat.time_left 
	if timer_bass.is_processing:
		pb_bass.value = timer_bass.time_left
	if timer_synth.is_processing:
		pb_synth.value = timer_synth.time_left
	if timer_pad.is_processing:
		pb_pad.value = timer_pad.time_left #timer updates corresponding progressbar value

func _on_beat_pressed():
	if beat_active:
		_stop_timer(timer_beat, pb_beat)
	else:
		_start_timer(timer_beat, pb_beat)
	beat_active = !beat_active
	_check_buttons_and_play_animation()
func _on_bass_pressed():
	if bass_active:
		_stop_timer(timer_bass, pb_bass)
	else:
		_start_timer(timer_bass, pb_bass)
	bass_active = !bass_active
	_check_buttons_and_play_animation()
func _on_synth_pressed():
	if synth_active:
		_stop_timer(timer_synth, pb_synth)
	else:
		_start_timer(timer_synth, pb_synth)
	synth_active = !synth_active
	_check_buttons_and_play_animation()
func _on_pad_pressed():
	if pad_active:
		_stop_timer(timer_pad, pb_pad)
	else:
		_start_timer(timer_pad, pb_pad)
	pad_active = !pad_active #using ! so can switch between on and off
	_check_buttons_and_play_animation() #button presses toggle corresponding timer/progressbar on if off and vice versa

func _start_timer(timer: Timer, pb: ProgressBar):
	timer.stop()
	timer.start()

func _stop_timer(timer: Timer, pb: ProgressBar):
	timer.stop() #timer starts/stops
##animation stuff
func _check_buttons_and_play_animation():
	var on_buttons = 0
	if beat_active: on_buttons += 1
	if bass_active: on_buttons += 1
	if synth_active: on_buttons += 1
	if pad_active: on_buttons += 1  #check how many buttons are on
	_play_animation("idle" if on_buttons == 0 else "dance" + str(on_buttons)) #assign animation based on number of buttons on

func _play_animation(animation: String):
	var animation_node = $CharacterBody2D/AnimatedSprite2D
	if animation_node.is_playing():
		animation_node.stop()  #stop current animation to avoid overlapping
	animation_node.play(animation)  #play new animation
