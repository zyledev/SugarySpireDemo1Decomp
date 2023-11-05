function scr_slopeangle_player(argument0, argument1) //gml_Script_scr_slopeangle_player
{
    var array = 0
    var checkside = -1
    var height = (sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index))
    var top = -3
    var i = 0
    array[0] = argument1
    array[1] = argument1
    while (i < 2)
    {
        while (top < height)
        {
            array[i] = argument1
            var check_1 = scr_solid_player((argument0 + (1 * checkside)), (argument1 + top))
            var check_2 = (!(scr_solid_player((argument0 + (1 * checkside)), ((argument1 + top) - 1))))
            if (check_1 && check_2)
            {
                var sex = ((argument1 + top) - 1)
                array[i] = sex
                break
            }
            else
            {
                top++
                continue
            }
        }
        checkside = (!checkside)
        i++
    }
    var pointer1 = array[0]
    var pointer2 = array[1]
    var _angle = 0
    if (pointer1 != pointer2)
        _angle = point_direction((argument0 - 1), pointer1, (argument0 + 1), pointer2)
    return _angle;
}

function scr_slopeangle(argument0, argument1) //gml_Script_scr_slopeangle
{
    array = 0
    checkside = -1
    height = (sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index))
    top = -3
    i = 0
    array[0] = argument1
    array[1] = argument1
    while (i < 2)
    {
        while (top < height)
        {
            array[i] = argument1
            check_1 = scr_solid((argument0 + (1 * checkside)), (argument1 + top))
            check_2 = (!(scr_solid((argument0 + (1 * checkside)), ((argument1 + top) - 1))))
            if (check_1 && check_2)
            {
                sex = ((argument1 + top) - 1)
                array[i] = sex
                break
            }
            else
            {
                top++
                continue
            }
        }
        checkside = (!checkside)
        i++
    }
    pointer1 = array[0]
    pointer2 = array[1]
    _angle = 0
    if (pointer1 != pointer2)
        _angle = point_direction((argument0 - 1), pointer1, (argument0 + 1), pointer2)
    return _angle;
}

