function scr_music() {
audio_stop_all()
var snd = argument[irandom((argument_count - 1))]
global.music = audio_play_sound(snd, 1, true)
audio_sound_gain(global.music, 0.6, 1)

}