-module(lustre).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([application/3, element/1, simple/3, component/4, start_actor/2, start_server_component/2, register/2, dispatch/1, shutdown/0, is_browser/0, start/3, is_registered/1]).
-export_type([app/3, client_spa/0, server_component/0, error/0]).

-opaque app(PNU, PNV, PNW) :: {app,
        fun((PNU) -> {PNV, lustre@effect:effect(PNW)}),
        fun((PNV, PNW) -> {PNV, lustre@effect:effect(PNW)}),
        fun((PNV) -> lustre@internals@vdom:element(PNW)),
        gleam@option:option(gleam@dict:dict(binary(), fun((gleam@dynamic:dynamic_()) -> {ok,
                PNW} |
            {error, list(gleam@dynamic:decode_error())})))}.

-type client_spa() :: any().

-type server_component() :: any().

-type error() :: {actor_error, gleam@otp@actor:start_error()} |
    {bad_component_name, binary()} |
    {component_already_registered, binary()} |
    {element_not_found, binary()} |
    not_a_browser |
    not_erlang.

-spec application(
    fun((POP) -> {POQ, lustre@effect:effect(POR)}),
    fun((POQ, POR) -> {POQ, lustre@effect:effect(POR)}),
    fun((POQ) -> lustre@internals@vdom:element(POR))
) -> app(POP, POQ, POR).
application(Init, Update, View) ->
    {app, Init, Update, View, none}.

-spec element(lustre@internals@vdom:element(POD)) -> app(nil, nil, POD).
element(Html) ->
    Init = fun(_) -> {nil, lustre@effect:none()} end,
    Update = fun(_, _) -> {nil, lustre@effect:none()} end,
    View = fun(_) -> Html end,
    application(Init, Update, View).

-spec simple(
    fun((POI) -> POJ),
    fun((POJ, POK) -> POJ),
    fun((POJ) -> lustre@internals@vdom:element(POK))
) -> app(POI, POJ, POK).
simple(Init, Update, View) ->
    Init@1 = fun(Flags) -> {Init(Flags), lustre@effect:none()} end,
    Update@1 = fun(Model, Msg) -> {Update(Model, Msg), lustre@effect:none()} end,
    application(Init@1, Update@1, View).

-spec component(
    fun((POY) -> {POZ, lustre@effect:effect(PPA)}),
    fun((POZ, PPA) -> {POZ, lustre@effect:effect(PPA)}),
    fun((POZ) -> lustre@internals@vdom:element(PPA)),
    gleam@dict:dict(binary(), fun((gleam@dynamic:dynamic_()) -> {ok, PPA} |
        {error, list(gleam@dynamic:decode_error())}))
) -> app(POY, POZ, PPA).
component(Init, Update, View, On_attribute_change) ->
    {app, Init, Update, View, {some, On_attribute_change}}.

-spec do_start(app(PPU, any(), PPW), binary(), PPU) -> {ok,
        fun((lustre@internals@runtime:action(PPW, client_spa())) -> nil)} |
    {error, error()}.
do_start(_, _, _) ->
    {error, not_a_browser}.

-spec do_start_actor(app(PQZ, any(), PRB), PQZ) -> {ok,
        gleam@erlang@process:subject(lustre@internals@runtime:action(PRB, server_component()))} |
    {error, error()}.
do_start_actor(App, Flags) ->
    On_attribute_change = gleam@option:unwrap(
        erlang:element(5, App),
        gleam@dict:new()
    ),
    _pipe = (erlang:element(2, App))(Flags),
    _pipe@1 = lustre@internals@runtime:start(
        _pipe,
        erlang:element(3, App),
        erlang:element(4, App),
        On_attribute_change
    ),
    gleam@result:map_error(_pipe@1, fun(Field@0) -> {actor_error, Field@0} end).

-spec start_actor(app(PQO, any(), PQQ), PQO) -> {ok,
        gleam@erlang@process:subject(lustre@internals@runtime:action(PQQ, server_component()))} |
    {error, error()}.
start_actor(App, Flags) ->
    do_start_actor(App, Flags).

-spec start_server_component(app(PQE, any(), PQG), PQE) -> {ok,
        fun((lustre@internals@runtime:action(PQG, server_component())) -> nil)} |
    {error, error()}.
start_server_component(App, Flags) ->
    gleam@result:map(
        start_actor(App, Flags),
        fun(Runtime) ->
            fun(_capture) -> gleam@otp@actor:send(Runtime, _capture) end
        end
    ).

-spec register(app(nil, any(), any()), binary()) -> {ok, nil} | {error, error()}.
register(_, _) ->
    {error, not_a_browser}.

-spec dispatch(PRR) -> lustre@internals@runtime:action(PRR, any()).
dispatch(Msg) ->
    {dispatch, Msg}.

-spec shutdown() -> lustre@internals@runtime:action(any(), any()).
shutdown() ->
    shutdown.

-spec is_browser() -> boolean().
is_browser() ->
    false.

-spec start(app(PPK, any(), PPM), binary(), PPK) -> {ok,
        fun((lustre@internals@runtime:action(PPM, client_spa())) -> nil)} |
    {error, error()}.
start(App, Selector, Flags) ->
    gleam@bool:guard(
        not is_browser(),
        {error, not_a_browser},
        fun() -> do_start(App, Selector, Flags) end
    ).

-spec is_registered(binary()) -> boolean().
is_registered(_) ->
    false.
