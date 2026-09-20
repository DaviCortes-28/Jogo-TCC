// Posição alvo = centralizar a câmera no player
var _target_x = obj_player.x - cam_w / 2;
var _target_y = obj_player.y - cam_h / 2;

// Suavização (lerp)
var _cam_x = lerp(camera_get_view_x(camera), _target_x, cam_lerp_speed);
var _cam_y = lerp(camera_get_view_y(camera), _target_y, cam_lerp_speed);

// Trava/centraliza conforme o tamanho da room em relação à view (eixo X)
if (room_width > cam_w) {
    _cam_x = clamp(_cam_x, 0, room_width - cam_w);
} else {
    _cam_x = room_width / 2 - cam_w / 2;
}

// Trava/centraliza conforme o tamanho da room em relação à view (eixo Y)
if (room_height > cam_h) {
    _cam_y = clamp(_cam_y, 0, room_height - cam_h);
} else {
    _cam_y = room_height / 2 - cam_h / 2;
}

// Arredonda pra evitar tremedeira em pixel art
_cam_x = floor(_cam_x);
_cam_y = floor(_cam_y);

camera_set_view_pos(camera, _cam_x, _cam_y);