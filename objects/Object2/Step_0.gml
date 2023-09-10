if (keyboard_check(vk_right)) {
    move_x = move_speed;
} else if (keyboard_check(vk_left)) {
    move_x = -move_speed;
} else {
    move_x = 0;
}

move_x = move_x * move_speed;

if (place_meeting(x, y + 2, obj_object1)) {
    move_y = 0;
    if (keyboard_check(vk_space)) move_y = -jump_speed;
} else if (move_y < 10) {
    move_y += 1;
}

move_and_collide(move_x, move_y, obj_object1);

if (move_x != 0) {
    image_xscale = sign(move_x);
}