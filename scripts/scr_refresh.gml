list_size = 0;
scroll = 0;
scroll_max = 0;

switch(list_mode) {

    case 0:
        for(g=0; g<=charGroup.demon; g++) {
            tmp_size = 0;
            clear_mass[0] = "";
            filter_name = clear_mass;
            for(r=0; r<charName.lastChar; r++){
                check_tag = 0;
                if !scr_tag_set()
                    check_tag = 1;
                else if scr_tag_check(r) {
                    check_tag = 1;
                }
                if (filter_set[charSet[r]] && check_tag && group[r] = g) {
                    filter_name[tmp_size] = string_lower(charTitle[r]);
                    tmp_size++;
                }
            }
        
            filter_name = array_sort(filter_name, true);
            
            for(r=0; r<tmp_size; r++) {
                for(l=0; l<charName.lastChar; l++) {
                    if filter_name[r] = string_lower(charTitle[l]) && group[l] = g && filter_set[charSet[l]] {
                        filter_list[list_size] = l;
                        list_pick[list_size] = 0;
                        if scr_char_picked(l)
                            list_pick[list_size] = 1;
                        list_size++;
                        break;
                    }
                }
            }
        }
    break;
    
    case 1: // travellers
        tmp_size = 0;
        clear_mass[0] = "";
        filter_name = clear_mass;
        for(r=1; r<travellerName.lastChar; r++){
            filter_name[tmp_size] = string_lower(travellerTitle[r]);
            tmp_size++;
        }
    
        filter_name = array_sort(filter_name, true);
        
        for(r=0; r<tmp_size; r++) {
            for(l=1; l<travellerName.lastChar; l++) {
                if filter_name[r] = string_lower(travellerTitle[l]) {
                    filter_list[list_size] = l;
                    list_pick[list_size] = 0;
                    if traveller_pick[l]
                        list_pick[list_size] = 1;
                    list_size++;
                    break;
                }
            }
        }
    break;
    
    case 2: // fabled
        tmp_size = 0;
        clear_mass[0] = "";
        filter_name = clear_mass;
        for(r=0; r<fabledName.lastChar; r++){
            filter_name[tmp_size] = string_lower(fabledTitle[r]);
            tmp_size++;
        }
    
        filter_name = array_sort(filter_name, true);
        
        for(r=0; r<tmp_size; r++) {
            for(l=0; l<fabledName.lastChar; l++) {
                if filter_name[r] = string_lower(fabledTitle[l]) {
                    filter_list[list_size] = l;
                    list_pick[list_size] = 0;
                    if fabled_pick[l]
                        list_pick[list_size] = 1;
                    list_size++;
                    break;
                }
            }
        }
    break;

}

if list_size > list_max {
    scroll_max = list_size - list_max;
}
