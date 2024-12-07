extends GridContainer

var buttons = []  #holds rows of buttons
var last_buttons = []  #last pressed button in each row

func _ready():
	for i in range(get_child_count()):
		var button = get_child(i) as TextureButton
		if button:
			var row = i / 4  #find row
			if row >= buttons.size(): #check if row exists
				buttons.append([])  #add new row if not
				last_buttons.append(null)  #keep track of the last button for this new row
			buttons[row].append(button)  #add the button to its row
			button.pressed.connect(_on_button_pressed.bind(row, i % 4)) #track that a button is pressed and which by finding row and column
			

func _on_button_pressed(row, column):
	var pressed_button = buttons[row][column] #exact button pressed
	if last_buttons[row] == pressed_button: #checks if same as current pressed button
		reset_row(row)  #reset buttons if button pressed again
		last_buttons[row] = null  #no last buttons pressed in this row
	else:
		reset_row(row) #reset in case disabled
		for button in buttons[row]:
			button.set_disabled(true)  #turn all buttons off except the one you just pressed
		pressed_button.set_disabled(false) #pressed button stay enabled
		last_buttons[row] = pressed_button  #remember which button pressed

func reset_row(row):
	for button in buttons[row]:
		button.set_disabled(false) #enable buttons again
