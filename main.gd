extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var cam_feed
	var cam_tex
	print("hello world")
	print("number of feeds: ", str(CameraServer.get_feed_count()))
	cam_feed = CameraServer.get_feed(0)
	print("feed name:", cam_feed.get_name())
	print("feed id:", cam_feed.get_id())

	#print("feed active:" ,cam_feed.feed_is_active())
	
#	var spamat:SpatialMaterial = $CSGSphere.material

	#var camtex:CameraTexture = $CSGSphere.material.albedo_texture
	#camtex.set_camera_active(true)
	
	var camtex:CameraTexture = $MeshInstance.get_surface_material(0).albedo_texture
	camtex.set_camera_active(true)
	
	
	
	
	#cam_tex = CameraTexture.set_feed_id(cam_feed.get_id())
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
