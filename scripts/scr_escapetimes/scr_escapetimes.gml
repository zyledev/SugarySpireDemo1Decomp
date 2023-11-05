var time_array;
function scr_escapetimes(argument0) //gml_Script_scr_escapetimes
{
    if (argument0 == undefined)
        argument0 = room
    var seconds = 0
    var minutes = 0
    switch argument0
    {
        case 78:
            minutes = 4
            seconds = 0
            break
        case 49:
            minutes = 2
            seconds = 30
            break
        case 51:
            minutes = 3
            seconds = 0
            break
        case 32:
            minutes = 5
            seconds = 0
            break
        default:
            minutes = 0
            seconds = 10
            break
    }

    time_array[0] = minutes
    time_array[1] = seconds
    return time_array;
}

