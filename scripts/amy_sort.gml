for(amy_group_itr = 0; amy_group_itr <= charGroup.demon; amy_group_itr++) {
    if pick_group_amount[amy_group_itr] <= 0
        continue;
    for(amy_fill_itr = 0; amy_fill_itr < pick_group_amount[amy_group_itr]; amy_fill_itr++) {
        amy_fill_list_repeats[amy_fill_itr] = 0;
    }
    amy_result_list = ds_list_create();
    for(amy_fill_itr = 0; amy_fill_itr < pick_group_amount[amy_group_itr]; amy_fill_itr++) {
        fill_string_length = 100000;
        fill_amy_value = 20;
        fill_chosen_index = -1;
        for(amy_char_itr = 0; amy_char_itr < pick_group_amount[amy_group_itr]; amy_char_itr++) {
            if amy_fill_list_repeats[amy_char_itr]
                continue;
            tmp_amy_char = pick_group_select[amy_group_itr,amy_char_itr];
            if amy_order[tmp_amy_char] < fill_amy_value {
                fill_chosen_index = amy_char_itr;
                fill_amy_value = amy_order[tmp_amy_char];
                fill_string_length = string_length(charDesc[tmp_amy_char,curr_lang]);
            } else if (amy_order[tmp_amy_char] = fill_amy_value && string_length(charDesc[tmp_amy_char,curr_lang]) < fill_string_length) {
                fill_chosen_index = amy_char_itr;
                fill_amy_value = amy_order[tmp_amy_char];
                fill_string_length = string_length(charDesc[tmp_amy_char,curr_lang]);
            }
        }
        if fill_chosen_index != -1 {
            amy_fill_list_repeats[fill_chosen_index] = 1;
            amy_result_list[| amy_fill_itr] = pick_group_select[amy_group_itr,fill_chosen_index];
        }
    }
    for (amy_fill_itr=0; amy_fill_itr<pick_group_amount[amy_group_itr]; amy_fill_itr++) {
        pick_group_select[amy_group_itr,amy_fill_itr] = amy_result_list[| amy_fill_itr];
    }
    ds_list_destroy(amy_result_list);
}
