-module(lustre@element@html).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([html/2, text/1, base/1, head/2, link/1, meta/1, style/2, title/2, body/2, address/2, article/2, aside/2, footer/2, header/2, h1/2, h2/2, h3/2, h4/2, h5/2, h6/2, hgroup/2, main/2, nav/2, section/2, search/2, blockquote/2, dd/2, 'div'/2, dl/2, dt/2, figcaption/2, figure/2, hr/1, li/2, menu/2, ol/2, p/2, pre/2, ul/2, a/2, abbr/2, b/2, bdi/2, bdo/2, br/1, cite/2, code/2, data/2, dfn/2, em/2, i/2, kbd/2, mark/2, q/2, rp/2, rt/2, ruby/2, s/2, samp/2, small/2, span/2, strong/2, sub/2, sup/2, time/2, u/2, var/2, wbr/1, area/1, audio/2, img/1, map/2, track/1, video/2, embed/1, iframe/1, object/1, picture/2, portal/1, source/1, svg/2, math/2, canvas/1, noscript/2, script/2, del/2, ins/2, caption/2, col/1, colgroup/2, table/2, tbody/2, td/2, tfoot/2, th/2, thead/2, tr/2, button/2, datalist/2, fieldset/2, form/2, input/1, label/2, legend/2, meter/2, optgroup/2, option/2, output/2, progress/2, select/2, textarea/2, details/2, dialog/2, summary/2, slot/1, template/2]).

-spec html(
    list(lustre@internals@vdom:attribute(PQQ)),
    list(lustre@internals@vdom:element(PQQ))
) -> lustre@internals@vdom:element(PQQ).
html(Attrs, Children) ->
    lustre@element:element(<<"html"/utf8>>, Attrs, Children).

-spec text(binary()) -> lustre@internals@vdom:element(any()).
text(Content) ->
    lustre@element:text(Content).

-spec base(list(lustre@internals@vdom:attribute(PQY))) -> lustre@internals@vdom:element(PQY).
base(Attrs) ->
    lustre@element:element(<<"base"/utf8>>, Attrs, []).

-spec head(
    list(lustre@internals@vdom:attribute(PRC)),
    list(lustre@internals@vdom:element(PRC))
) -> lustre@internals@vdom:element(PRC).
head(Attrs, Children) ->
    lustre@element:element(<<"head"/utf8>>, Attrs, Children).

-spec link(list(lustre@internals@vdom:attribute(PRI))) -> lustre@internals@vdom:element(PRI).
link(Attrs) ->
    lustre@element:element(<<"link"/utf8>>, Attrs, []).

-spec meta(list(lustre@internals@vdom:attribute(PRM))) -> lustre@internals@vdom:element(PRM).
meta(Attrs) ->
    lustre@element:element(<<"meta"/utf8>>, Attrs, []).

-spec style(list(lustre@internals@vdom:attribute(PRQ)), binary()) -> lustre@internals@vdom:element(PRQ).
style(Attrs, Css) ->
    lustre@element:element(<<"style"/utf8>>, Attrs, [text(Css)]).

-spec title(list(lustre@internals@vdom:attribute(PRU)), binary()) -> lustre@internals@vdom:element(PRU).
title(Attrs, Content) ->
    lustre@element:element(<<"title"/utf8>>, Attrs, [text(Content)]).

-spec body(
    list(lustre@internals@vdom:attribute(PRY)),
    list(lustre@internals@vdom:element(PRY))
) -> lustre@internals@vdom:element(PRY).
body(Attrs, Children) ->
    lustre@element:element(<<"body"/utf8>>, Attrs, Children).

-spec address(
    list(lustre@internals@vdom:attribute(PSE)),
    list(lustre@internals@vdom:element(PSE))
) -> lustre@internals@vdom:element(PSE).
address(Attrs, Children) ->
    lustre@element:element(<<"address"/utf8>>, Attrs, Children).

-spec article(
    list(lustre@internals@vdom:attribute(PSK)),
    list(lustre@internals@vdom:element(PSK))
) -> lustre@internals@vdom:element(PSK).
article(Attrs, Children) ->
    lustre@element:element(<<"article"/utf8>>, Attrs, Children).

