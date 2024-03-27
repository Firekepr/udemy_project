function scr_on_ground() {
	var _side = bbox_bottom;	
	
	var _observer1 = tilemap_get_at_pixel(global.map, bbox_left, _side + 1);
	var _observer2 = tilemap_get_at_pixel(global.map, bbox_right, _side + 1);
	
	return _observer1 == SOLID or _observer2 == SOLID;
}