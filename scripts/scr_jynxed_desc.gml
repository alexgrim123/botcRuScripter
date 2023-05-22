if argument0 = argument1
    return false;
if argument0 > argument1 {
    tmp_jynx_a = argument1;
    tmp_jynx_b = argument0;
} else {
    tmp_jynx_a = argument0;
    tmp_jynx_b = argument1;
}

return jynx_desc[tmp_jynx_a,tmp_jynx_b];
