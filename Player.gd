extends CharacterBody2D

var speed := 100

# Basic player stats
var money := 1000
var energy := 100
var happiness := 50
var skills := {
    "communication": 1,
    "coding": 1,
    "management": 1
}

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

func apply_to_job(listing):
    if listing.state == listing.State.OPEN and energy > 10:
        listing.apply()
        energy -= 10

func attend_interview(listing):
    if listing.state == listing.State.APPLIED and energy > 15:
        listing.interview()
        energy -= 15

func work_job(listing):
    if listing.state == listing.State.HIRED:
        money += 100
        happiness += 1
        energy -= 20
