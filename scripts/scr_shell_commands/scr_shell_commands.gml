var i = entryway_2
while room_exists(i)
{
    global.roomlist[i] = room_get_name(i)
    i++
}
function sh_escape(argument0) //gml_Script_sh_escape
{
    var arg0 = string(argument0[1])
    var arg1 = argument0[2]
    var arg2 = argument0[3]
    switch arg0
    {
        case "true":
        case "1":
            arg0 = 1
            break
        case "false":
        case "0":
            arg0 = 0
            break
        default:
            arg0 = (!global.panic)
            break
    }

    global.panic = arg0
    global.minutes = real(string_digits(arg1))
    global.seconds = real(string_digits(arg2))
    global.wave = 0
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
    if (global.panicbg == 1)
        scr_panicbg_init()
    obj_camera.alarm[1] = 60
    if (!instance_exists(obj_panicchanger))
        instance_create(x, y, obj_panicchanger)
}

function meta_escape() //gml_Script_meta_escape
{
    return 
    {
        description: "activates escape and sets escape time",
        arguments: ["<bool>", "<min>", "<sec>"],
        suggestions: [["true", "false"], [], []],
        argumentDescriptions: ["activate/deactivate escape", "set minutes", "set seconds"]
    };
}

function sh_toggle_collisions(argument0) //gml_Script_sh_toggle_collisions
{
    arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true
            break
        case "false":
        case "0":
            arg1 = false
            break
        default:
            arg1 = (!global.showcollisions)
            break
    }

    global.showcollisions = arg1
    toggle_collision_function()
}

function meta_toggle_collisions() //gml_Script_meta_toggle_collisions
{
    return 
    {
        description: "toggles collision object visibility",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles visibility"]
    };
}

function toggle_collision_function() //gml_Script_toggle_collision_function
{
    if (!variable_global_exists("showcollisionarray"))
    {
        i = 0
        global.showcollisionarray[i++] = 83
        global.showcollisionarray[i++] = 165
        global.showcollisionarray[i++] = 193
        global.showcollisionarray[i++] = 196
        global.showcollisionarray[i++] = 77
        global.showcollisionarray[i++] = 13
        global.showcollisionarray[i++] = 32
        global.showcollisionarray[i++] = 171
        global.showcollisionarray[i++] = 53
        global.showcollisionarray[i++] = 26
        global.showcollisionarray[i++] = 30
        global.showcollisionarray[i++] = 1
        global.showcollisionarray[i++] = 168
        global.showcollisionarray[i++] = 169
        global.showcollisionarray[i++] = 170
        global.showcollisionarray[i++] = 55
        global.showcollisionarray[i++] = 42
        global.showcollisionarray[i++] = 29
    }
    var array = global.showcollisionarray
    var length = array_length(array)
    for (i = (length - 1); i >= 0; i--)
    {
        with (array[i])
        {
            if (object_index == array[i])
            {
                visible = global.showcollisions
                image_alpha = 0.6
            }
        }
    }
}

function sh_toggle_debugmode(argument0) //gml_Script_sh_toggle_debugmode
{
    arg1 = argument0[1]
    switch arg1
    {
        case "true":
        case "1":
            arg1 = 1
            break
        case "false":
        case "0":
            arg1 = 0
            break
        default:
            arg1 = (!global.debugmode)
            break
    }

    global.debugmode = arg1
}

function meta_toggle_debugmode() //gml_Script_meta_toggle_debugmode
{
    return 
    {
        description: "toggles debugmode",
        arguments: ["<bool>"],
        suggestions: [["true", "false"]],
        argumentDescriptions: ["toggles debugmode"]
    };
}

function sh_room_goto(argument0) //gml_Script_sh_room_goto
{
    arg1 = asset_get_index(argument0[1])
    arg2 = argument0[2]
    if (asset_get_type(argument0[1]) != 3)
        return ("Can't find room " + string(argument0[1]));
    if (asset_get_type(argument0[1]) == 3)
    {
        obj_player.targetRoom = arg1
        obj_player.targetDoor = arg2
        instance_create(0, 0, obj_fadeout)
    }
}

function meta_room_goto() //gml_Script_meta_room_goto
{
    return 
    {
        description: "allows you to go to another room",
        arguments: ["<room>", "<door>"],
        suggestions: [global.roomlist, ["N/A", "A", "B", "C", "D", "E"]],
        argumentDescriptions: ["sets targetRoom", "sets targetDoor"]
    };
}

function sh_instance_create(argument0) //gml_Script_sh_instance_create
{
    instance_create(argument0[1], argument0[2], asset_get_index(argument0[3]))
}

function meta_instance_create() //gml_Script_meta_instance_create
{
    return 
    {
        description: "create an object",
        arguments: ["<x>", "<y>", "<object>"],
        suggestions: [[], [], []],
        argumentDescriptions: ["the X coordinate to create the object at", "the Y coordinate to create the object at", "the object to create"]
    };
}

