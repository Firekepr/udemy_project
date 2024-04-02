// player_attack_state();
function player_attack_state() {
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Check player state | Checar os estado do player)
	if (image_index >= image_number - sprite_get_speed(sprite_index) / room_speed) {
		if (!scr_on_ground()) {
			state = STATES.JUMP;
		} else if (horizontal_speed != 0) {
			state = STATES.WALK;
		} else {
			state = STATES.IDLE;
		}
	}
	
	// (Enable jump when is attacking)
	if (jump) {
		scr_player_jumped();
		state = STATES.ATTACK;
	}
	
	// (Enable smaller jumps)
	if (vertical_speed < 0 and !jump_held) {
		vertical_speed = max(vertical_speed, jump_speed/jump_dampner);
	}


	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();
}