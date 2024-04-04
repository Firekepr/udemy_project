function scr_player_jumped() {
	
	if (scr_on_ground()) jumps = jumps_initial;
	
	if (jumps > 0) {
		state = STATES.JUMP;
		vertical_speed = jump_speed;
		jumps -= 1;
		scr_jump_dust();
	}
}