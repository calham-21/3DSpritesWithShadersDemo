##----------------PROBLEM------------------
## As of Godot 4.2, shaders do not work on Sprites3D as they would with Sprites2D.
## This scene is an example of what any old Sprite3D may look like in a project before applying the fix.

##----------------DEMONSTRATION------------------
## In this scene, there is an AnimatedSprite3D and Sprite3D. If you were to try
## and attach any shader to either sprites Material Override property within the Geometry tab,
## you will be presented with a blank white square. Obviously this is undesirable,
## but an easy work-around can be done without insane code logic and shader magic.
## You can see how on the after scene, or if you just read the reddit post, then who cares.

extends Node3D

@onready var spr: Sprite3D = $Sprite3D
@onready var anim_spr: AnimatedSprite3D = $AnimatedSprite3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	anim_spr.play("Spin")
