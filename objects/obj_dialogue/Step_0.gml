if (dialogo_ativo) {
    // Typewriter
    if (char_atual < string_length(frases[frase_atual])) {
        if (keyboard_check_pressed(vk_space)) {
            char_atual = string_length(frases[frase_atual]);
        } else {
            char_atual += velocidade_texto;
        }
    } else {
        // Texto completo, aperta espaço para avançar
        if (keyboard_check_pressed(vk_space)) {
            frase_atual++;
            char_atual = 0;
            
            // Fim do diálogo
            if (frase_atual >= array_length(frases)) {
                dialogo_ativo = false;
                frase_atual = 0;
                frases = [];
                char_atual = 0;
                obj_player.pode_mover = true;
                
                // Explosão e destruição do NPC (só se desaparece = true)
                if (npc_instancia != noone && npc_instancia.desaparece) {
                    instance_create_layer(npc_instancia.x, npc_instancia.y, "Instances", obj_explosao);
                    with (npc_instancia) {
                        instance_destroy();
                    }
                }
            }
        }
    }
}