function approach(argument0, argument1, argument2) //gml_Script_approach
{
    return (argument0 + clamp((argument1 - argument0), (-argument2), argument2));
}

function chance(argument0) //gml_Script_chance
{
    return argument0 > random(1);
}

function wave(argument0, argument1, argument2, argument3) //gml_Script_wave
{
    var a4 = ((argument1 - argument0) * 0.5)
    return ((argument0 + a4) + (sin(((((current_time * 0.001) + (argument2 * argument3)) / argument2) * (2 * pi))) * a4));
}

function wrap(argument0, argument1, argument2) //gml_Script_wrap
{
    var value = floor(argument0)
    var _min = floor(min(argument1, argument2))
    var _max = floor(max(argument1, argument2))
    var range = ((_max - _min) + 1)
    return (((((value - _min) % range) + range) % range) + _min);
}

function animation_end(argument0, argument1) //gml_Script_animation_end
{
    if (argument0 == undefined)
        argument0 = floor(image_index)
    if (argument1 == undefined)
        argument1 = (image_number - 1)
    return argument0 >= argument1;
}

function rank_checker(argument0) //gml_Script_rank_checker
{
    if (argument0 == undefined)
        argument0 = global.rank
    value = 0
    switch argument0
    {
        case "e":
            value = 6
            break
        case "s":
            value = 4
            break
        case "a":
            value = 3
            break
        case "b":
            value = 2
            break
        case "c":
            value = 1
            break
        case "d":
            value = 0
            break
    }

    return value;
}

