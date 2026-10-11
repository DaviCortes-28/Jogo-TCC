//iniciar variaveis no create

	//controles sem valor (pra pegar do user)
	up = noone;
	down = noone;
	left = noone;
	right = noone;
	
	//variaveis de movimento 
		//iniciando parado
		velh = 0;	//horizontal
		velv = 0;	//vertical
	
		//velocidade do jogador
		vel = 2;
		
	//iniciando direcao do sprite
	dir = "down"
	
window_set_fullscreen(true);

// Se veio de uma porta, nasce na posição definida por ela
if (variable_global_exists("spawn_x") && global.spawn_x != undefined) {
    x = global.spawn_x;
    y = global.spawn_y;
    global.spawn_x = undefined;
    global.spawn_y = undefined;
}


