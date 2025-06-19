extends Node2D

const GRID_WIDTH := 5
const GRID_HEIGHT := 5
const TILE_SIZE := 32

var tiles = []

func _ready():
    var tile_scene = preload("res://FarmTile.tscn")
    for y in range(GRID_HEIGHT):
        tiles.append([])
        for x in range(GRID_WIDTH):
            var tile = tile_scene.instantiate()
            tile.position = Vector2(x * TILE_SIZE, y * TILE_SIZE)
            add_child(tile)
            tiles[y].append(tile)
