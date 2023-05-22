for(tmp_tag_itr = 0; tmp_tag_itr < tag_filter_amount; tmp_tag_itr++) {
    if tag_filter_enable[tmp_tag_itr] || tag_filter_disable[tmp_tag_itr] {
        return true;
    }
}
return false;
