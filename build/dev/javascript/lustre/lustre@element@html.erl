-module(lustre@element@html).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([html/2, text/1, base/1, head/2, link/1, meta/1, style/2, title/2, body/2, address/2, article/2, aside/2, footer/2, header/2, h1/2, h2/2, h3/2, h4/2, h5/2, h6/2, hgroup/2, main/2, nav/2, section/2, search/2, blockquote/2, dd/2, 'div'/2, dl/2, dt/2, figcaption/2, figure/2, hr/1, li/2, menu/2, ol/2, p/2, pre/2, ul/2, a/2, abbr/2, b/2, bdi/2, bdo/2, br/1, cite/2, code/2, data/2, dfn/2, em/2, i/2, kbd/2, mark/2, q/2, rp/2, rt/2, ruby/2, s/2, samp/2, small/2, span/2, strong/2, sub/2, sup/2, time/2, u/2, var/2, wbr/1, area/1, audio/2, img/1, map/2, track/1, video/2, embed/1, iframe/1, object/1, picture/2, portal/1, source/1, svg/2, math/2, canvas/1, noscript/2, script/2, del/2, ins/2, caption/2, col/1, colgroup/2, table/2, tbody/2, td/2, tfoot/2, th/2, thead/2, tr/2, button/2, datalist/2, fieldset/2, form/2, input/1, label/2, legend/2, meter/2, optgroup/2, option/2, output/2, progress/2, select/2, textarea/2, details/2, dialog/2, summary/2, slot/1, template/2]).

-spec html(
    list(lustre@internals@vdom:attribute(PVI)),
    list(lustre@internals@vdom:element(PVI))
) -> lustre@internals@vdom:element(PVI).
html(Attrs, Children) ->
    lustre@element:element(<<"html"/utf8>>, Attrs, Children).

-spec text(binary()) -> lustre@internals@vdom:element(any()).
text(Content) ->
    lustre@element:text(Content).

-spec base(list(lustre@internals@vdom:attribute(PVQ))) -> lustre@internals@vdom:element(PVQ).
base(Attrs) ->
    lustre@element:element(<<"base"/utf8>>, Attrs, []).

-spec head(
    list(lustre@internals@vdom:attribute(PVU)),
    list(lustre@internals@vdom:element(PVU))
) -> lustre@internals@vdom:element(PVU).
head(Attrs, Children) ->
    lustre@element:element(<<"head"/utf8>>, Attrs, Children).

-spec link(list(lustre@internals@vdom:attribute(PWA))) -> lustre@internals@vdom:element(PWA).
link(Attrs) ->
    lustre@element:element(<<"link"/utf8>>, Attrs, []).

-spec meta(list(lustre@internals@vdom:attribute(PWE))) -> lustre@internals@vdom:element(PWE).
meta(Attrs) ->
    lustre@element:element(<<"meta"/utf8>>, Attrs, []).

-spec style(list(lustre@internals@vdom:attribute(PWI)), binary()) -> lustre@internals@vdom:element(PWI).
style(Attrs, Css) ->
    lustre@element:element(<<"style"/utf8>>, Attrs, [text(Css)]).

-spec title(list(lustre@internals@vdom:attribute(PWM)), binary()) -> lustre@internals@vdom:element(PWM).
title(Attrs, Content) ->
    lustre@element:element(<<"title"/utf8>>, Attrs, [text(Content)]).

-spec body(
    list(lustre@internals@vdom:attribute(PWQ)),
    list(lustre@internals@vdom:element(PWQ))
) -> lustre@internals@vdom:element(PWQ).
body(Attrs, Children) ->
    lustre@element:element(<<"body"/utf8>>, Attrs, Children).

-spec address(
    list(lustre@internals@vdom:attribute(PWW)),
    list(lustre@internals@vdom:element(PWW))
) -> lustre@internals@vdom:element(PWW).
address(Attrs, Children) ->
    lustre@element:element(<<"address"/utf8>>, Attrs, Children).

-spec article(
    list(lustre@internals@vdom:attribute(PXC)),
    list(lustre@internals@vdom:element(PXC))
) -> lustre@internals@vdom:element(PXC).
article(Attrs, Children) ->
    lustre@element:element(<<"article"/utf8>>, Attrs, Children).

