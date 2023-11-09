function scr_array_contains(argument0, argument1) //scr_array_contains
{
    var arr = argument0
    var item = argument1
    for (var i = 0; i < array_length(argument0); i++)
    {
        if (arr[i] == item)
            return 1;
    }
    return 0;
}



var i = 0;
while room_exists(i)
{
    global.roomlist[i] = room_get_name(i);
    i++
}
function sh_escape(args) //gml_Script_sh_escape
{
    var arg0 = string(args[1]);
    var arg1 = args[2];
    var arg2 = args[3];
    switch arg0
    {
        case "true":
        case "1":
            arg0 = 1;
            break
        case "false":
        case "0":
            arg0 = 0;
            break
        default:
            arg0 = (!global.panic);
            break
    }

    global.panic = arg0;
    global.minutes = real(string_digits(arg1));
    global.seconds = real(string_digits(arg2));
    global.wave = 0;
    global.maxwave = (((global.minutes * 60) + global.seconds) * 60);
    if (global.panicbg == 1)
        scr_panicbg_init();
    obj_camera.alarm[1] = 60;
    if (!instance_exists(obj_panicchanger))
        instance_create(x, y, obj_panicchanger);
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

function sh_toggle_collisions(args) //gml_Script_sh_toggle_collisions
{
    var arg1 = args[1];
    switch arg1
    {
        case "true":
        case "1":
            arg1 = true;
            break
        case "false":
        case "0":
            arg1 = false;
            break
        default:
            arg1 = (!global.showcollisions);
            break
    }

    global.showcollisions = arg1;
    toggle_collision_function();
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
        global.showcollisionarray[i++] = 83;
        global.showcollisionarray[i++] = 165;
        global.showcollisionarray[i++] = 193;
        global.showcollisionarray[i++] = 196;
        global.showcollisionarray[i++] = 77;
        global.showcollisionarray[i++] = 13;
        global.showcollisionarray[i++] = 32;
        global.showcollisionarray[i++] = 171;
        global.showcollisionarray[i++] = 53;
        global.showcollisionarray[i++] = 26;
        global.showcollisionarray[i++] = 30;
        global.showcollisionarray[i++] = 1;
        global.showcollisionarray[i++] = 168;
        global.showcollisionarray[i++] = 169;
        global.showcollisionarray[i++] = 170;
        global.showcollisionarray[i++] = 55;
        global.showcollisionarray[i++] = 42;
        global.showcollisionarray[i++] = 29;
    }
    var array = global.showcollisionarray;
    var length = array_length(array);
    for (var i = (length - 1); i >= 0; i--)
    {
        with (array[i])
        {
            if (object_index == array[i])
            {
                visible = global.showcollisions;
                image_alpha = 0.6;
            }
        }
    }
}

function sh_toggle_debugmode(args) //gml_Script_sh_toggle_debugmode
{
    var arg1 = args[1];
    switch arg1
    {
        case "true":
        case "1":
            arg1 = 1;
            break
        case "false":
        case "0":
            arg1 = 0;
            break
        default:
            arg1 = (!global.debugmode);
            break
    }

    global.debugmode = arg1;
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

function sh_room_goto(args) //gml_Script_sh_room_goto
{
    var arg1 = asset_get_index(args[1]);
    var arg2 = args[2];
    if (asset_get_type(args[1]) != 3)
        return ("Can't find room " + string(args[1]));;
    if (asset_get_type(args[1]) == 3)
    {
        obj_player.targetRoom = arg1;
        obj_player.targetDoor = arg2;
        instance_create(0, 0, obj_fadeout);
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

function sh_instance_create(args) //gml_Script_sh_instance_create
{
    instance_create(args[1], args[2], asset_get_index(args[3]));
}

function meta_instance_create() //gml_Script_meta_instance_create
{
    return 
    {
        description: "create an object",
        arguments: ["<x>", "<y>", "<object>"],
        suggestions: [[mouseArgumentType.worldX], [mouseArgumentType.worldY], []],
        argumentDescriptions: ["the X coordinate to create the object at", "the Y coordinate to create the object at", "the object to create"]
   };
}

function sh_setvar(args) 
{
	var arg1 = args[1]; // object
	var arg2 = args[2]; // varname
	var arg3 = args[3]; // value
	var arg4 = args[4]; // type
	var arg5 = args[5]; // array index (-1 for not array)
	if (arg5 == undefined)
		arg5 = "-1";
	if (object_exists(asset_get_index(arg1)) || arg1 == "global")
	{
		if arg1 == "global"
		{
			var value = arg3;
			switch arg4
			{
				case "asset":
					value = asset_get_index(value);
				break;
					
				case "string":
				case "":
				break;
		
				case "real":
				case "bool":
					if value == "true"
						value = 1;
					if value == "false"
						value = 0;
					value = real(value);
				break;
			}
			if arg5 != "-1"
			{
				var myglobal = variable_global_get(arg2);
				if (arg4 == "bool" && value == 2) {
					myglobal[arg5] = !myglobal[arg5];
				} else {
					myglobal[arg5] = value;
				}
				// pixelfox here. who the fuck mangled my code beyond comprehension
				variable_global_set(arg2, myglobal[arg5]);
			}
			else {
				if (arg4 == "bool" && value == 2) {
					variable_global_set(arg2, !variable_global_get(arg2));
				} else {
					variable_global_set(arg2, value);
				}
			}
		}
		else
		{
			with(asset_get_index(arg1))
			{
				var value = arg3;
				switch arg4
				{
					case "asset":
						value = asset_get_index(value);
					break;
					
					case "string":
					case "":
					break;
			
					case "real":
					case "bool":
						if value == "true"
							value = 1;
						if value == "false"
							value = 0;
						if value == "toggle"
							value = 2;
						value = real(value);
					break;
				}
				if arg5 != "-1"
				{
					var myvar = variable_global_get(arg2)
					if (arg4 == "bool" && value == 2) {
						myvar[arg5] = !myglobal[arg5];
					} else {
						myvar[arg5] = value;
					}
					variable_instance_set(id, arg2, myvar[arg5]);
				}
				else {
					if (arg4 == "bool" && value == 2) {
						variable_instance_set(id, arg2, !variable_instance_get(id, arg2));
					} else {
						variable_instance_set(id, arg2, value);
					}
				}
			}
		}
	}
}
function meta_setvar() 
{
	return {
		description: "Sets a global/object variable",
		arguments: ["object", "variable", "value", "type"],
		suggestions: [
			function() {
				var _objs = ["global", "obj_player"]
				for (var i = 0; i < instance_count; i ++;)
				{
				    with (instance_id[i])
						if (object_get_name(object_index) != "obj_player" && !scr_array_contains(_objs, object_get_name(object_index)))
							array_push(_objs, object_get_name(object_index));
				}
				return _objs;
			},
			[],
			["0", "1", "true", "false"],
			["string", "real", "bool", "asset"],
			["-1"]
		],
		argumentDescriptions: [
			"Name of the object or 'global'",
			"Name of the variable",
			"Value to set the variable to",
			"The type of the value. String for text, real for numbers, bool for true or false, asset for sprites, objects, rooms etc"
		]
	}
}
// pixelfox here, i added setvar since i'm replacing the character change f5 key for the shell, so you can still use this to change your character

function sh_gml(args) {
	var _code = get_string("Input code:", "");
	return live_execute_string(_code);
}
function meta_gml() {
	return {
		description: "Executes a snippet of GML code",
		arguments: ["code"],
		suggestions: [],
		argumentDescriptions: ["Code to run"]
	}
}
// pixelfox here, i added this because it takes literally 5 seconds and it's a great comman
