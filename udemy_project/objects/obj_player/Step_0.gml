// (Execute state | Executar com base no estado)
switch (state) {
	case STATES.IDLE:
		script_execute(player_idle_state);
	break;
	
	case STATES.WALK:
		script_execute(player_walk_state);
	break;
}