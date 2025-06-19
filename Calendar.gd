extends Node

# Tracks in-game date and triggers daily events.
var current_day := 1
var current_month := 1
var current_year := 1

func next_day():
    current_day += 1
    if current_day > 30:
        current_day = 1
        current_month += 1
    if current_month > 12:
        current_month = 1
        current_year += 1
