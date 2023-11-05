if (state != 101)
    image_xscale = 1
if (image_xscale == 1 && grounded && obj_player.state != (90 << 0) && obj_player.state != (36 << 0))
    x += 2
if (image_xscale == -1 && grounded && obj_player.state != (90 << 0) && obj_player.state != (36 << 0))
    x -= 2
