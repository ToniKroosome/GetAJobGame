extends Node2D

# Represents a single job listing the player can interact with.
enum State { OPEN, APPLIED, INTERVIEWED, HIRED }
var state : State = State.OPEN

func _ready():
    update()

func _draw():
    # Use different colors based on the progress of the job application.
    var color = Color(0.4, 0.3, 0.1)
    match state:
        State.APPLIED:
            color = Color(0.2, 0.4, 0.7)
        State.INTERVIEWED:
            color = Color(0.4, 0.6, 0.9)
        State.HIRED:
            color = Color(0.1, 0.8, 0.1)
    draw_rect(Rect2(Vector2.ZERO, Vector2(32, 32)), color)

func apply():
    if state == State.OPEN:
        state = State.APPLIED
        update()

func interview():
    if state == State.APPLIED:
        state = State.INTERVIEWED
        update()

func hire():
    if state == State.INTERVIEWED:
        state = State.HIRED
        update()
