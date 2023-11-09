with (other.id)
{
    x = other.x
    y = (other.y + (other.sprite_height - 46))
    if (!instance_exists(obj_fadeout))
    {
        obj_player.targetDoor = other.targetDoor;
		obj_player.targetRoom = rm_missing;
		if variable_instance_exists(id, "targetRoom")
			obj_player.targetRoom = other.targetRoom;
        obj_player.hallway = 1;
		obj_player.vertical = 0;
        obj_player.hallwaydirection = other.image_xscale;
        obj_player.x = obj_player.x;
        obj_player.y = obj_player.y;
        other.visited = 1;
        image_index = 0;
        instance_create(x, y, obj_fadeout);
    }
}
