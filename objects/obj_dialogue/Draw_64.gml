// Draw GUI Event
if (dialogo_ativo) {
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    draw_set_font(fnt_dialogo);
    
    draw_set_color(c_yellow);
    draw_text(_gui_w * 0.05, _gui_h * 0.75, npc_nome);
    
    draw_set_color(c_white);
    draw_text(_gui_w * 0.05, _gui_h * 0.82, frases[frase_atual]);
    
    draw_set_color(c_dkgray);
    draw_text(_gui_w * 0.9, _gui_h * 0.9, "[E]");
    
    draw_set_color(c_white);
}