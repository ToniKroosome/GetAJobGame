extends Node

## Manages global player stats and day progression.

signal stats_changed

var money := 1000
var energy := 100
var happiness := 50
var day := 1
var current_job: JobListing = null

func change_money(amount: int):
    money += amount
    emit_signal("stats_changed")

func change_energy(amount: int):
    energy = clamp(energy + amount, 0, 100)
    emit_signal("stats_changed")

func change_happiness(amount: int):
    happiness = clamp(happiness + amount, 0, 100)
    emit_signal("stats_changed")

func next_day():
    day += 1
    energy = 100
    emit_signal("stats_changed")
