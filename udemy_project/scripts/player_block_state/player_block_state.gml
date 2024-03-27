// player_block_state();
function player_block_state() {
	
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();	
	
	if (attack) {
		state = STATES.ATTACK;
		image_index = 0;
	}
	
	if (block) {		
		horizontal_speed = 0;
	} else {
		if (horizontal_speed != 0) {
			if (!scr_on_ground()) {
				state = STATES.JUMP;
			} else {
				state = STATES.WALK;
			} 
		} else {
			state = STATES.IDLE;
		}
	}
	
	if (jump) {
		state = STATES.JUMP;
		vertical_speed = jump_speed;	
	}
	

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();

}