-spec aside(
    list(lustre@internals@vdom:attribute(PSQ)),
    list(lustre@internals@vdom:element(PSQ))
) -> lustre@internals@vdom:element(PSQ).
aside(Attrs, Children) ->
    lustre@element:element(<<"aside"/utf8>>, Attrs, Children).

-spec footer(
    list(lustre@internals@vdom:attribute(PSW)),
    list(lustre@internals@vdom:element(PSW))
) -> lustre@internals@vdom:element(PSW).
footer(Attrs, Children) ->
    lustre@element:element(<<"footer"/utf8>>, Attrs, Children).

-spec header(
    list(lustre@internals@vdom:attribute(PTC)),
    list(lustre@internals@vdom:element(PTC))
) -> lustre@internals@vdom:element(PTC).
header(Attrs, Children) ->
    lustre@element:element(<<"header"/utf8>>, Attrs, Children).

-spec h1(
    list(lustre@internals@vdom:attribute(PTI)),
    list(lustre@internals@vdom:element(PTI))
) -> lustre@internals@vdom:element(PTI).
h1(Attrs, Children) ->
    lustre@element:element(<<"h1"/utf8>>, Attrs, Children).

-spec h2(
    list(lustre@internals@vdom:attribute(PTO)),
    list(lustre@internals@vdom:element(PTO))
) -> lustre@internals@vdom:element(PTO).
h2(Attrs, Children) ->
    lustre@element:element(<<"h2"/utf8>>, Attrs, Children).

-spec h3(
    list(lustre@internals@vdom:attribute(PTU)),
    list(lustre@internals@vdom:element(PTU))
) -> lustre@internals@vdom:element(PTU).
h3(Attrs, Children) ->
    lustre@element:element(<<"h3"/utf8>>, Attrs, Children).

-spec h4(
    list(lustre@internals@vdom:attribute(PUA)),
    list(lustre@internals@vdom:element(PUA))
) -> lustre@internals@vdom:element(PUA).
h4(Attrs, Children) ->
    lustre@element:element(<<"h4"/utf8>>, Attrs, Children).

-spec h5(
    list(lustre@internals@vdom:attribute(PUG)),
    list(lustre@internals@vdom:element(PUG))
) -> lustre@internals@vdom:element(PUG).
h5(Attrs, Children) ->
    lustre@element:element(<<"h5"/utf8>>, Attrs, Children).

-spec h6(
    list(lustre@internals@vdom:attribute(PUM)),
    list(lustre@internals@vdom:element(PUM))
) -> lustre@internals@vdom:element(PUM).
h6(Attrs, Children) ->
    lustre@element:element(<<"h6"/utf8>>, Attrs, Children).

-spec hgroup(
    list(lustre@internals@vdom:attribute(PUS)),
    list(lustre@internals@vdom:element(PUS))
) -> lustre@internals@vdom:element(PUS).
hgroup(Attrs, Children) ->
    lustre@element:element(<<"hgroup"/utf8>>, Attrs, Children).

-spec main(
    list(lustre@internals@vdom:attribute(PUY)),
    list(lustre@internals@vdom:element(PUY))
) -> lustre@internals@vdom:element(PUY).
main(Attrs, Children) ->
    lustre@element:element(<<"main"/utf8>>, Attrs, Children).

-spec nav(
    list(lustre@internals@vdom:attribute(PVE)),
    list(lustre@internals@vdom:element(PVE))
) -> lustre@internals@vdom:element(PVE).
nav(Attrs, Children) ->
    lustre@element:element(<<"nav"/utf8>>, Attrs, Children).

-spec section(
    list(lustre@internals@vdom:attribute(PVK)),
    list(lustre@internals@vdom:element(PVK))
) -> lustre@internals@vdom:element(PVK).
section(Attrs, Children) ->
    lustre@element:element(<<"section"/utf8>>, Attrs, Children).

-spec search(
    list(lustre@internals@vdom:attribute(PVQ)),
    list(lustre@internals@vdom:element(PVQ))
) -> lustre@internals@vdom:element(PVQ).
search(Attrs, Children) ->
    lustre@element:element(<<"search"/utf8>>, Attrs, Children).

-spec blockquote(
    list(lustre@internals@vdom:attribute(PVW)),
    list(lustre@internals@vdom:element(PVW))
) -> lustre@internals@vdom:element(PVW).
blockquote(Attrs, Children) ->
    lustre@element:element(<<"blockquote"/utf8>>, Attrs, Children).

