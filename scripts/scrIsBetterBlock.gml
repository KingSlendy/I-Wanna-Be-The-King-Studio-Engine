///scrIsBetterBlock(id)
var t_id = noone;

if (argument_count == 0) {
    t_id = id;
} else {
    t_id = argument[0];
    
    if (!instance_exists(t_id)) {
        return false;
    }
}

return (t_id.object_index == objBetterBlock || object_is_ancestor(t_id.object_index, objBetterBlock));
