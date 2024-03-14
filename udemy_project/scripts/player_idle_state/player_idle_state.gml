//player_idle_state();
function player_idle_state() {	
	// (Captar o movimento | get input)
	get_inputs();

	// (Calcular o movimento | calculate movement)
	calc_movement();
	
	// (Check player state | Checar os estado do player)
	
	if (horizontal_speed != 0) state = STATES.WALK;

	// (Apply movement | Aplicar o movimento)
	collision();

	// (Apply animations | Aplicar animações)
	animation();
}