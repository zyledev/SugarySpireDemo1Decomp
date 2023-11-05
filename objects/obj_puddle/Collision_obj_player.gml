if (sprite_index == spr_juicepuddledone && other.grounded)
{
    obj_player.image_index = 0
    obj_player.image_speed = 0.35
    obj_player.sprite_index = spr_player_slipnslidestart
    obj_player.state = 108
    obj_player.vsp = -11
    obj_player.grounded = 0
    instance_destroy()
}
