
/// @description Checks if one object (child) is completely inside another (parent)
/// @param obj_parent The instance ID of the parent object
/// @param obj_child The instance ID of the child object
/// @return Returns true if obj_child is completely inside obj_parent, false otherwise
function is_inside(obj_parent, obj_child) {
    // Get boundaries of the parent object
    var parent_left = obj_parent.x;
    var parent_right = obj_parent.x + (obj_parent.sprite_width * obj_parent.image_xscale);
    var parent_top = obj_parent.y;
    var parent_bottom = obj_parent.y + (obj_parent.sprite_height * obj_parent.image_yscale);

    // Get boundaries of the child object
    var child_left = obj_child.x;
    var child_right = obj_child.x + (obj_child.sprite_width * obj_child.image_xscale);
    var child_top = obj_child.y;
    var child_bottom = obj_child.y + (obj_child.sprite_height * obj_child.image_yscale);

    // Check if the child object is completely inside the parent object
    if (child_left >= parent_left && child_right <= parent_right &&
        child_top >= parent_top && child_bottom <= parent_bottom)
    {
        return true;  // The child is completely inside the parent
    }
    else
    {
        return false;  // The child is not completely inside the parent
    }
}
