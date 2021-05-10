%%%-------------------------------------------------------------------
%% @doc roam_tcp public API
%% @author Satish Zol
%% @copyright 09-05-2021
%% @end
%%%-------------------------------------------------------------------

-module(roam_tcp_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    case roam_tcp_sup:start_link() of
      {ok, Pid} ->
        {ok, Pid};
      Other ->
        {error, Other}
    end.

stop(_State) ->
    ok.

%% internal functions
