%% -*- mode: erlang; tab-width: 4; indent-tabs-mode: 1; st-rulers: [70] -*-
%% vim: ts=4 sw=4 ft=erlang noet
%%%-------------------------------------------------------------------
%%% @author Andrew Bennett <andrew@pixid.com>
%%% @copyright 2014-2015, Andrew Bennett
%%% @doc
%%%
%%% @end
%%% Created :  14 Aug 2015 by Andrew Bennett <andrew@pixid.com>
%%%-------------------------------------------------------------------
-module(jose_json_poison_ord_encoder).
-behaviour(jose_json).

-compile(inline_list_funcs).

%% jose_json callbacks
-export([decode/1]).
-export([encode/1]).

%%====================================================================
%% jose_json callbacks
%%====================================================================

decode(Binary) ->
	'Elixir.Poison':'decode!'(Binary).

encode(Term) ->
	'Elixir.JOSE.Poison':'ord_encode!'(Term).

%%%-------------------------------------------------------------------
%%% Internal functions
%%%-------------------------------------------------------------------
