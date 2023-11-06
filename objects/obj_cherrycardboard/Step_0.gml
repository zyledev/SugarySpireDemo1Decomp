switch state
{
    case 86:
        scr_enemy_idle()
        break
    case 90:
        scr_enemy_turn()
        break
    case 94:
        scr_enemy_walk()
        break
    case 96:
        scr_enemy_land()
        break
    case 97:
        scr_enemy_hit()
        break
    case 98:
        scr_enemy_stun()
        break
    case 89:
        scr_enemy_throw()
        break
    case 101:
        scr_enemy_cherrywait()
        break
    case 110:
        scr_enemy_cherrywait()
        break
    case 200:
        scr_enemy_charcherry()
        break
}

if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 98)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state == 98 || (state == 101 && global.panic == 1))
    instance_destroy();
if (sprite_index != spr_cardboardcherry && global.panic == 0)
    sprite_index = spr_cardboardcherry
