// Movimento horizontal, com checagem de colisão
if (!place_meeting(x + velh, y, obj_wall)) {
    x += velh;
}

// Movimento vertical, com checagem de colisão
if (!place_meeting(x, y + velv, obj_wall)) {
    y += velv;
}