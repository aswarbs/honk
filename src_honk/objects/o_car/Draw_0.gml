/// @description Insert description here
// You can write your code in this editor
draw_self();
if(crashed)
{
	step_delay_after_crash = step_delay_after_crash - 1;
	draw_text(x, y, string(step_delay_after_crash))	
	if(step_delay_after_crash < 0)
	{
		room_goto(rm_lose);	
	}
}