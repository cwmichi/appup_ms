-module(appup_ms_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    appup_ms_sup:start_link().

stop(_State) ->
    ok.
