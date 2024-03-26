//(Velocidades / speeds)
horizontal_speed = 0;
vertical_speed = 0;
max_horizontal_speed = 2;
walk_speed = 1.5;

vertical_speed_decimal = 0;
horizontal_speed_decimal = 0;

//(Fricção/friction)
drag = .12;

//facing direction
facing = 1;

//(Movement | Movimento)
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;

//(States | Estados)
state = STATES.IDLE;

enum STATES {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK,
}

// (Create state array | Criar uma lista de estados)
states_array[STATES.IDLE]			= player_idle_state;
states_array[STATES.WALK]			= player_walk_state;
states_array[STATES.JUMP]			= player_jump_state;
states_array[STATES.ATTACK]			= player_attack_state;
states_array[STATES.BLOCK]			= player_block_state;
states_array[STATES.CROUCH]			= player_crouch_state;
states_array[STATES.CROUCH_BLOCK]	= player_crouch_block_state;

sprites_array[STATES.IDLE]			= spr_player_idle;
sprites_array[STATES.WALK]			= spr_player_walk;
sprites_array[STATES.JUMP]			= spr_player_jump;
sprites_array[STATES.ATTACK]		= spr_player_attack;
sprites_array[STATES.BLOCK]			= spr_player_block;
sprites_array[STATES.CROUCH]		= spr_player_crouch;
sprites_array[STATES.CROUCH_BLOCK]	= spr_player_crouch_block;
