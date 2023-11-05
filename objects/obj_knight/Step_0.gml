switch state
{
    case 86:
        scr_enemy_idle()
        break
    case 88:
        scr_enemy_charge()
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
    case (9999999 << 0):
        scr_enemy_inhaled()
        break
}

if (point_in_circle(x, y, (obj_player.x + (75 * obj_player.xscale)), obj_player.y, 125) && obj_player.inhaling && state != (9999999 << 0))
    state = (9999999 << 0)
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
if (hitboxcreate == 0 && state == 94)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
    depth = -1
}
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
if (boundbox == 0 && state != (9999999 << 0))
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
    if (state != 102 && (obj_player.state == (83 << 0) || obj_player.state == (999 << 0)))
    {
        state = 102
        sprite_index = scaredspr
        if (x != obj_player.x)
            image_xscale = (-(sign((x - obj_player.x))))
        movespeed = 0
        hsp = 0
        image_index = 0
    }
}
