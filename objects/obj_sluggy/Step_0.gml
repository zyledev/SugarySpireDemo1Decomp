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
        scr_pizzagoblin_throw()
        break
    case 101:
        scr_enemy_grabbed()
        break
    case 102:
        scr_enemy_scared()
        break
    case 200:
        scr_enemy_slugidle()
        break
    case 201:
        scr_enemy_slugjump()
        break
    case 202:
        scr_enemy_slugparry()
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
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
if (obj_player.state == (83 << 0))
    jumptimer = 0
if (state != 86 && state != 98 && state != 101 && state != 200 && state != 201 && state != 202 && idletimer > 0)
    idletimer--
if (state != 86 && state != 98 && state != 101 && state != 200 && state != 201 && state != 202 && jumptimer > 0)
    jumptimer--
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
    if (state != 86 && state != 98 && state != 101 && state != 200 && state != 201 && state != 202 && jumptimer == 0)
    {
        image_xscale = (-(sign((x - obj_player.x))))
        state = 201
        jumptimer = 100
        sprite_index = spr_sluggy_jumpstart
        image_index = 0
        hsp = 0
        vsp = 0
        movespeed = 0
    }
}
