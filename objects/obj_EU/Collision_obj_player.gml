// No Collision do jogador com o NPC
if (keyboard_check_pressed(vk_space)) {
    with (obj_dialogue) {
        frases = [
            "...",
			"É estranho olhar pra si mesmo, não?",
			"Eu é tão culpado quanto Eu."
			];
        npc_nome = "...";
        frase_atual = 0;
        dialogo_ativo = true;
        obj_player.pode_mover = false; // trava o jogador
    }
}