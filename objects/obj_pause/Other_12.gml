if (room != rank_room && room != hub_room1 && room != hub_public && room != outer_room1 && room != outer_room2 && room != scootercutsceneidk)
{
    pause = 0
    instance_activate_all()
    room = hub_room1
    with (obj_player)
    {
        scr_characterspr()
        state = 0
    }
    scr_playerreset()
    global.cowboyhat = 0
    obj_tv.tvsprite = spr_tvoff
    obj_player.targetDoor = "A"
}
else if (room == hub_room1 || room == hub_public || room == outer_room1 || room == outer_room2 || room == scootercutsceneidk)
    game_restart()
else
    scr_sound(sound_toppingot)
