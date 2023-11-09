function scr_initinput()
{
    ini_open("saveData.ini")
    global.key_up = ini_read_string("ControlsKeys", "up", vk_up);
    global.key_right = ini_read_string("ControlsKeys", "right", vk_right);
    global.key_left = ini_read_string("ControlsKeys", "left", vk_left);
    global.key_down = ini_read_string("ControlsKeys", "down", vk_down);
    global.key_jump = ini_read_string("ControlsKeys", "jump", ord("Z"));
    global.key_slap = ini_read_string("ControlsKeys", "slap", ord("X"));
    global.key_taunt = ini_read_string("ControlsKeys", "taunt", ord("C"));
    global.key_shoot = ini_read_string("ControlsKeys", "shoot", ord("A"));
    global.key_attack = ini_read_string("ControlsKeys", "attack", vk_shift);
    global.key_start = ini_read_string("ControlsKeys", "start", vk_escape);
    global.key_special = ini_read_string("ControlsKeys", "special", 86); // i have no clue what the rest are so i'll just leave them as is
    global.key_upC = ini_read_string("ControllerButton", "up", 32781);
    global.key_rightC = ini_read_string("ControllerButton", "right", 32784);
    global.key_leftC = ini_read_string("ControllerButton", "left", 32783);
    global.key_downC = ini_read_string("ControllerButton", "down", 32782);
    global.key_jumpC = ini_read_string("ControllerButton", "jump", 32769);
    global.key_slapC = ini_read_string("ControllerButton", "slap", 32771);
    global.key_tauntC = ini_read_string("ControllerButton", "taunt", 32772);
    global.key_shootC = ini_read_string("ControllerButton", "shoot", 32770);
    global.key_attackC = ini_read_string("ControllerButton", "attack", 32774);
    global.key_startC = ini_read_string("ControllerButton", "start", 32778);
    global.key_specialC = ini_read_string("ControllerButton", "special", 32773);
    ini_close()
}

function scr_resetinput()
{
    ini_open("saveData.ini");
    ini_write_string("ControlsKeys", "up", vk_up);
    ini_write_string("ControlsKeys", "right", vk_right);
    ini_write_string("ControlsKeys", "left", vk_left);
    ini_write_string("ControlsKeys", "down", vk_down);
    ini_write_string("ControlsKeys", "jump", ord("Z"));
    ini_write_string("ControlsKeys", "slap", ord("X"));
    ini_write_string("ControlsKeys", "taunt", ord("C"));
    ini_write_string("ControlsKeys", "shoot", ord("A"));
    ini_write_string("ControlsKeys", "attack", vk_shift);
    ini_write_string("ControlsKeys", "start", vk_escape);
    ini_write_string("ControlsKeys", "special", 86);
    ini_write_string("ControllerButton", "up", 32781);
    ini_write_string("ControllerButton", "right", 32784);
    ini_write_string("ControllerButton", "left", 32783);
    ini_write_string("ControllerButton", "down", 32782);
    ini_write_string("ControllerButton", "jump", 32769);
    ini_write_string("ControllerButton", "slap", 32771);
    ini_write_string("ControllerButton", "taunt", 32772);
    ini_write_string("ControllerButton", "shoot", 32770);
    ini_write_string("ControllerButton", "attack", 32774);
    ini_write_string("ControllerButton", "start", 32778);
    ini_write_string("ControllerButton", "special", 32773);
    scr_initinput();
    ini_close();
}

