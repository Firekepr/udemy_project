// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_jump_dust() {
	var _instance = instance_create_layer(x, y, "dust", obj_player_dust_jump);
	_instance.image_xscale = facing;
}