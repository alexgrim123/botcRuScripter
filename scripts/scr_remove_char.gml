tmp_group = group[argument0];
for(tmp_itr=0; tmp_itr < pick_group_amount[tmp_group]; tmp_itr++)
    if pick_group_select[tmp_group, tmp_itr] = argument0 {
        for(tmp_jtr=tmp_itr; tmp_jtr < pick_group_amount[tmp_group]-1; tmp_jtr++)
            pick_group_select[tmp_group, tmp_jtr] = pick_group_select[tmp_group, tmp_jtr+1];
        break;
    }
pick_group_amount[tmp_group]--;
pick_current--;
