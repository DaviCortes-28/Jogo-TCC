if (place_meeting(x, y, obj_player) && target_room != noone) {
    global.spawn_x = target_x;
    global.spawn_y = target_y;
    room_goto(target_room);
}