-spec dd(
    list(lustre@internals@vdom:attribute(PWC)),
    list(lustre@internals@vdom:element(PWC))
) -> lustre@internals@vdom:element(PWC).
dd(Attrs, Children) ->
    lustre@element:element(<<"dd"/utf8>>, Attrs, Children).

-spec 'div'(
    list(lustre@internals@vdom:attribute(PWI)),
    list(lustre@internals@vdom:element(PWI))
) -> lustre@internals@vdom:element(PWI).
'div'(Attrs, Children) ->
    lustre@element:element(<<"div"/utf8>>, Attrs, Children).

-spec dl(
    list(lustre@internals@vdom:attribute(PWO)),
    list(lustre@internals@vdom:element(PWO))
) -> lustre@internals@vdom:element(PWO).
dl(Attrs, Children) ->
    lustre@element:element(<<"dl"/utf8>>, Attrs, Children).

-spec dt(
    list(lustre@internals@vdom:attribute(PWU)),
    list(lustre@internals@vdom:element(PWU))
) -> lustre@internals@vdom:element(PWU).
dt(Attrs, Children) ->
    lustre@element:element(<<"dt"/utf8>>, Attrs, Children).

-spec figcaption(
    list(lustre@internals@vdom:attribute(PXA)),
    list(lustre@internals@vdom:element(PXA))
) -> lustre@internals@vdom:element(PXA).
figcaption(Attrs, Children) ->
    lustre@element:element(<<"figcaption"/utf8>>, Attrs, Children).

-spec figure(
    list(lustre@internals@vdom:attribute(PXG)),
    list(lustre@internals@vdom:element(PXG))
) -> lustre@internals@vdom:element(PXG).
figure(Attrs, Children) ->
    lustre@element:element(<<"figure"/utf8>>, Attrs, Children).

-spec hr(list(lustre@internals@vdom:attribute(PXM))) -> lustre@internals@vdom:element(PXM).
hr(Attrs) ->
    lustre@element:element(<<"hr"/utf8>>, Attrs, []).

-spec li(
    list(lustre@internals@vdom:attribute(PXQ)),
    list(lustre@internals@vdom:element(PXQ))
) -> lustre@internals@vdom:element(PXQ).
li(Attrs, Children) ->
    lustre@element:element(<<"li"/utf8>>, Attrs, Children).

-spec menu(
    list(lustre@internals@vdom:attribute(PXW)),
    list(lustre@internals@vdom:element(PXW))
) -> lustre@internals@vdom:element(PXW).
menu(Attrs, Children) ->
    lustre@element:element(<<"menu"/utf8>>, Attrs, Children).

-spec ol(
    list(lustre@internals@vdom:attribute(PYC)),
    list(lustre@internals@vdom:element(PYC))
) -> lustre@internals@vdom:element(PYC).
ol(Attrs, Children) ->
    lustre@element:element(<<"ol"/utf8>>, Attrs, Children).

-spec p(
    list(lustre@internals@vdom:attribute(PYI)),
    list(lustre@internals@vdom:element(PYI))
) -> lustre@internals@vdom:element(PYI).
p(Attrs, Children) ->
    lustre@element:element(<<"p"/utf8>>, Attrs, Children).

-spec pre(
    list(lustre@internals@vdom:attribute(PYO)),
    list(lustre@internals@vdom:element(PYO))
) -> lustre@internals@vdom:element(PYO).
pre(Attrs, Children) ->
    lustre@element:element(<<"pre"/utf8>>, Attrs, Children).

-spec ul(
    list(lustre@internals@vdom:attribute(PYU)),
    list(lustre@internals@vdom:element(PYU))
) -> lustre@internals@vdom:element(PYU).
ul(Attrs, Children) ->
    lustre@element:element(<<"ul"/utf8>>, Attrs, Children).

-spec a(
    list(lustre@internals@vdom:attribute(PZA)),
    list(lustre@internals@vdom:element(PZA))
) -> lustre@internals@vdom:element(PZA).
a(Attrs, Children) ->
    lustre@element:element(<<"a"/utf8>>, Attrs, Children).

