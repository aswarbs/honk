/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_text(x, y, "mE!");
draw_text(t_x, t_y, "TARGET");

if (variable_instance_exists(self, "instance_array"))
{
	for (var i = 0; i < array_length(instance_array); i++;)
	{
		var _id = instance_array[i];
		draw_text(_id.x, _id.y, string(i));
	}
}