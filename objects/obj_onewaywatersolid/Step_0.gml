if (obj_player.state != 63 && obj_player.state != 83 && obj_player.state != (117 << 0))
{
    instance_destroy()
    if instance_exists(obj_watertop)
        obj_watertop.created = 0
    if instance_exists(obj_minecartrail)
        obj_minecartrail.created = 0
}
