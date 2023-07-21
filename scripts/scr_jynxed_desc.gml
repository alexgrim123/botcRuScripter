if argument0 = argument1
    return false;
if argument0 > argument1 {
    tmp_jynx_a = argument1;
    tmp_jynx_b = argument0;
} else {
    tmp_jynx_a = argument0;
    tmp_jynx_b = argument1;
}

res = "";

switch (curr_lang) {
    
    case language.russian:
        res = jynx_ru_desc[tmp_jynx_a,tmp_jynx_b];
    break;
    
    case language.english:
        res = jynx_eng_desc[tmp_jynx_a,tmp_jynx_b];
    break;
    
}
return res;
