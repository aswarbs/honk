/// @description Insert description here
// You can write your code in this editor
draw_self();
if(crashed)
{
	step_delay_after_crash = step_delay_after_crash - 1;
	if(step_delay_after_crash < 0)
	{
		room_goto(rm_lose);	
	}
}