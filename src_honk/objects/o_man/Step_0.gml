// Move in the current direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Randomly alter the current direction
var _r = random_range(-10, 10);
direction += _r;
image_angle += _r;

// Optional: Keep the object within the room boundaries
x = clamp(x, 20, room_width - 20);
y = clamp(y, 20, room_height - 20);