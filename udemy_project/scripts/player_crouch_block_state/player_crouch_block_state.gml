// player_crouch_block_state();
function player_crouch_block_state() {
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Blocking | Bloqueando)
	scr_block_check();
	
	// (Attacking | Atacando) - must be call after block validation
	if (attack) {
		state = STATES.ATTACK;
		image_index = 0;
	}
	
	if (jump) scr_player_jumped();

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();
}