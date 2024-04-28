// Step Event of obj_car
if(crashed)
{
	if audio_is_playing(snd_reverse) audio_stop_sound(snd_reverse);
	speed = 0;
	return;
}

if(keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	// Forwards and Backwards
	if (keyboard_check(ord("W")))
	{
	    speed += acceleration;
		if audio_is_playing(snd_reverse) audio_stop_sound(snd_reverse);
		
		
		// Turn only if going forward/backwards
		if (keyboard_check(ord("D")))
		{
		    direction -= turning_speed;
			image_angle -= turning_speed;
		}
		if (keyboard_check(ord("A")))
		{
		    direction += turning_speed;
			image_angle += turning_speed;
		}
	}
	if (keyboard_check(ord("S")))
	{
	    speed -= acceleration;
		
		// Play reverse sound
		if !audio_is_playing(snd_reverse)
		{
			audio_play_sound(snd_reverse, 1, true);
		}
		
		// Inverse Turning on reverse.
		if (keyboard_check(ord("D")))
		{
		    direction += turning_speed;
			image_angle += turning_speed;
		}
		if (keyboard_check(ord("A")))
		{
		    direction -= turning_speed;
			image_angle -= turning_speed;
		}
	}

	// Clamp speed between min/max
	speed = clamp(speed, -(max_speed/2), max_speed);
}
else
{
	if audio_is_playing(snd_reverse) audio_stop_sound(snd_reverse);
	speed = speed * friction_constant;
}
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);



block = instance_place(x, y, o_parkspace);
if (instance_exists(block))
{
    x1 = bbox_left;
    y1 = bbox_top;
    x2 = bbox_right;
    y2 = bbox_bottom;
    x3 = block.bbox_left;
    y3 = block.bbox_top;
    x4 = block.bbox_right;
    y4 = block.bbox_bottom;
    if (rectangle_in_rectangle(x1, y1, x2, y2, x3, y3, x4, y4) == 1) // Only true if you're completely inside a block
    {
        end_level();
    }
}