-spec abbr(
    list(lustre@internals@vdom:attribute(PZG)),
    list(lustre@internals@vdom:element(PZG))
) -> lustre@internals@vdom:element(PZG).
abbr(Attrs, Children) ->
    lustre@element:element(<<"abbr"/utf8>>, Attrs, Children).

-spec b(
    list(lustre@internals@vdom:attribute(PZM)),
    list(lustre@internals@vdom:element(PZM))
) -> lustre@internals@vdom:element(PZM).
b(Attrs, Children) ->
    lustre@element:element(<<"b"/utf8>>, Attrs, Children).

-spec bdi(
    list(lustre@internals@vdom:attribute(PZS)),
    list(lustre@internals@vdom:element(PZS))
) -> lustre@internals@vdom:element(PZS).
bdi(Attrs, Children) ->
    lustre@element:element(<<"bdi"/utf8>>, Attrs, Children).

-spec bdo(
    list(lustre@internals@vdom:attribute(PZY)),
    list(lustre@internals@vdom:element(PZY))
) -> lustre@internals@vdom:element(PZY).
bdo(Attrs, Children) ->
    lustre@element:element(<<"bdo"/utf8>>, Attrs, Children).

-spec br(list(lustre@internals@vdom:attribute(QAE))) -> lustre@internals@vdom:element(QAE).
br(Attrs) ->
    lustre@element:element(<<"br"/utf8>>, Attrs, []).

-spec cite(
    list(lustre@internals@vdom:attribute(QAI)),
    list(lustre@internals@vdom:element(QAI))
) -> lustre@internals@vdom:element(QAI).
cite(Attrs, Children) ->
    lustre@element:element(<<"cite"/utf8>>, Attrs, Children).

-spec code(
    list(lustre@internals@vdom:attribute(QAO)),
    list(lustre@internals@vdom:element(QAO))
) -> lustre@internals@vdom:element(QAO).
code(Attrs, Children) ->
    lustre@element:element(<<"code"/utf8>>, Attrs, Children).

-spec data(
    list(lustre@internals@vdom:attribute(QAU)),
    list(lustre@internals@vdom:element(QAU))
) -> lustre@internals@vdom:element(QAU).
data(Attrs, Children) ->
    lustre@element:element(<<"data"/utf8>>, Attrs, Children).

-spec dfn(
    list(lustre@internals@vdom:attribute(QBA)),
    list(lustre@internals@vdom:element(QBA))
) -> lustre@internals@vdom:element(QBA).
dfn(Attrs, Children) ->
    lustre@element:element(<<"dfn"/utf8>>, Attrs, Children).

-spec em(
    list(lustre@internals@vdom:attribute(QBG)),
    list(lustre@internals@vdom:element(QBG))
) -> lustre@internals@vdom:element(QBG).
em(Attrs, Children) ->
    lustre@element:element(<<"em"/utf8>>, Attrs, Children).

-spec i(
    list(lustre@internals@vdom:attribute(QBM)),
    list(lustre@internals@vdom:element(QBM))
) -> lustre@internals@vdom:element(QBM).
i(Attrs, Children) ->
    lustre@element:element(<<"i"/utf8>>, Attrs, Children).

-spec kbd(
    list(lustre@internals@vdom:attribute(QBS)),
    list(lustre@internals@vdom:element(QBS))
) -> lustre@internals@vdom:element(QBS).
kbd(Attrs, Children) ->
    lustre@element:element(<<"kbd"/utf8>>, Attrs, Children).

-spec mark(
    list(lustre@internals@vdom:attribute(QBY)),
    list(lustre@internals@vdom:element(QBY))
) -> lustre@internals@vdom:element(QBY).
mark(Attrs, Children) ->
    lustre@element:element(<<"mark"/utf8>>, Attrs, Children).

-spec q(
    list(lustre@internals@vdom:attribute(QCE)),
    list(lustre@internals@vdom:element(QCE))
) -> lustre@internals@vdom:element(QCE).
q(Attrs, Children) ->
    lustre@element:element(<<"q"/utf8>>, Attrs, Children).

-spec rp(
    list(lustre@internals@vdom:attribute(QCK)),
    list(lustre@internals@vdom:element(QCK))
) -> lustre@internals@vdom:element(QCK).
rp(Attrs, Children) ->
    lustre@element:element(<<"rp"/utf8>>, Attrs, Children).

