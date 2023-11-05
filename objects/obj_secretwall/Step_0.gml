if (place_meeting(x, y, obj_player) || (activated == 1 && mode != 0))
{
    secretalpha = approach(secretalpha, 0, 0.15)
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
        ds_list_add(global.saveroom, id)
        activated = 1
    }
}
else if (mode == 0)
    secretalpha = approach(secretalpha, 1, 0.15)
