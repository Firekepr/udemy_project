
//(Captar o movimento | get input)
var _left   = keyboard_check(vk_left);
var _right  = keyboard_check(vk_right);
var _down   = keyboard_check(vk_down);
var _up     = keyboard_check(vk_up);

//(Calcular o movimento | calculate movement)
horizontal_speed += (_right - _left) * walk_speed;

//(Drag | Fricção)
horizontal_speed = lerp(horizontal_speed, 0, drag);

//(Stop | Ao parar)
if (abs(horizontal_speed) <= 0.1) horizontal_speed = 0;

//(Face correct way | Olhar para direção correta)
if (horizontal_speed != 0) facing = sign(horizontal_speed);

//(Limit speed | Limitar a velocidade)
horizontal_speed = min(abs(horizontal_speed), max_horizontal_speed) * facing;

//(Apply movement | Aplicar o movimento)
x += horizontal_speed;
y += vertical_speed;

//(Apply animations | Aplicar animações)
image_xscale = facing;