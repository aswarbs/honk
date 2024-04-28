/// @description Insert description here
// You can write your code in this editor

// Generate random RGB values
var r = irandom(255); // Random red component
var g = irandom(255); // Random green component
var b = irandom(255); // Random blue component

// Create the color
image_blend = make_color_rgb(r, g, b);

speed = random_range(5,10);
audio_play_sound(snd_engine, 10, true);