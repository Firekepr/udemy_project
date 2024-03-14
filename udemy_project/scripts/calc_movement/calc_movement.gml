
//(Calcular o movimento | calculate movement)
function calc_movement() {
	horizontal_speed += (right - left) * walk_speed;

	//(Drag | Fricção)
	horizontal_speed = lerp(horizontal_speed, 0, drag);

	//(Stop | Ao parar)
	if (abs(horizontal_speed) <= 0.1) horizontal_speed = 0;

	//(Face correct way | Olhar para direção correta)
	if (horizontal_speed != 0) facing = sign(horizontal_speed);

	//(Limit speed | Limitar a velocidade)
	horizontal_speed = min(abs(horizontal_speed), max_horizontal_speed) * facing;

}