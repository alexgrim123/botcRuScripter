while(true) {
    tmp_found_perfect_random_char = 0;
    tmp_random_id = irandom(charName.lastChar-1);
    if (group[tmp_random_id] = argument0 && !scr_char_picked(tmp_random_id)) {
        tmp_found_perfect_random_char = 1;
        scr_pick_char(tmp_random_id);
    }
    if (tmp_found_perfect_random_char)
        break;
}
