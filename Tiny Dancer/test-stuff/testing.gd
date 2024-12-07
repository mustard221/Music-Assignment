extends Control ##trying different ways to add timer

@onready var timer = $Timer
@onready var pb = $Button/ProgressBar

func _ready():
	timer.wait_time = 6.555
	pb.value = timer.wait_time

func _process(delta):
	pb.value = timer.time_left