-spec rt(
    list(lustre@internals@vdom:attribute(QCQ)),
    list(lustre@internals@vdom:element(QCQ))
) -> lustre@internals@vdom:element(QCQ).
rt(Attrs, Children) ->
    lustre@element:element(<<"rt"/utf8>>, Attrs, Children).

-spec ruby(
    list(lustre@internals@vdom:attribute(QCW)),
    list(lustre@internals@vdom:element(QCW))
) -> lustre@internals@vdom:element(QCW).
ruby(Attrs, Children) ->
    lustre@element:element(<<"ruby"/utf8>>, Attrs, Children).

-spec s(
    list(lustre@internals@vdom:attribute(QDC)),
    list(lustre@internals@vdom:element(QDC))
) -> lustre@internals@vdom:element(QDC).
s(Attrs, Children) ->
    lustre@element:element(<<"s"/utf8>>, Attrs, Children).

-spec samp(
    list(lustre@internals@vdom:attribute(QDI)),
    list(lustre@internals@vdom:element(QDI))
) -> lustre@internals@vdom:element(QDI).
samp(Attrs, Children) ->
    lustre@element:element(<<"samp"/utf8>>, Attrs, Children).

-spec small(
    list(lustre@internals@vdom:attribute(QDO)),
    list(lustre@internals@vdom:element(QDO))
) -> lustre@internals@vdom:element(QDO).
small(Attrs, Children) ->
    lustre@element:element(<<"small"/utf8>>, Attrs, Children).

-spec span(
    list(lustre@internals@vdom:attribute(QDU)),
    list(lustre@internals@vdom:element(QDU))
) -> lustre@internals@vdom:element(QDU).
span(Attrs, Children) ->
    lustre@element:element(<<"span"/utf8>>, Attrs, Children).

-spec strong(
    list(lustre@internals@vdom:attribute(QEA)),
    list(lustre@internals@vdom:element(QEA))
) -> lustre@internals@vdom:element(QEA).
strong(Attrs, Children) ->
    lustre@element:element(<<"strong"/utf8>>, Attrs, Children).

-spec sub(
    list(lustre@internals@vdom:attribute(QEG)),
    list(lustre@internals@vdom:element(QEG))
) -> lustre@internals@vdom:element(QEG).
sub(Attrs, Children) ->
    lustre@element:element(<<"sub"/utf8>>, Attrs, Children).

-spec sup(
    list(lustre@internals@vdom:attribute(QEM)),
    list(lustre@internals@vdom:element(QEM))
) -> lustre@internals@vdom:element(QEM).
sup(Attrs, Children) ->
    lustre@element:element(<<"sup"/utf8>>, Attrs, Children).

-spec time(
    list(lustre@internals@vdom:attribute(QES)),
    list(lustre@internals@vdom:element(QES))
) -> lustre@internals@vdom:element(QES).
time(Attrs, Children) ->
    lustre@element:element(<<"time"/utf8>>, Attrs, Children).

-spec u(
    list(lustre@internals@vdom:attribute(QEY)),
    list(lustre@internals@vdom:element(QEY))
) -> lustre@internals@vdom:element(QEY).
u(Attrs, Children) ->
    lustre@element:element(<<"u"/utf8>>, Attrs, Children).

-spec var(
    list(lustre@internals@vdom:attribute(QFE)),
    list(lustre@internals@vdom:element(QFE))
) -> lustre@internals@vdom:element(QFE).
var(Attrs, Children) ->
    lustre@element:element(<<"var"/utf8>>, Attrs, Children).

-spec wbr(list(lustre@internals@vdom:attribute(QFK))) -> lustre@internals@vdom:element(QFK).
wbr(Attrs) ->
    lustre@element:element(<<"wbr"/utf8>>, Attrs, []).

-spec area(list(lustre@internals@vdom:attribute(QFO))) -> lustre@internals@vdom:element(QFO).
area(Attrs) ->
    lustre@element:element(<<"area"/utf8>>, Attrs, []).

-spec audio(
    list(lustre@internals@vdom:attribute(QFS)),
    list(lustre@internals@vdom:element(QFS))
) -> lustre@internals@vdom:element(QFS).
audio(Attrs, Children) ->
    lustre@element:element(<<"audio"/utf8>>, Attrs, Children).

