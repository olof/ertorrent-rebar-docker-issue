-module(version).
-export([version/0, version/1]).
-include("version.hrl").

version(major) -> ?VERSION_MAJOR;
version(minor) -> ?VERSION_MINOR;
version(micro) -> ?VERSION_MICRO;
version(version) -> ?VERSION;
version(peer_id) -> ?PEER_ID;
version(peer_id_prefix) -> ?PEER_ID_PREFIX.
version() -> version(version).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

simple_test() -> ?assertEqual(version(version), version()).
version_test() -> ?assertEqual("1.2.3", version(version)).
major_test() -> ?assertEqual(1, version(major)).
minor_test() -> ?assertEqual(2, version(minor)).
micro_test() -> ?assertEqual(3, version(micro)).
peer_id_prefix_test() -> ?assertEqual("ZZ", version(peer_id_prefix)).
peer_id_test() -> ?assertEqual("ZZ-1-2-3            ", version(peer_id)).

-endif.