-spec aside(
    list(lustre@internals@vdom:attribute(PXI)),
    list(lustre@internals@vdom:element(PXI))
) -> lustre@internals@vdom:element(PXI).
aside(Attrs, Children) ->
    lustre@element:element(<<"aside"/utf8>>, Attrs, Children).

-spec footer(
    list(lustre@internals@vdom:attribute(PXO)),
    list(lustre@internals@vdom:element(PXO))
) -> lustre@internals@vdom:element(PXO).
footer(Attrs, Children) ->
    lustre@element:element(<<"footer"/utf8>>, Attrs, Children).

-spec header(
    list(lustre@internals@vdom:attribute(PXU)),
    list(lustre@internals@vdom:element(PXU))
) -> lustre@internals@vdom:element(PXU).
header(Attrs, Children) ->
    lustre@element:element(<<"header"/utf8>>, Attrs, Children).

-spec h1(
    list(lustre@internals@vdom:attribute(PYA)),
    list(lustre@internals@vdom:element(PYA))
) -> lustre@internals@vdom:element(PYA).
h1(Attrs, Children) ->
    lustre@element:element(<<"h1"/utf8>>, Attrs, Children).

-spec h2(
    list(lustre@internals@vdom:attribute(PYG)),
    list(lustre@internals@vdom:element(PYG))
) -> lustre@internals@vdom:element(PYG).
h2(Attrs, Children) ->
    lustre@element:element(<<"h2"/utf8>>, Attrs, Children).

-spec h3(
    list(lustre@internals@vdom:attribute(PYM)),
    list(lustre@internals@vdom:element(PYM))
) -> lustre@internals@vdom:element(PYM).
h3(Attrs, Children) ->
    lustre@element:element(<<"h3"/utf8>>, Attrs, Children).

-spec h4(
    list(lustre@internals@vdom:attribute(PYS)),
    list(lustre@internals@vdom:element(PYS))
) -> lustre@internals@vdom:element(PYS).
h4(Attrs, Children) ->
    lustre@element:element(<<"h4"/utf8>>, Attrs, Children).

-spec h5(
    list(lustre@internals@vdom:attribute(PYY)),
    list(lustre@internals@vdom:element(PYY))
) -> lustre@internals@vdom:element(PYY).
h5(Attrs, Children) ->
    lustre@element:element(<<"h5"/utf8>>, Attrs, Children).

-spec h6(
    list(lustre@internals@vdom:attribute(PZE)),
    list(lustre@internals@vdom:element(PZE))
) -> lustre@internals@vdom:element(PZE).
h6(Attrs, Children) ->
    lustre@element:element(<<"h6"/utf8>>, Attrs, Children).

-spec hgroup(
    list(lustre@internals@vdom:attribute(PZK)),
    list(lustre@internals@vdom:element(PZK))
) -> lustre@internals@vdom:element(PZK).
hgroup(Attrs, Children) ->
    lustre@element:element(<<"hgroup"/utf8>>, Attrs, Children).

-spec main(
    list(lustre@internals@vdom:attribute(PZQ)),
    list(lustre@internals@vdom:element(PZQ))
) -> lustre@internals@vdom:element(PZQ).
main(Attrs, Children) ->
    lustre@element:element(<<"main"/utf8>>, Attrs, Children).

-spec nav(
    list(lustre@internals@vdom:attribute(PZW)),
    list(lustre@internals@vdom:element(PZW))
) -> lustre@internals@vdom:element(PZW).
nav(Attrs, Children) ->
    lustre@element:element(<<"nav"/utf8>>, Attrs, Children).

-spec section(
    list(lustre@internals@vdom:attribute(QAC)),
    list(lustre@internals@vdom:element(QAC))
) -> lustre@internals@vdom:element(QAC).
section(Attrs, Children) ->
    lustre@element:element(<<"section"/utf8>>, Attrs, Children).

-spec search(
    list(lustre@internals@vdom:attribute(QAI)),
    list(lustre@internals@vdom:element(QAI))
) -> lustre@internals@vdom:element(QAI).
search(Attrs, Children) ->
    lustre@element:element(<<"search"/utf8>>, Attrs, Children).

-spec blockquote(
    list(lustre@internals@vdom:attribute(QAO)),
    list(lustre@internals@vdom:element(QAO))
) -> lustre@internals@vdom:element(QAO).
blockquote(Attrs, Children) ->
    lustre@element:element(<<"blockquote"/utf8>>, Attrs, Children).