-spec img(list(lustre@internals@vdom:attribute(QFY))) -> lustre@internals@vdom:element(QFY).
img(Attrs) ->
    lustre@element:element(<<"img"/utf8>>, Attrs, []).

-spec map(
    list(lustre@internals@vdom:attribute(QGC)),
    list(lustre@internals@vdom:element(QGC))
) -> lustre@internals@vdom:element(QGC).
map(Attrs, Children) ->
    lustre@element:element(<<"map"/utf8>>, Attrs, Children).

-spec track(list(lustre@internals@vdom:attribute(QGI))) -> lustre@internals@vdom:element(QGI).
track(Attrs) ->
    lustre@element:element(<<"track"/utf8>>, Attrs, []).

-spec video(
    list(lustre@internals@vdom:attribute(QGM)),
    list(lustre@internals@vdom:element(QGM))
) -> lustre@internals@vdom:element(QGM).
video(Attrs, Children) ->
    lustre@element:element(<<"video"/utf8>>, Attrs, Children).

-spec embed(list(lustre@internals@vdom:attribute(QGS))) -> lustre@internals@vdom:element(QGS).
embed(Attrs) ->
    lustre@element:element(<<"embed"/utf8>>, Attrs, []).

-spec iframe(list(lustre@internals@vdom:attribute(QGW))) -> lustre@internals@vdom:element(QGW).
iframe(Attrs) ->
    lustre@element:element(<<"iframe"/utf8>>, Attrs, []).

-spec object(list(lustre@internals@vdom:attribute(QHA))) -> lustre@internals@vdom:element(QHA).
object(Attrs) ->
    lustre@element:element(<<"object"/utf8>>, Attrs, []).

-spec picture(
    list(lustre@internals@vdom:attribute(QHE)),
    list(lustre@internals@vdom:element(QHE))
) -> lustre@internals@vdom:element(QHE).
picture(Attrs, Children) ->
    lustre@element:element(<<"picture"/utf8>>, Attrs, Children).

-spec portal(list(lustre@internals@vdom:attribute(QHK))) -> lustre@internals@vdom:element(QHK).
portal(Attrs) ->
    lustre@element:element(<<"portal"/utf8>>, Attrs, []).

-spec source(list(lustre@internals@vdom:attribute(QHO))) -> lustre@internals@vdom:element(QHO).
source(Attrs) ->
    lustre@element:element(<<"source"/utf8>>, Attrs, []).

-spec svg(
    list(lustre@internals@vdom:attribute(QHS)),
    list(lustre@internals@vdom:element(QHS))
) -> lustre@internals@vdom:element(QHS).
svg(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"svg"/utf8>>,
        Attrs,
        Children
    ).

-spec math(
    list(lustre@internals@vdom:attribute(QHY)),
    list(lustre@internals@vdom:element(QHY))
) -> lustre@internals@vdom:element(QHY).
math(Attrs, Children) ->
    lustre@element:element(<<"math"/utf8>>, Attrs, Children).

-spec canvas(list(lustre@internals@vdom:attribute(QIE))) -> lustre@internals@vdom:element(QIE).
canvas(Attrs) ->
    lustre@element:element(<<"canvas"/utf8>>, Attrs, []).

-spec noscript(
    list(lustre@internals@vdom:attribute(QII)),
    list(lustre@internals@vdom:element(QII))
) -> lustre@internals@vdom:element(QII).
noscript(Attrs, Children) ->
    lustre@element:element(<<"noscript"/utf8>>, Attrs, Children).

-spec script(list(lustre@internals@vdom:attribute(QIO)), binary()) -> lustre@internals@vdom:element(QIO).
script(Attrs, Js) ->
    lustre@element:element(<<"script"/utf8>>, Attrs, [text(Js)]).

-spec del(
    list(lustre@internals@vdom:attribute(QIS)),
    list(lustre@internals@vdom:element(QIS))
) -> lustre@internals@vdom:element(QIS).
del(Attrs, Children) ->
    lustre@element:element(<<"del"/utf8>>, Attrs, Children).

-spec ins(
    list(lustre@internals@vdom:attribute(QIY)),
    list(lustre@internals@vdom:element(QIY))
) -> lustre@internals@vdom:element(QIY).
ins(Attrs, Children) ->
    lustre@element:element(<<"ins"/utf8>>, Attrs, Children).

