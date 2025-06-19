extends Node

## Manages global player stats and day progression.
signal stats_changed

var money := 1000
var energy := 100
var happiness := 50
var day := 1
var current_job := null

func _ready():
    # Optional: Initialize or print state
    pass

func change_money(amount: int) -> void:
    money += amount
    emit_signal("stats_changed")

func change_energy(amount: int) -> void:
    energy = clamp(energy + amount, 0, 100)
    emit_signal("stats_changed")

func change_happiness(amount: int) -> void:
    happiness = clamp(happiness + amount, 0, 100)
    emit_signal("stats_changed")

func next_day() -> void:
    day += 1
    energy = 100
    emit_signal("stats_changed")
