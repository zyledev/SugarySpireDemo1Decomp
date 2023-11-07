var target = obj_player;
var _cam_x = (target.x - (camera_get_view_width(view_camera[0]) / 2));
var _cam_y = (target.y - (camera_get_view_height(view_camera[0]) / 2));
_cam_x = clamp(_cam_x, 0, (room_width - camera_get_view_width(view_camera[0])));
_cam_y = clamp(_cam_y, 0, (room_height - camera_get_view_height(view_camera[0])));
camera_set_view_pos(view_camera[0], _cam_x, _cam_y);
with (obj_camera)
{
    shake_mag = 0;
    shake_mag_acc = 0;
}
if (global.panic && global.panicbg)
    scr_panicbg_init();
global.wave = (global.maxwave - (((global.minutes * 60) + global.seconds) * 60));
scr_escapebgs();
