//player_jump_state();
function player_jump_state() {
	
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Check player state | Checar os estado do player)
	if (scr_on_ground()) {
		if (horizontal_speed != 0) {
			state = STATES.WALK;	
		} else {
			state = STATES.IDLE;
		}		
	} 
	
	if (attack) {
		state = STATES.ATTACK;
		image_index = 0;
	}

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();

}