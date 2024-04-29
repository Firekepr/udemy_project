// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_block_check() {
	if (block) {
		if (down) { 
			state = STATES.CROUCH_BLOCK;
		} else {
			state = STATES.BLOCK
		}
		
		horizontal_speed = 0;
	} else {
		
		if (down) {
			state = STATES.CROUCH;
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
	}
}