-spec caption(
    list(lustre@internals@vdom:attribute(QJE)),
    list(lustre@internals@vdom:element(QJE))
) -> lustre@internals@vdom:element(QJE).
caption(Attrs, Children) ->
    lustre@element:element(<<"caption"/utf8>>, Attrs, Children).

-spec col(list(lustre@internals@vdom:attribute(QJK))) -> lustre@internals@vdom:element(QJK).
col(Attrs) ->
    lustre@element:element(<<"col"/utf8>>, Attrs, []).

-spec colgroup(
    list(lustre@internals@vdom:attribute(QJO)),
    list(lustre@internals@vdom:element(QJO))
) -> lustre@internals@vdom:element(QJO).
colgroup(Attrs, Children) ->
    lustre@element:element(<<"colgroup"/utf8>>, Attrs, Children).

-spec table(
    list(lustre@internals@vdom:attribute(QJU)),
    list(lustre@internals@vdom:element(QJU))
) -> lustre@internals@vdom:element(QJU).
table(Attrs, Children) ->
    lustre@element:element(<<"table"/utf8>>, Attrs, Children).

-spec tbody(
    list(lustre@internals@vdom:attribute(QKA)),
    list(lustre@internals@vdom:element(QKA))
) -> lustre@internals@vdom:element(QKA).
tbody(Attrs, Children) ->
    lustre@element:element(<<"tbody"/utf8>>, Attrs, Children).

-spec td(
    list(lustre@internals@vdom:attribute(QKG)),
    list(lustre@internals@vdom:element(QKG))
) -> lustre@internals@vdom:element(QKG).
td(Attrs, Children) ->
    lustre@element:element(<<"td"/utf8>>, Attrs, Children).

-spec tfoot(
    list(lustre@internals@vdom:attribute(QKM)),
    list(lustre@internals@vdom:element(QKM))
) -> lustre@internals@vdom:element(QKM).
tfoot(Attrs, Children) ->
    lustre@element:element(<<"tfoot"/utf8>>, Attrs, Children).

-spec th(
    list(lustre@internals@vdom:attribute(QKS)),
    list(lustre@internals@vdom:element(QKS))
) -> lustre@internals@vdom:element(QKS).
th(Attrs, Children) ->
    lustre@element:element(<<"th"/utf8>>, Attrs, Children).

-spec thead(
    list(lustre@internals@vdom:attribute(QKY)),
    list(lustre@internals@vdom:element(QKY))
) -> lustre@internals@vdom:element(QKY).
thead(Attrs, Children) ->
    lustre@element:element(<<"thead"/utf8>>, Attrs, Children).

-spec tr(
    list(lustre@internals@vdom:attribute(QLE)),
    list(lustre@internals@vdom:element(QLE))
) -> lustre@internals@vdom:element(QLE).
tr(Attrs, Children) ->
    lustre@element:element(<<"tr"/utf8>>, Attrs, Children).

-spec button(
    list(lustre@internals@vdom:attribute(QLK)),
    list(lustre@internals@vdom:element(QLK))
) -> lustre@internals@vdom:element(QLK).
button(Attrs, Children) ->
    lustre@element:element(<<"button"/utf8>>, Attrs, Children).

-spec datalist(
    list(lustre@internals@vdom:attribute(QLQ)),
    list(lustre@internals@vdom:element(QLQ))
) -> lustre@internals@vdom:element(QLQ).
datalist(Attrs, Children) ->
    lustre@element:element(<<"datalist"/utf8>>, Attrs, Children).

-spec fieldset(
    list(lustre@internals@vdom:attribute(QLW)),
    list(lustre@internals@vdom:element(QLW))
) -> lustre@internals@vdom:element(QLW).
fieldset(Attrs, Children) ->
    lustre@element:element(<<"fieldset"/utf8>>, Attrs, Children).

-spec form(
    list(lustre@internals@vdom:attribute(QMC)),
    list(lustre@internals@vdom:element(QMC))
) -> lustre@internals@vdom:element(QMC).
form(Attrs, Children) ->
    lustre@element:element(<<"form"/utf8>>, Attrs, Children).

