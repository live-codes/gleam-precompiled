-module(htmb).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([escape/1, dangerous_unescaped_fragment/1, text/1, render/1, render_page/1, h/3]).
-export_type([html/0]).

-type html() :: any().

-spec do_escape(binary(), binary()) -> binary().
do_escape(Escaped, Content) ->
    case gleam@string:pop_grapheme(Content) of
        {ok, {<<"<"/utf8>>, Xs}} ->
            do_escape(<<Escaped/binary, "&lt;"/utf8>>, Xs);

        {ok, {<<">"/utf8>>, Xs@1}} ->
            do_escape(<<Escaped/binary, "&gt;"/utf8>>, Xs@1);

        {ok, {<<"&"/utf8>>, Xs@2}} ->
            do_escape(<<Escaped/binary, "&amp;"/utf8>>, Xs@2);

        {ok, {X, Xs@3}} ->
            do_escape(<<Escaped/binary, X/binary>>, Xs@3);

        {error, _} ->
            <<Escaped/binary, Content/binary>>
    end.

-spec escape(binary()) -> binary().
escape(Content) ->
    do_escape(<<""/utf8>>, Content).

-spec attribute(binary(), {binary(), binary()}) -> binary().
attribute(Content, Attribute) ->
    <<<<<<<<<<Content/binary, " "/utf8>>/binary,
                    (erlang:element(1, Attribute))/binary>>/binary,
                "=\""/utf8>>/binary,
            (erlang:element(2, Attribute))/binary>>/binary,
        "\""/utf8>>.

-spec dangerous_unescaped_fragment(gleam@string_builder:string_builder()) -> html().
dangerous_unescaped_fragment(S) ->
    htmb_ffi:identity(S).

-spec text(binary()) -> html().
text(Content) ->
    _pipe = Content,
    _pipe@1 = do_escape(<<""/utf8>>, _pipe),
    _pipe@2 = gleam@string_builder:from_string(_pipe@1),
    htmb_ffi:identity(_pipe@2).

-spec render(html()) -> gleam@string_builder:string_builder().
render(Element) ->
    htmb_ffi:identity(Element).

-spec render_page(html()) -> gleam@string_builder:string_builder().
render_page(Html) ->
    _pipe = htmb_ffi:identity(Html),
    gleam@string_builder:prepend(_pipe, <<"<!DOCTYPE html>"/utf8>>).

-spec child(gleam@string_builder:string_builder(), html()) -> gleam@string_builder:string_builder().
child(Siblings, Child) ->
    gleam@string_builder:append_builder(Siblings, htmb_ffi:identity(Child)).

-spec h(binary(), list({binary(), binary()}), list(html())) -> html().
h(Tag, Attributes, Children) ->
    Opening = begin
        _pipe = <<"<"/utf8>>,
        _pipe@1 = gleam@string:append(_pipe, Tag),
        _pipe@2 = gleam@list:fold(Attributes, _pipe@1, fun attribute/2),
        _pipe@3 = gleam@string:append(_pipe@2, <<">"/utf8>>),
        gleam@string_builder:from_string(_pipe@3)
    end,
    _pipe@6 = case Tag of
        <<"area"/utf8>> ->
            Opening;

        <<"base"/utf8>> ->
            Opening;

        <<"br"/utf8>> ->
            Opening;

        <<"col"/utf8>> ->
            Opening;

        <<"command"/utf8>> ->
            Opening;

        <<"embed"/utf8>> ->
            Opening;

        <<"hr"/utf8>> ->
            Opening;

        <<"img"/utf8>> ->
            Opening;

        <<"input"/utf8>> ->
            Opening;

        <<"keygen"/utf8>> ->
            Opening;

        <<"link"/utf8>> ->
            Opening;

        <<"meta"/utf8>> ->
            Opening;

        <<"param"/utf8>> ->
            Opening;

        <<"source"/utf8>> ->
            Opening;

        <<"track"/utf8>> ->
            Opening;

        <<"wbr"/utf8>> ->
            Opening;

        _ ->
            _pipe@4 = Opening,
            _pipe@5 = gleam@list:fold(Children, _pipe@4, fun child/2),
            gleam@string_builder:append(
                _pipe@5,
                <<<<"</"/utf8, Tag/binary>>/binary, ">"/utf8>>
            )
    end,
    htmb_ffi:identity(_pipe@6).
