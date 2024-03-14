
function animation() {
	if (horizontal_speed != 0) {
		image_xscale = facing;
		sprite_index = spr_player_walk;
	} else {
		sprite_index = spr_player_idle;
	}
}