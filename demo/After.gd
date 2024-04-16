
##----------------HOW TO------------------
## In this scene, instead of using Sprite3D's, it uses MeshInstance3D's.
## The Mesh's Material Overide property has a new material. In that material, the Albedo texture is set to a ViewportTexture.
## The ViewportTexture is then set to their child viewport, which has a view of the new sprites in 2D space.

## The viewport size takes up a single frame of animation, and the sprite as a child of the viewport is offsetted
## to be centered within the viewport.

## You can then play the animations for the 2D scene, and they should apply themselves in 3D as the 
## texture for the MeshInstances!

## After all that, you can apply shaders to the 2DSprites and they will carry over into 3D.

##----------------NOTES ------------------
## For AnimatedSprites3D's, you may have one that has a bunch of different animations, and really don't want
## to have to redo all the anims again in a new 2D Node. Luckily, there are two easy way's to skip that.
## 1. Save the SpriteFrames Resource from the AnimSpr3D as something, then apply to AnimSpr2D.
## 2. Copy and paste AnimSpr3D, then right click, go to change type and change to AnimSpr2D. SpriteFramesResource will carry over.

## Some tips for applying this in your own project.
## 1. For some reason, when applying a material as a material for the mesh, the viewport texture does not save locally or when instaniated.
## When applying to material overide, it works. IDK why, but it does lol
## 2. Make sure transparent BG is set to true for the subviewport for... transparancy
## 3. To enable proper bilboarding for the mesh, set Orientation to Face Z, then enable bilboarding in the material overide.
## 4. If texture is still blurry, set sampling to nearest in material overide

## If you are unsure what viewports and viewport texture's are, check out the documentation here: 
## https://docs.godotengine.org/en/stable/tutorials/rendering/viewports.html

extends Node3D

@onready var spr : Sprite2D = $SpriteMesh/SpriteViewport/Sprite2D
@onready var anim_spr : AnimatedSprite2D = $AnimSpriteMesh/AnimSpriteViewport/AnimatedSprite2D


func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	anim_spr.play("Spin")
