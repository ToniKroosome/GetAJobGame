extends Node2D

# Displays available jobs on a simple grid.
const GRID_WIDTH := 5
const GRID_HEIGHT := 1
const TILE_SIZE := 64

var listings = []

func _ready():
    var listing_scene = preload("res://JobListing.tscn")
    for x in range(GRID_WIDTH):
        var listing = listing_scene.instantiate()
        listing.position = Vector2(x * TILE_SIZE, 0)
        listing.job_title = "Job %d" % (x + 1)
        listing.salary = 100 + x * 50
        add_child(listing)
        listings.append(listing)

func get_listing_near(pos: Vector2) -> Node:
    for listing in listings:
        if listing.position.distance_to(pos) < TILE_SIZE / 2:
            return listing
    return null
