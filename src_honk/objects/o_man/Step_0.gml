// Step Event of the object

if((!variable_instance_exists(self, "instance_array")))
{
	instance_array = [];
	for (var i = 0; i < instance_number(o_boid_waypoint); i++;)
	{
	    instance_array[i] = instance_find(o_boid_waypoint, i);
	}
}
else
{
	// Calculate distance to the current target waypoint
	var _id = instance_array[current_waypoint];
	t_x = _id.x;
	t_y = _id.y;
	
	var _dist = point_distance(x, y, t_x, t_y);
	if(_dist < 30)
	{
		current_waypoint = (current_waypoint + 1) mod (array_length(instance_array))
	}
}

image_angle = (point_direction(x, y, t_x, t_y) - 90);
if (x < t_x) x += spd;
if (x > t_x) x -= spd;
if (y < t_y) y += spd;
if (y > t_y) y -= spd;