-spec dd(
    list(lustre@internals@vdom:attribute(QAU)),
    list(lustre@internals@vdom:element(QAU))
) -> lustre@internals@vdom:element(QAU).
dd(Attrs, Children) ->
    lustre@element:element(<<"dd"/utf8>>, Attrs, Children).

-spec 'div'(
    list(lustre@internals@vdom:attribute(QBA)),
    list(lustre@internals@vdom:element(QBA))
) -> lustre@internals@vdom:element(QBA).
'div'(Attrs, Children) ->
    lustre@element:element(<<"div"/utf8>>, Attrs, Children).

-spec dl(
    list(lustre@internals@vdom:attribute(QBG)),
    list(lustre@internals@vdom:element(QBG))
) -> lustre@internals@vdom:element(QBG).
dl(Attrs, Children) ->
    lustre@element:element(<<"dl"/utf8>>, Attrs, Children).

-spec dt(
    list(lustre@internals@vdom:attribute(QBM)),
    list(lustre@internals@vdom:element(QBM))
) -> lustre@internals@vdom:element(QBM).
dt(Attrs, Children) ->
    lustre@element:element(<<"dt"/utf8>>, Attrs, Children).

-spec figcaption(
    list(lustre@internals@vdom:attribute(QBS)),
    list(lustre@internals@vdom:element(QBS))
) -> lustre@internals@vdom:element(QBS).
figcaption(Attrs, Children) ->
    lustre@element:element(<<"figcaption"/utf8>>, Attrs, Children).

-spec figure(
    list(lustre@internals@vdom:attribute(QBY)),
    list(lustre@internals@vdom:element(QBY))
) -> lustre@internals@vdom:element(QBY).
figure(Attrs, Children) ->
    lustre@element:element(<<"figure"/utf8>>, Attrs, Children).

-spec hr(list(lustre@internals@vdom:attribute(QCE))) -> lustre@internals@vdom:element(QCE).
hr(Attrs) ->
    lustre@element:element(<<"hr"/utf8>>, Attrs, []).

-spec li(
    list(lustre@internals@vdom:attribute(QCI)),
    list(lustre@internals@vdom:element(QCI))
) -> lustre@internals@vdom:element(QCI).
li(Attrs, Children) ->
    lustre@element:element(<<"li"/utf8>>, Attrs, Children).

-spec menu(
    list(lustre@internals@vdom:attribute(QCO)),
    list(lustre@internals@vdom:element(QCO))
) -> lustre@internals@vdom:element(QCO).
menu(Attrs, Children) ->
    lustre@element:element(<<"menu"/utf8>>, Attrs, Children).

-spec ol(
    list(lustre@internals@vdom:attribute(QCU)),
    list(lustre@internals@vdom:element(QCU))
) -> lustre@internals@vdom:element(QCU).
ol(Attrs, Children) ->
    lustre@element:element(<<"ol"/utf8>>, Attrs, Children).

-spec p(
    list(lustre@internals@vdom:attribute(QDA)),
    list(lustre@internals@vdom:element(QDA))
) -> lustre@internals@vdom:element(QDA).
p(Attrs, Children) ->
    lustre@element:element(<<"p"/utf8>>, Attrs, Children).

-spec pre(
    list(lustre@internals@vdom:attribute(QDG)),
    list(lustre@internals@vdom:element(QDG))
) -> lustre@internals@vdom:element(QDG).
pre(Attrs, Children) ->
    lustre@element:element(<<"pre"/utf8>>, Attrs, Children).

-spec ul(
    list(lustre@internals@vdom:attribute(QDM)),
    list(lustre@internals@vdom:element(QDM))
) -> lustre@internals@vdom:element(QDM).
ul(Attrs, Children) ->
    lustre@element:element(<<"ul"/utf8>>, Attrs, Children).

-spec a(
    list(lustre@internals@vdom:attribute(QDS)),
    list(lustre@internals@vdom:element(QDS))
) -> lustre@internals@vdom:element(QDS).
a(Attrs, Children) ->
    lustre@element:element(<<"a"/utf8>>, Attrs, Children).

