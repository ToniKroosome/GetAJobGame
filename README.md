# GetAJobGame

This repository contains a small Godot 4 prototype for a job-searching
life simulator. The player can move around and interact with a simple
`JobBoard` of listings. Autoload scripts (`GameManager.gd`,
`LocationManager.gd`, and `Calendar.gd`) provide basic structure while
`Main.tscn` loads a minimal scene.

Open the project in Godot 4 and press **Play**. Use the arrow keys to move
the player toward one of the job listings. Press the **Space** key while
standing next to a listing to interact. Each interaction progresses the
application from applying to interviewing, hiring, and finally working the
job for a small salary. A simple HUD at the top left shows money,
energy, happiness, the current day, and your current job once hired.
