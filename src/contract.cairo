%lang starknet
from starkware.cairo.common.math import assert_nn
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.common.syscalls import get_caller_address

@storage_var
func games(id_game: felt) -> (game: Game) {
}

@storage_var
func games_count() -> (res : felt) {
}

@storage_var
func heroes(id_hero: felt) -> (hero: Hero) {
}


@external
func create_game{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}() {
    let (id_game) = games_count.read();
    let (player_id) = get_caller_address();
    games.write(id_game, Game(player_id, 1, WAITING_PLAYER_TURN));
    games_count.write(id_game + 1);
    return ();
}
