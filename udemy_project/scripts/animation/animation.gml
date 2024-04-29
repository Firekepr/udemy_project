
function animation() {
	sprite_index = sprites_array[state];
	mask_index = hitbox_array[state];
	image_xscale = facing;
	
	
	switch(state) {
		case STATES.JUMP:
			if (vertical_speed < 0) {
				image_index = 0;
			} else { 
				image_index = 1;
			}
		break;
		
		case STATES.ATTACK:
			if (!scr_on_ground()) {
				sprite_index = spr_player_air_attack;
			} else {
				if (horizontal_speed != 0) {
					sprite_index = spr_player_attack_walk;
				} else {
					sprite_index = spr_player_attack;
				}
			}
		break;
	}
}