-spec abbr(
    list(lustre@internals@vdom:attribute(QDY)),
    list(lustre@internals@vdom:element(QDY))
) -> lustre@internals@vdom:element(QDY).
abbr(Attrs, Children) ->
    lustre@element:element(<<"abbr"/utf8>>, Attrs, Children).

-spec b(
    list(lustre@internals@vdom:attribute(QEE)),
    list(lustre@internals@vdom:element(QEE))
) -> lustre@internals@vdom:element(QEE).
b(Attrs, Children) ->
    lustre@element:element(<<"b"/utf8>>, Attrs, Children).

-spec bdi(
    list(lustre@internals@vdom:attribute(QEK)),
    list(lustre@internals@vdom:element(QEK))
) -> lustre@internals@vdom:element(QEK).
bdi(Attrs, Children) ->
    lustre@element:element(<<"bdi"/utf8>>, Attrs, Children).

-spec bdo(
    list(lustre@internals@vdom:attribute(QEQ)),
    list(lustre@internals@vdom:element(QEQ))
) -> lustre@internals@vdom:element(QEQ).
bdo(Attrs, Children) ->
    lustre@element:element(<<"bdo"/utf8>>, Attrs, Children).

-spec br(list(lustre@internals@vdom:attribute(QEW))) -> lustre@internals@vdom:element(QEW).
br(Attrs) ->
    lustre@element:element(<<"br"/utf8>>, Attrs, []).

-spec cite(
    list(lustre@internals@vdom:attribute(QFA)),
    list(lustre@internals@vdom:element(QFA))
) -> lustre@internals@vdom:element(QFA).
cite(Attrs, Children) ->
    lustre@element:element(<<"cite"/utf8>>, Attrs, Children).

-spec code(
    list(lustre@internals@vdom:attribute(QFG)),
    list(lustre@internals@vdom:element(QFG))
) -> lustre@internals@vdom:element(QFG).
code(Attrs, Children) ->
    lustre@element:element(<<"code"/utf8>>, Attrs, Children).

-spec data(
    list(lustre@internals@vdom:attribute(QFM)),
    list(lustre@internals@vdom:element(QFM))
) -> lustre@internals@vdom:element(QFM).
data(Attrs, Children) ->
    lustre@element:element(<<"data"/utf8>>, Attrs, Children).

-spec dfn(
    list(lustre@internals@vdom:attribute(QFS)),
    list(lustre@internals@vdom:element(QFS))
) -> lustre@internals@vdom:element(QFS).
dfn(Attrs, Children) ->
    lustre@element:element(<<"dfn"/utf8>>, Attrs, Children).

-spec em(
    list(lustre@internals@vdom:attribute(QFY)),
    list(lustre@internals@vdom:element(QFY))
) -> lustre@internals@vdom:element(QFY).
em(Attrs, Children) ->
    lustre@element:element(<<"em"/utf8>>, Attrs, Children).

-spec i(
    list(lustre@internals@vdom:attribute(QGE)),
    list(lustre@internals@vdom:element(QGE))
) -> lustre@internals@vdom:element(QGE).
i(Attrs, Children) ->
    lustre@element:element(<<"i"/utf8>>, Attrs, Children).

-spec kbd(
    list(lustre@internals@vdom:attribute(QGK)),
    list(lustre@internals@vdom:element(QGK))
) -> lustre@internals@vdom:element(QGK).
kbd(Attrs, Children) ->
    lustre@element:element(<<"kbd"/utf8>>, Attrs, Children).

-spec mark(
    list(lustre@internals@vdom:attribute(QGQ)),
    list(lustre@internals@vdom:element(QGQ))
) -> lustre@internals@vdom:element(QGQ).
mark(Attrs, Children) ->
    lustre@element:element(<<"mark"/utf8>>, Attrs, Children).

-spec q(
    list(lustre@internals@vdom:attribute(QGW)),
    list(lustre@internals@vdom:element(QGW))
) -> lustre@internals@vdom:element(QGW).
q(Attrs, Children) ->
    lustre@element:element(<<"q"/utf8>>, Attrs, Children).

-spec rp(
    list(lustre@internals@vdom:attribute(QHC)),
    list(lustre@internals@vdom:element(QHC))
) -> lustre@internals@vdom:element(QHC).
rp(Attrs, Children) ->
    lustre@element:element(<<"rp"/utf8>>, Attrs, Children).

