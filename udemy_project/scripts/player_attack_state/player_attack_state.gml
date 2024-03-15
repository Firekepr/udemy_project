// player_attack_state();
function player_attack_state() {
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Check player state | Checar os estado do player)
	if (image_index >= image_number - sprite_get_speed(sprite_index) / room_speed) {
		if (horizontal_speed != 0) {
			state = STATES.WALK;
		} else {
			state = STATES.IDLE;
		}
	}

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();
}