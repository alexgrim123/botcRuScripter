if pick_current < pick_max {
    tmp_group = group[argument0];
    tmp_found = 0;
    for(tmp_check_itr = 0; tmp_check_itr < pick_group_amount[tmp_group]; tmp_check_itr++)
        if pick_group_select[tmp_group,tmp_check_itr] = argument0
            tmp_found = 1;
    if !tmp_found {
        pick_group_select[tmp_group, pick_group_amount[tmp_group]] = argument0;
        pick_group_amount[tmp_group]++;
        pick_current++;
    }
}
