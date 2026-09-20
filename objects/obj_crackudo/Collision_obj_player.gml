if (keyboard_check_pressed(ord("E"))) {
    with (obj_dialogue) {
        frases = [
			"...",
			"Eai carai",
			"quer fumar um?"
			];
        npc_nome = "Instrutor";
        frase_atual = 0;
        dialogo_ativo = true;
        obj_player.pode_mover = false; // trava o jogador
    }
}