-spec rt(
    list(lustre@internals@vdom:attribute(QHI)),
    list(lustre@internals@vdom:element(QHI))
) -> lustre@internals@vdom:element(QHI).
rt(Attrs, Children) ->
    lustre@element:element(<<"rt"/utf8>>, Attrs, Children).

-spec ruby(
    list(lustre@internals@vdom:attribute(QHO)),
    list(lustre@internals@vdom:element(QHO))
) -> lustre@internals@vdom:element(QHO).
ruby(Attrs, Children) ->
    lustre@element:element(<<"ruby"/utf8>>, Attrs, Children).

-spec s(
    list(lustre@internals@vdom:attribute(QHU)),
    list(lustre@internals@vdom:element(QHU))
) -> lustre@internals@vdom:element(QHU).
s(Attrs, Children) ->
    lustre@element:element(<<"s"/utf8>>, Attrs, Children).

-spec samp(
    list(lustre@internals@vdom:attribute(QIA)),
    list(lustre@internals@vdom:element(QIA))
) -> lustre@internals@vdom:element(QIA).
samp(Attrs, Children) ->
    lustre@element:element(<<"samp"/utf8>>, Attrs, Children).

-spec small(
    list(lustre@internals@vdom:attribute(QIG)),
    list(lustre@internals@vdom:element(QIG))
) -> lustre@internals@vdom:element(QIG).
small(Attrs, Children) ->
    lustre@element:element(<<"small"/utf8>>, Attrs, Children).

-spec span(
    list(lustre@internals@vdom:attribute(QIM)),
    list(lustre@internals@vdom:element(QIM))
) -> lustre@internals@vdom:element(QIM).
span(Attrs, Children) ->
    lustre@element:element(<<"span"/utf8>>, Attrs, Children).

-spec strong(
    list(lustre@internals@vdom:attribute(QIS)),
    list(lustre@internals@vdom:element(QIS))
) -> lustre@internals@vdom:element(QIS).
strong(Attrs, Children) ->
    lustre@element:element(<<"strong"/utf8>>, Attrs, Children).

-spec sub(
    list(lustre@internals@vdom:attribute(QIY)),
    list(lustre@internals@vdom:element(QIY))
) -> lustre@internals@vdom:element(QIY).
sub(Attrs, Children) ->
    lustre@element:element(<<"sub"/utf8>>, Attrs, Children).

-spec sup(
    list(lustre@internals@vdom:attribute(QJE)),
    list(lustre@internals@vdom:element(QJE))
) -> lustre@internals@vdom:element(QJE).
sup(Attrs, Children) ->
    lustre@element:element(<<"sup"/utf8>>, Attrs, Children).

-spec time(
    list(lustre@internals@vdom:attribute(QJK)),
    list(lustre@internals@vdom:element(QJK))
) -> lustre@internals@vdom:element(QJK).
time(Attrs, Children) ->
    lustre@element:element(<<"time"/utf8>>, Attrs, Children).

-spec u(
    list(lustre@internals@vdom:attribute(QJQ)),
    list(lustre@internals@vdom:element(QJQ))
) -> lustre@internals@vdom:element(QJQ).
u(Attrs, Children) ->
    lustre@element:element(<<"u"/utf8>>, Attrs, Children).

-spec var(
    list(lustre@internals@vdom:attribute(QJW)),
    list(lustre@internals@vdom:element(QJW))
) -> lustre@internals@vdom:element(QJW).
var(Attrs, Children) ->
    lustre@element:element(<<"var"/utf8>>, Attrs, Children).

-spec wbr(list(lustre@internals@vdom:attribute(QKC))) -> lustre@internals@vdom:element(QKC).
wbr(Attrs) ->
    lustre@element:element(<<"wbr"/utf8>>, Attrs, []).

-spec area(list(lustre@internals@vdom:attribute(QKG))) -> lustre@internals@vdom:element(QKG).
area(Attrs) ->
    lustre@element:element(<<"area"/utf8>>, Attrs, []).

-spec audio(
    list(lustre@internals@vdom:attribute(QKK)),
    list(lustre@internals@vdom:element(QKK))
) -> lustre@internals@vdom:element(QKK).
audio(Attrs, Children) ->
    lustre@element:element(<<"audio"/utf8>>, Attrs, Children).

