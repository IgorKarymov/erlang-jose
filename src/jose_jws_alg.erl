%% -*- mode: erlang; tab-width: 4; indent-tabs-mode: 1; st-rulers: [70] -*-
%% vim: ts=4 sw=4 ft=erlang noet
%%%-------------------------------------------------------------------
%%% @author Andrew Bennett <andrew@pixid.com>
%%% @copyright 2014-2015, Andrew Bennett
%%% @doc
%%%
%%% @end
%%% Created :  29 Jul 2015 by Andrew Bennett <andrew@pixid.com>
%%%-------------------------------------------------------------------
-module(jose_jws_alg).

-callback sign(Key, Message, ALG) -> Signature
	when
		Key       :: any(),
		Message   :: iodata(),
		ALG       :: any(),
		Signature :: iodata().
-callback verify(Key, Message, Signature, ALG) -> boolean()
	when
		Key       :: any(),
		Message   :: iodata(),
		Signature :: iodata(),
		ALG       :: any().
