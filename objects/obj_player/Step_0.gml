//pegando inputs do player
up	  = (keyboard_check(ord("W")));
down  = (keyboard_check(ord("S")));
right = (keyboard_check(ord("D")));
left  = (keyboard_check(ord("A")));

//agora tem que adicionar os inputs na velocidade la do criar

velv  = (down - up) * vel;
velh  = (right - left) * vel;

// Atualizar direção
if (velh > 0) dir = "right";
if (velh < 0) dir = "left";
if (velv > 0) dir = "down";
if (velv < 0) dir = "up";

//baseado na direcao
switch (dir) {
    case "up":
        sprite_index = Spr_Player_Walking_Up;
        break;

    case "down":
        sprite_index = Spr_Player_Walking_Down;
        break;

    case "left":
        sprite_index = Spr_Player_Walking_Left;
        break;

    case "right":
        sprite_index = Spr_Player_Walking_Right;
        break;
}

//sprite idle quando nenhum input for detectado

if (velh == 0 && velv == 0) {
    image_speed = 0;   // para animação
    image_index = 0;   // volta pro primeiro frame 
} else {
    image_speed = 1; // anima normalmente
}

// ===== DIÁLOGO COM NPC =====
npc_mais_proximo = noone;
dist_menor = 16;

if (keyboard_check_pressed(ord("E")) && !obj_dialogue.dialogo_ativo && obj_dialogue.cooldown <= 0) {

    with (obj_crackudo) {
        var d = distance_to_object(other);
        if (d < other.dist_menor) {
            other.npc_mais_proximo = id;
            other.dist_menor = d;
        }
    }
	  show_debug_message("npc_mais_proximo: " + string(npc_mais_proximo) + " | dist_menor: " + string(dist_menor));

    if (npc_mais_proximo != noone) {
        var frases_npc = npc_mais_proximo.minhas_frases;
        var nome_npc = npc_mais_proximo.meu_nome;

        with (obj_dialogue) {
            frases = frases_npc;
            npc_nome = nome_npc;
            frase_atual = 0;
            char_atual = 0;
            dialogo_ativo = true;
            obj_player.pode_mover = false;
			npc_instancia = other.npc_mais_proximo;
        }
    }
}

