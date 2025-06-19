extends Node2D

enum State { UNTILLED, TILLED, PLANTED, GROWN }
var state : State = State.UNTILLED

func _ready():
    update()

func _draw():
    var color = Color(0.4, 0.3, 0.1)
    match state:
        State.TILLED:
            color = Color(0.5, 0.4, 0.2)
        State.PLANTED:
            color = Color(0.2, 0.6, 0.2)
        State.GROWN:
            color = Color(0.1, 0.8, 0.1)
    draw_rect(Rect2(Vector2.ZERO, Vector2(32, 32)), color)

func till():
    if state == State.UNTILLED:
        state = State.TILLED
        update()

func plant():
    if state == State.TILLED:
        state = State.PLANTED
        update()

func grow():
    if state == State.PLANTED:
        state = State.GROWN
        update()
