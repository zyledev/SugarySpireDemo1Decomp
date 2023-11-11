function scr_confecti_init() //scr_confecti_init
{
    ds_list_add(global.FollowerList, id)
    switch object_index
    {
        case obj_confectichoco:
            spr_idle = spr_chocolate_idle
            spr_run = spr_chocolate_walk
            spr_panic = spr_chocolate_panic
            spr_appear = spr_chocolate_appear
            spr_taunt = spr_chocolate_taunt
            global.chocofollow = 1
            break
        case obj_confecticrack:
            spr_idle = spr_crack_idle
            spr_run = spr_crack_run
            spr_panic = spr_crack_idle
            spr_appear = spr_crack_idle
            spr_taunt = spr_crack_taunt
            global.crackfollow = 1
            break
        case obj_confectiworm:
            spr_idle = spr_gummyworm_idle
            spr_run = spr_gummyworm_walk
            spr_panic = spr_gummyworm_panic
            spr_appear = spr_gummyworm_appear
            spr_taunt = spr_gummyworm_taunt
            global.wormfollow = 1
            break
        case obj_confecticandy:
            spr_idle = spr_candy_idle
            spr_run = spr_candy_walk
            spr_panic = spr_candy_idle
            spr_appear = spr_candy_idle
            spr_taunt = spr_candy_taunt
            global.candyfollow = 1
            break
        default:
            spr_idle = spr_marshmellow_idle
            spr_run = spr_marshemellow_run
            spr_panic = spr_marshmellow_panic
            spr_appear = spr_marshmallow_appear
            spr_taunt = spr_marshmellow_taunt
            global.mallowfollow = 1
            break
    }

}

