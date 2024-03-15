//(Captar o movimento | get input)
function get_inputs() {
	left   = keyboard_check(vk_left);
	right  = keyboard_check(vk_right);
	down   = keyboard_check(vk_down);
	up     = keyboard_check(vk_up);
	attack = keyboard_check_pressed(vk_shift);

}