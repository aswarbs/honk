// Step Event of obj_car

if(keyboard_check(ord("W")) || keyboard_check(ord("S")))
{
	// Forwards and Backwards
	if (keyboard_check(ord("W")))
	{
	    speed += acceleration;
	}
	if (keyboard_check(ord("S")))
	{
	    speed -= acceleration;
	}

	// Clamp speed between min/max
	speed = clamp(speed, -max_speed, max_speed);

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
else
{
	speed = speed * friction_constant;
}
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
