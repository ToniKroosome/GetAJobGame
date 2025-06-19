extends CanvasLayer

@onready var money_label = $Panel/Money
@onready var energy_label = $Panel/Energy
@onready var day_label = $Panel/Day
@onready var happiness_label = $Panel/Happiness
@onready var job_label = $Panel/Job

func _ready():
    var gm = get_node("/root/GameManager")
    gm.connect("stats_changed", Callable(self, "update_labels"))
    update_labels()

func update_labels():
    var gm = get_node("/root/GameManager")
    money_label.text = "Money: $%d" % gm.money
    energy_label.text = "Energy: %d" % gm.energy
    day_label.text = "Day: %d" % gm.day
    happiness_label.text = "Happiness: %d" % gm.happiness
    job_label.text = gm.current_job != null ? "Job: %s" % gm.current_job.job_title : "Job: None"
