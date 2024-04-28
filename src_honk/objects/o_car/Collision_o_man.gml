
if(!crashed)
{
	audio_play_sound(snd_mancrash, 1, false);	
}
crashed = true;
instance_destroy(other);

lose_game();