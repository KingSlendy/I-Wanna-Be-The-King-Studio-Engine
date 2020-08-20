///scrIsBlock(id)
var t_id = noone;

if (argument_count == 0) {
    t_id = id;
} else {
    t_id = argument[0];
    
    if (!instance_exists(t_id)) {
        return false;
    }
}

if (t_id.solid) {
    return true;
} else {
    return scrIsBetterBlock(t_id);
}
