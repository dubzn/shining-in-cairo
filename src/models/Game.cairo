%lang starknet

struct Game {
    id: felt,
    player_id: felt,
    scenario_id: felt,
    game_status_id: felt,
}

struct GameStatus {
    id: felt,
    hero_position: felt,
    enemy_position: felt,
    game_state: felt,
}
