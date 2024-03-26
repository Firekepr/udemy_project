// ( Collision | Colisão )

function collision() {
	
	horizontal_speed += horizontal_speed_decimal;
	vertical_speed += vertical_speed_decimal;
	
	// ( Horizontal colision | Colisão horizontal )
	// ( Save and subtract decimals | Salvar e subtrair decimais ) ==>
	horizontal_speed_decimal = horizontal_speed - (floor(abs(horizontal_speed)) * sign(horizontal_speed));
	horizontal_speed -= horizontal_speed_decimal;
	
	vertical_speed_decimal = vertical_speed - (floor(abs(vertical_speed)) * sign(vertical_speed));
	vertical_speed -= vertical_speed_decimal;
	
	// <==
	
	// ( Determinate witch side to test | Determina qual lado testar ) ==>
	var _side = horizontal_speed > 0 ? bbox_right : bbox_left;
	
	// ( Check top and bottom of side | Checa as colisões diagonal ) ==>
	var _t1 = tilemap_get_at_pixel(global.map, _side + horizontal_speed, bbox_top);
	var _t2 = tilemap_get_at_pixel(global.map, _side + horizontal_speed, bbox_bottom);
	
	if (_t1 != VOID or _t2 != VOID) {
		// Collision found
		if (horizontal_speed > 0) {
			x = x - (x mod global.tile_size) + global.tile_size - 1 - (_side - x);
		} else {
			x = x - (x mod global.tile_size) - (_side - x);
		}
		
		horizontal_speed = 0;
	}
	
	x += horizontal_speed;
	y += vertical_speed;
}