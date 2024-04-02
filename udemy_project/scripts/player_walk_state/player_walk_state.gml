//player_walk_state();
function player_walk_state() {	
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Check player state | Checar os estado do player)
	if (horizontal_speed == 0) state = STATES.IDLE;
	
	//check if falling off ledge
	var _side = bbox_bottom;
	
	var _observer1 = tilemap_get_at_pixel(global.map, bbox_left, _side + 1);
	var _observer2 = tilemap_get_at_pixel(global.map, bbox_right, _side + 1);
	
	if (_observer1 == VOID and _observer2 == VOID) {
		state = STATES.JUMP;
		jumps = jumps_initial;
	}
	
	if (attack) {
		state = STATES.ATTACK;
		image_index = 0;
	}
	
	if (jump) scr_player_jumped();
	
	if (block) {
		state = STATES.BLOCK;
		horizontal_speed = 0;
	}

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();
}