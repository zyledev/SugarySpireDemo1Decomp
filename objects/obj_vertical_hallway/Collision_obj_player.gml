if (pos_x == undefined)
    pos_x = other.x;
with (other.id)
{
    x = other.pos_x;
    y = (other.y + ((other.sprite_height / 2) * sign(other.image_yscale)));
    var xpos_difference = point_distance(id.x, 0, other.id.x, 0);
    var xpos = (xpos_difference / other.image_xscale);
    var xpos_offset = (xpos * other.hallwayxscale);
    obj_player.targetDoor = other.targetDoor;
	obj_player.targetRoom = rm_missing;
	if variable_instance_exists(id, "targetRoom")
		obj_player.targetRoom = other.targetRoom;
    obj_player.vertical = 1;
    obj_player.verticaloffset = xpos_offset;
    obj_player.hallwaydirection = sign(other.image_yscale);
    if (!instance_exists(obj_fadeout))
        instance_create(x, y, obj_fadeout);
}
