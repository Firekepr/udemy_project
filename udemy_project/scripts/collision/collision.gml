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
	
	// ( Horizontal collisions )
	// ( Determinate witch side to test | Determina qual lado testar ) ==>
	var _side = horizontal_speed > 0 ? bbox_right : bbox_left;
	
	// ( Check top and bottom of side | Checa as colisões diagonal ) ==>
	var _horizontal_test1 = tilemap_get_at_pixel(global.map, _side + horizontal_speed, bbox_top);
	var _horizontal_test2 = tilemap_get_at_pixel(global.map, _side + horizontal_speed, bbox_bottom);
	
	if (_horizontal_test1 != VOID or _horizontal_test2 != VOID) {
		// Collision found
		if (horizontal_speed > 0) {
			x = x - (x mod global.tile_size) + global.tile_size - 1 - (_side - x);
		} else {
			x = x - (x mod global.tile_size) - (_side - x);
		}
		
		horizontal_speed = 0;
	}
	
	// ( Vertical collisions )
	// ( Determinate witch side to test | Determina qual lado testar ) ==>
	var _vertical_side = vertical_speed > 0 ? bbox_bottom : bbox_top;
	
	// ( Check left and right ) ==>
	var _vertical_test1 = tilemap_get_at_pixel(global.map, bbox_left, _vertical_side + vertical_speed);
	var _vertical_test2 = tilemap_get_at_pixel(global.map, bbox_right, _vertical_side + vertical_speed);
	
	if (_vertical_test1 != VOID or _vertical_test2 != VOID) {
		// Collision found
		if (vertical_speed > 0) {
			y = y - (y mod global.tile_size) + global.tile_size - 1 - (_vertical_side - y);
		} else {
			y = y - (y mod global.tile_size) - (_vertical_side - y);
		}
		
		vertical_speed = 0;
	}
	
	x += horizontal_speed;
	y += vertical_speed;
}