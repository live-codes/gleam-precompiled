-module(lustre@effect).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([from/1, event/2, none/0, batch/1, map/2, perform/3]).
-export_type([effect/1]).

-opaque effect(MZM) :: {effect,
        list(fun((fun((MZM) -> nil), fun((binary(), gleam@json:json()) -> nil)) -> nil))}.

-spec from(fun((fun((MZN) -> nil)) -> nil)) -> effect(MZN).
from(Effect) ->
    {effect, [fun(Dispatch, _) -> Effect(Dispatch) end]}.

-spec event(binary(), gleam@json:json()) -> effect(any()).
event(Name, Data) ->
    {effect, [fun(_, Emit) -> Emit(Name, Data) end]}.

-spec none() -> effect(any()).
none() ->
    {effect, []}.

-spec batch(list(effect(MZT))) -> effect(MZT).
batch(Effects) ->
    {effect,
        (gleam@list:fold(
            Effects,
            [],
            fun(B, _use1) ->
                {effect, A} = _use1,
                gleam@list:append(B, A)
            end
        ))}.

-spec map(effect(MZX), fun((MZX) -> MZZ)) -> effect(MZZ).
map(Effect, F) ->
    {effect,
        (gleam@list:map(
            erlang:element(2, Effect),
            fun(Eff) ->
                fun(Dispatch, Emit) ->
                    Eff(fun(Msg) -> Dispatch(F(Msg)) end, Emit)
                end
            end
        ))}.

-spec perform(
    effect(NAB),
    fun((NAB) -> nil),
    fun((binary(), gleam@json:json()) -> nil)
) -> nil.
perform(Effect, Dispatch, Emit) ->
    gleam@list:each(
        erlang:element(2, Effect),
        fun(Eff) -> Eff(Dispatch, Emit) end
    ).
