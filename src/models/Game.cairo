%lang starknet

const WAITING_BOT_TURN = 'waiting_bot';
const WAITING_PLAYER_TURN = 'waiting_player';
const FINISHED = 'finished';

struct Game {
    player_id: felt,
    scenario_id: felt,
    game_status: felt,
}

