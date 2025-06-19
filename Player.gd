extends CharacterBody2D

var speed := 100

@onready var job_board := get_parent().get_node("JobBoard")
@onready var gm := get_node("/root/GameManager")

func _physics_process(delta):
    var input_vector = Vector2.ZERO
    if Input.is_action_pressed("ui_right"):
        input_vector.x += 1
    if Input.is_action_pressed("ui_left"):
        input_vector.x -= 1
    if Input.is_action_pressed("ui_down"):
        input_vector.y += 1
    if Input.is_action_pressed("ui_up"):
        input_vector.y -= 1
    velocity = input_vector.normalized() * speed
    move_and_slide()

    if Input.is_action_just_pressed("ui_accept"):
        var listing = job_board.get_listing_near(position)
        if listing:
            listing.interact()