-spec img(list(lustre@internals@vdom:attribute(QKQ))) -> lustre@internals@vdom:element(QKQ).
img(Attrs) ->
    lustre@element:element(<<"img"/utf8>>, Attrs, []).

-spec map(
    list(lustre@internals@vdom:attribute(QKU)),
    list(lustre@internals@vdom:element(QKU))
) -> lustre@internals@vdom:element(QKU).
map(Attrs, Children) ->
    lustre@element:element(<<"map"/utf8>>, Attrs, Children).

-spec track(list(lustre@internals@vdom:attribute(QLA))) -> lustre@internals@vdom:element(QLA).
track(Attrs) ->
    lustre@element:element(<<"track"/utf8>>, Attrs, []).

-spec video(
    list(lustre@internals@vdom:attribute(QLE)),
    list(lustre@internals@vdom:element(QLE))
) -> lustre@internals@vdom:element(QLE).
video(Attrs, Children) ->
    lustre@element:element(<<"video"/utf8>>, Attrs, Children).

-spec embed(list(lustre@internals@vdom:attribute(QLK))) -> lustre@internals@vdom:element(QLK).
embed(Attrs) ->
    lustre@element:element(<<"embed"/utf8>>, Attrs, []).

-spec iframe(list(lustre@internals@vdom:attribute(QLO))) -> lustre@internals@vdom:element(QLO).
iframe(Attrs) ->
    lustre@element:element(<<"iframe"/utf8>>, Attrs, []).

-spec object(list(lustre@internals@vdom:attribute(QLS))) -> lustre@internals@vdom:element(QLS).
object(Attrs) ->
    lustre@element:element(<<"object"/utf8>>, Attrs, []).

-spec picture(
    list(lustre@internals@vdom:attribute(QLW)),
    list(lustre@internals@vdom:element(QLW))
) -> lustre@internals@vdom:element(QLW).
picture(Attrs, Children) ->
    lustre@element:element(<<"picture"/utf8>>, Attrs, Children).

-spec portal(list(lustre@internals@vdom:attribute(QMC))) -> lustre@internals@vdom:element(QMC).
portal(Attrs) ->
    lustre@element:element(<<"portal"/utf8>>, Attrs, []).

-spec source(list(lustre@internals@vdom:attribute(QMG))) -> lustre@internals@vdom:element(QMG).
source(Attrs) ->
    lustre@element:element(<<"source"/utf8>>, Attrs, []).

-spec svg(
    list(lustre@internals@vdom:attribute(QMK)),
    list(lustre@internals@vdom:element(QMK))
) -> lustre@internals@vdom:element(QMK).
svg(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"svg"/utf8>>,
        Attrs,
        Children
    ).

-spec math(
    list(lustre@internals@vdom:attribute(QMQ)),
    list(lustre@internals@vdom:element(QMQ))
) -> lustre@internals@vdom:element(QMQ).
math(Attrs, Children) ->
    lustre@element:element(<<"math"/utf8>>, Attrs, Children).

-spec canvas(list(lustre@internals@vdom:attribute(QMW))) -> lustre@internals@vdom:element(QMW).
canvas(Attrs) ->
    lustre@element:element(<<"canvas"/utf8>>, Attrs, []).

-spec noscript(
    list(lustre@internals@vdom:attribute(QNA)),
    list(lustre@internals@vdom:element(QNA))
) -> lustre@internals@vdom:element(QNA).
noscript(Attrs, Children) ->
    lustre@element:element(<<"noscript"/utf8>>, Attrs, Children).

-spec script(list(lustre@internals@vdom:attribute(QNG)), binary()) -> lustre@internals@vdom:element(QNG).
script(Attrs, Js) ->
    lustre@element:element(<<"script"/utf8>>, Attrs, [text(Js)]).

-spec del(
    list(lustre@internals@vdom:attribute(QNK)),
    list(lustre@internals@vdom:element(QNK))
) -> lustre@internals@vdom:element(QNK).
del(Attrs, Children) ->
    lustre@element:element(<<"del"/utf8>>, Attrs, Children).

