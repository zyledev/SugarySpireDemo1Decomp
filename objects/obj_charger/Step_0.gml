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
        scr_enemy_grabbed()
        break
    case 102:
        scr_enemy_scared()
        break
    case 104:
        scr_enemy_charge()
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
var targetplayer = instance_nearest(x, y, obj_player)
if (x != targetplayer.x && grounded)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if (state == 94)
        {
            state = 104
            movespeed = 0
            image_xscale = (-(sign((x - obj_player.x))))
            sprite_index = spr_banana_chargestart
            image_index = 0
        }
    }
}
if (sprite_index == spr_banana_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_banana_charge
if (hitboxcreate == 0 && state == 104 && sprite_index == spr_banana_charge)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        ID = other.id
        image_xscale = other.image_xscale
        x = other.x
        y = other.y
        depth = -1
        sprite_index = spr_chargershitbox
        mask_index = spr_chargershitbox
    }
}
if (state == 94)
{
    movespeed = 0
    hsp = 0
}
