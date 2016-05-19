-ifndef(TEST).
-define(PEER_ID_PREFIX, "ET").
-define(VERSION_MAJOR, 0).
-define(VERSION_MINOR, 0).
-define(VERSION_MICRO, 1).
-else.
%% When running unit tests, version constants are defined to known values.
-define(PEER_ID_PREFIX, "ZZ").
-define(VERSION_MAJOR, 1).
-define(VERSION_MINOR, 2).
-define(VERSION_MICRO, 3).
-endif.

-define(VERSION, lists:flatten(io_lib:format("~b.~b.~b",
	[?VERSION_MAJOR, ?VERSION_MINOR, ?VERSION_MICRO]
))).

%% PEER_ID contains the bittorrent protocol peer identifier, e.g.
%% "ET-0-0-1            "
-define(PEER_ID, lists:flatten(io_lib:format("~s-~b-~b-~b            ",
	[?PEER_ID_PREFIX, ?VERSION_MAJOR, ?VERSION_MINOR, ?VERSION_MICRO]
))).
