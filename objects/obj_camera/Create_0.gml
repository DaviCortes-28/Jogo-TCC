// Pega a view ativa da room (geralmente view 0)
camera = view_camera[0];

// Tamanho da view (deve bater com o que está configurado na room)
cam_w = camera_get_view_width(camera);
cam_h = camera_get_view_height(camera);

// Velocidade de suavização (quanto menor, mais suave/lento; quanto maior, mais rápido/direto)
cam_lerp_speed = 0.1;