
if(!crashed)
{
	audio_play_sound(snd_mancrash, 1, false);	
}
crashed = true;
other.spd = 0;

lose_game();