if (ds_list_find_index(global.saveroom, id) != -1 || !global.panic)
    instance_destroy(id);
