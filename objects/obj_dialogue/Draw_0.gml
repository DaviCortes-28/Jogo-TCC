if (dialogo_ativo) {
    draw_set_font(fnt_dialogo);
    
    draw_set_color(c_yellow);
    draw_text(500, 250, npc_nome);
    
    draw_set_color(c_white);
    draw_text(500, 280, frases[frase_atual]);
    
    draw_set_color(c_dkgray);
    draw_text(1200, 710, "[E]");
    
    draw_set_color(c_white);
}
