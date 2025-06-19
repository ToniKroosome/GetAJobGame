extends Node2D

var name := ""
var dialogue := []
var current_line := 0

func talk():
    if current_line < dialogue.size():
        var line = dialogue[current_line]
        current_line += 1
        return line
    current_line = 0
    return ""
