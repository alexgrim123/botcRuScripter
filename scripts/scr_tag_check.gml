no_enables = false;
for(tmp_tag_itr = 0; tmp_tag_itr < tag_filter_amount; tmp_tag_itr++) {
    if tag_filter_enable[tmp_tag_itr]{
        no_enables = true;
    }
}
if tag_filter_mode = 1
    no_enables = false;

for(tmp_tag_group=0;tmp_tag_group<tag_filter_amount;tmp_tag_group++) {
    if tag_filter_disable[tmp_tag_group] && scr_tag_has(argument0,tmp_tag_group)
        return false;
}
for(tmp_tag_group=0;tmp_tag_group<tag_filter_amount;tmp_tag_group++) {
    if tag_filter_enable[tmp_tag_group] {
        if scr_tag_has(argument0,tmp_tag_group) {
            if tag_filter_mode = 0
                return true;
        } else if tag_filter_mode = 1 {
            return false;
        }
    } 
}
return !no_enables;
