depth = 4
if(!variable_instance_exists(id, "panic_flip"))
	panic_flip = 0
if (panic_flip == 1 && global.panic)
    image_xscale *= -1
