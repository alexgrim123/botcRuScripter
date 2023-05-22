array = argument0;
ascend = argument1;
list = ds_list_create();
count = array_length_1d(array);
for (var tmp_i=0; tmp_i<count; tmp_i++) list[| tmp_i] = array[tmp_i];
    ds_list_sort(list, ascend);
for (tmp_i=0; tmp_i<count; tmp_i++) array[tmp_i] = list[| tmp_i];
    ds_list_destroy(list);
return array;