-spec input(list(lustre@internals@vdom:attribute(QMI))) -> lustre@internals@vdom:element(QMI).
input(Attrs) ->
    lustre@element:element(<<"input"/utf8>>, Attrs, []).

-spec label(
    list(lustre@internals@vdom:attribute(QMM)),
    list(lustre@internals@vdom:element(QMM))
) -> lustre@internals@vdom:element(QMM).
label(Attrs, Children) ->
    lustre@element:element(<<"label"/utf8>>, Attrs, Children).

-spec legend(
    list(lustre@internals@vdom:attribute(QMS)),
    list(lustre@internals@vdom:element(QMS))
) -> lustre@internals@vdom:element(QMS).
legend(Attrs, Children) ->
    lustre@element:element(<<"legend"/utf8>>, Attrs, Children).

-spec meter(
    list(lustre@internals@vdom:attribute(QMY)),
    list(lustre@internals@vdom:element(QMY))
) -> lustre@internals@vdom:element(QMY).
meter(Attrs, Children) ->
    lustre@element:element(<<"meter"/utf8>>, Attrs, Children).

-spec optgroup(
    list(lustre@internals@vdom:attribute(QNE)),
    list(lustre@internals@vdom:element(QNE))
) -> lustre@internals@vdom:element(QNE).
optgroup(Attrs, Children) ->
    lustre@element:element(<<"optgroup"/utf8>>, Attrs, Children).

-spec option(list(lustre@internals@vdom:attribute(QNK)), binary()) -> lustre@internals@vdom:element(QNK).
option(Attrs, Label) ->
    lustre@element:element(
        <<"option"/utf8>>,
        Attrs,
        [lustre@element:text(Label)]
    ).

-spec output(
    list(lustre@internals@vdom:attribute(QNO)),
    list(lustre@internals@vdom:element(QNO))
) -> lustre@internals@vdom:element(QNO).
output(Attrs, Children) ->
    lustre@element:element(<<"output"/utf8>>, Attrs, Children).

-spec progress(
    list(lustre@internals@vdom:attribute(QNU)),
    list(lustre@internals@vdom:element(QNU))
) -> lustre@internals@vdom:element(QNU).
progress(Attrs, Children) ->
    lustre@element:element(<<"progress"/utf8>>, Attrs, Children).

-spec select(
    list(lustre@internals@vdom:attribute(QOA)),
    list(lustre@internals@vdom:element(QOA))
) -> lustre@internals@vdom:element(QOA).
select(Attrs, Children) ->
    lustre@element:element(<<"select"/utf8>>, Attrs, Children).

-spec textarea(list(lustre@internals@vdom:attribute(QOG)), binary()) -> lustre@internals@vdom:element(QOG).
textarea(Attrs, Content) ->
    lustre@element:element(
        <<"textarea"/utf8>>,
        Attrs,
        [lustre@element:text(Content)]
    ).

-spec details(
    list(lustre@internals@vdom:attribute(QOK)),
    list(lustre@internals@vdom:element(QOK))
) -> lustre@internals@vdom:element(QOK).
details(Attrs, Children) ->
    lustre@element:element(<<"details"/utf8>>, Attrs, Children).

-spec dialog(
    list(lustre@internals@vdom:attribute(QOQ)),
    list(lustre@internals@vdom:element(QOQ))
) -> lustre@internals@vdom:element(QOQ).
dialog(Attrs, Children) ->
    lustre@element:element(<<"dialog"/utf8>>, Attrs, Children).

-spec summary(
    list(lustre@internals@vdom:attribute(QOW)),
    list(lustre@internals@vdom:element(QOW))
) -> lustre@internals@vdom:element(QOW).
summary(Attrs, Children) ->
    lustre@element:element(<<"summary"/utf8>>, Attrs, Children).

-spec slot(list(lustre@internals@vdom:attribute(QPC))) -> lustre@internals@vdom:element(QPC).
slot(Attrs) ->
    lustre@element:element(<<"slot"/utf8>>, Attrs, []).

-spec template(
    list(lustre@internals@vdom:attribute(QPG)),
    list(lustre@internals@vdom:element(QPG))
) -> lustre@internals@vdom:element(QPG).
template(Attrs, Children) ->
    lustre@element:element(<<"template"/utf8>>, Attrs, Children).