-spec ins(
    list(lustre@internals@vdom:attribute(QNQ)),
    list(lustre@internals@vdom:element(QNQ))
) -> lustre@internals@vdom:element(QNQ).
ins(Attrs, Children) ->
    lustre@element:element(<<"ins"/utf8>>, Attrs, Children).

-spec caption(
    list(lustre@internals@vdom:attribute(QNW)),
    list(lustre@internals@vdom:element(QNW))
) -> lustre@internals@vdom:element(QNW).
caption(Attrs, Children) ->
    lustre@element:element(<<"caption"/utf8>>, Attrs, Children).

-spec col(list(lustre@internals@vdom:attribute(QOC))) -> lustre@internals@vdom:element(QOC).
col(Attrs) ->
    lustre@element:element(<<"col"/utf8>>, Attrs, []).

-spec colgroup(
    list(lustre@internals@vdom:attribute(QOG)),
    list(lustre@internals@vdom:element(QOG))
) -> lustre@internals@vdom:element(QOG).
colgroup(Attrs, Children) ->
    lustre@element:element(<<"colgroup"/utf8>>, Attrs, Children).

-spec table(
    list(lustre@internals@vdom:attribute(QOM)),
    list(lustre@internals@vdom:element(QOM))
) -> lustre@internals@vdom:element(QOM).
table(Attrs, Children) ->
    lustre@element:element(<<"table"/utf8>>, Attrs, Children).

-spec tbody(
    list(lustre@internals@vdom:attribute(QOS)),
    list(lustre@internals@vdom:element(QOS))
) -> lustre@internals@vdom:element(QOS).
tbody(Attrs, Children) ->
    lustre@element:element(<<"tbody"/utf8>>, Attrs, Children).

-spec td(
    list(lustre@internals@vdom:attribute(QOY)),
    list(lustre@internals@vdom:element(QOY))
) -> lustre@internals@vdom:element(QOY).
td(Attrs, Children) ->
    lustre@element:element(<<"td"/utf8>>, Attrs, Children).

-spec tfoot(
    list(lustre@internals@vdom:attribute(QPE)),
    list(lustre@internals@vdom:element(QPE))
) -> lustre@internals@vdom:element(QPE).
tfoot(Attrs, Children) ->
    lustre@element:element(<<"tfoot"/utf8>>, Attrs, Children).

-spec th(
    list(lustre@internals@vdom:attribute(QPK)),
    list(lustre@internals@vdom:element(QPK))
) -> lustre@internals@vdom:element(QPK).
th(Attrs, Children) ->
    lustre@element:element(<<"th"/utf8>>, Attrs, Children).

-spec thead(
    list(lustre@internals@vdom:attribute(QPQ)),
    list(lustre@internals@vdom:element(QPQ))
) -> lustre@internals@vdom:element(QPQ).
thead(Attrs, Children) ->
    lustre@element:element(<<"thead"/utf8>>, Attrs, Children).

-spec tr(
    list(lustre@internals@vdom:attribute(QPW)),
    list(lustre@internals@vdom:element(QPW))
) -> lustre@internals@vdom:element(QPW).
tr(Attrs, Children) ->
    lustre@element:element(<<"tr"/utf8>>, Attrs, Children).

-spec button(
    list(lustre@internals@vdom:attribute(QQC)),
    list(lustre@internals@vdom:element(QQC))
) -> lustre@internals@vdom:element(QQC).
button(Attrs, Children) ->
    lustre@element:element(<<"button"/utf8>>, Attrs, Children).

-spec datalist(
    list(lustre@internals@vdom:attribute(QQI)),
    list(lustre@internals@vdom:element(QQI))
) -> lustre@internals@vdom:element(QQI).
datalist(Attrs, Children) ->
    lustre@element:element(<<"datalist"/utf8>>, Attrs, Children).

-spec fieldset(
    list(lustre@internals@vdom:attribute(QQO)),
    list(lustre@internals@vdom:element(QQO))
) -> lustre@internals@vdom:element(QQO).
fieldset(Attrs, Children) ->
    lustre@element:element(<<"fieldset"/utf8>>, Attrs, Children).

-spec form(
    list(lustre@internals@vdom:attribute(QQU)),
    list(lustre@internals@vdom:element(QQU))
) -> lustre@internals@vdom:element(QQU).
form(Attrs, Children) ->
    lustre@element:element(<<"form"/utf8>>, Attrs, Children).

