# 3DSpritesWithShadersDemo
A demo project that demonstrations how to apply shaders to Sprite3D's in Godot.
As of Godot 4.2, shaders do not work on Sprites3D as they would with Sprites2D.
This project demonstrates how to make them work! 

**Quick Breakdown:**
Instead of using a Sprite3D, the fix instead uses a Sprite2D, which is the child of a subviewport. 
That subviewport is then set as the Albedo texture of a MeshInstance3D's Material Override property.
A plane is set as the mesh, orientated to the Z axis and has Bilboarding turned on within the Material.

(NOTE: Use CanvasItem Shaders instead of Spatial. You can find a ton of free shaders here: https://godotshaders.com/)

Here is a screenshot of the fix. A color gradient shader is applied in this scene:

![image](https://github.com/calham-21/3DSpritesWithShadersDemo/assets/148737596/fd35b196-aa46-4e4f-81f1-cfefbd518c3c)



And here was the original asset this shader is applied too:

![anim_spr](https://github.com/calham-21/3DSpritesWithShadersDemo/assets/148737596/ad9a3828-6e34-47b1-85f5-e2f52f63c8e8)


Until Sprite3D's are able to support shader's natively, this fix will do the job for older versions without overcomplicated shader magic.