-spec input(list(lustre@internals@vdom:attribute(QRA))) -> lustre@internals@vdom:element(QRA).
input(Attrs) ->
    lustre@element:element(<<"input"/utf8>>, Attrs, []).

-spec label(
    list(lustre@internals@vdom:attribute(QRE)),
    list(lustre@internals@vdom:element(QRE))
) -> lustre@internals@vdom:element(QRE).
label(Attrs, Children) ->
    lustre@element:element(<<"label"/utf8>>, Attrs, Children).

-spec legend(
    list(lustre@internals@vdom:attribute(QRK)),
    list(lustre@internals@vdom:element(QRK))
) -> lustre@internals@vdom:element(QRK).
legend(Attrs, Children) ->
    lustre@element:element(<<"legend"/utf8>>, Attrs, Children).

-spec meter(
    list(lustre@internals@vdom:attribute(QRQ)),
    list(lustre@internals@vdom:element(QRQ))
) -> lustre@internals@vdom:element(QRQ).
meter(Attrs, Children) ->
    lustre@element:element(<<"meter"/utf8>>, Attrs, Children).

-spec optgroup(
    list(lustre@internals@vdom:attribute(QRW)),
    list(lustre@internals@vdom:element(QRW))
) -> lustre@internals@vdom:element(QRW).
optgroup(Attrs, Children) ->
    lustre@element:element(<<"optgroup"/utf8>>, Attrs, Children).

-spec option(list(lustre@internals@vdom:attribute(QSC)), binary()) -> lustre@internals@vdom:element(QSC).
option(Attrs, Label) ->
    lustre@element:element(
        <<"option"/utf8>>,
        Attrs,
        [lustre@element:text(Label)]
    ).

-spec output(
    list(lustre@internals@vdom:attribute(QSG)),
    list(lustre@internals@vdom:element(QSG))
) -> lustre@internals@vdom:element(QSG).
output(Attrs, Children) ->
    lustre@element:element(<<"output"/utf8>>, Attrs, Children).

-spec progress(
    list(lustre@internals@vdom:attribute(QSM)),
    list(lustre@internals@vdom:element(QSM))
) -> lustre@internals@vdom:element(QSM).
progress(Attrs, Children) ->
    lustre@element:element(<<"progress"/utf8>>, Attrs, Children).

-spec select(
    list(lustre@internals@vdom:attribute(QSS)),
    list(lustre@internals@vdom:element(QSS))
) -> lustre@internals@vdom:element(QSS).
select(Attrs, Children) ->
    lustre@element:element(<<"select"/utf8>>, Attrs, Children).

-spec textarea(list(lustre@internals@vdom:attribute(QSY)), binary()) -> lustre@internals@vdom:element(QSY).
textarea(Attrs, Content) ->
    lustre@element:element(
        <<"textarea"/utf8>>,
        Attrs,
        [lustre@element:text(Content)]
    ).

-spec details(
    list(lustre@internals@vdom:attribute(QTC)),
    list(lustre@internals@vdom:element(QTC))
) -> lustre@internals@vdom:element(QTC).
details(Attrs, Children) ->
    lustre@element:element(<<"details"/utf8>>, Attrs, Children).

-spec dialog(
    list(lustre@internals@vdom:attribute(QTI)),
    list(lustre@internals@vdom:element(QTI))
) -> lustre@internals@vdom:element(QTI).
dialog(Attrs, Children) ->
    lustre@element:element(<<"dialog"/utf8>>, Attrs, Children).

-spec summary(
    list(lustre@internals@vdom:attribute(QTO)),
    list(lustre@internals@vdom:element(QTO))
) -> lustre@internals@vdom:element(QTO).
summary(Attrs, Children) ->
    lustre@element:element(<<"summary"/utf8>>, Attrs, Children).

-spec slot(list(lustre@internals@vdom:attribute(QTU))) -> lustre@internals@vdom:element(QTU).
slot(Attrs) ->
    lustre@element:element(<<"slot"/utf8>>, Attrs, []).

-spec template(
    list(lustre@internals@vdom:attribute(QTY)),
    list(lustre@internals@vdom:element(QTY))
) -> lustre@internals@vdom:element(QTY).
template(Attrs, Children) ->
    lustre@element:element(<<"template"/utf8>>, Attrs, Children).
