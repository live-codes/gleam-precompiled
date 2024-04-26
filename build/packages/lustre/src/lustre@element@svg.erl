-module(lustre@element@svg).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([animate/1, animate_motion/1, animate_transform/1, mpath/1, set/1, circle/1, ellipse/1, line/1, polygon/1, polyline/1, rect/1, a/2, defs/2, g/2, marker/2, mask/2, missing_glyph/2, pattern/2, svg/2, switch/2, symbol/2, desc/2, metadata/2, title/2, fe_blend/1, fe_color_matrix/1, fe_component_transfer/1, fe_composite/1, fe_convolve_matrix/1, fe_diffuse_lighting/2, fe_displacement_map/1, fe_drop_shadow/1, fe_flood/1, fe_func_a/1, fe_func_b/1, fe_func_g/1, fe_func_r/1, fe_gaussian_blur/1, fe_image/1, fe_merge/2, fe_merge_node/1, fe_morphology/1, fe_offset/1, fe_specular_lighting/2, fe_tile/2, fe_turbulence/1, linear_gradient/2, radial_gradient/2, stop/1, image/1, path/1, text/2, use_/1, fe_distant_light/1, fe_point_light/1, fe_spot_light/1, clip_path/2, script/2, style/2, foreign_object/2, text_path/2, tspan/2]).

-spec animate(list(lustre@internals@vdom:attribute(QWJ))) -> lustre@internals@vdom:element(QWJ).
animate(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animate"/utf8>>,
        Attrs,
        []
    ).

-spec animate_motion(list(lustre@internals@vdom:attribute(QWN))) -> lustre@internals@vdom:element(QWN).
animate_motion(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animateMotion"/utf8>>,
        Attrs,
        []
    ).

-spec animate_transform(list(lustre@internals@vdom:attribute(QWR))) -> lustre@internals@vdom:element(QWR).
animate_transform(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"animateTransform"/utf8>>,
        Attrs,
        []
    ).

-spec mpath(list(lustre@internals@vdom:attribute(QWV))) -> lustre@internals@vdom:element(QWV).
mpath(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"mpath"/utf8>>,
        Attrs,
        []
    ).

-spec set(list(lustre@internals@vdom:attribute(QWZ))) -> lustre@internals@vdom:element(QWZ).
set(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"set"/utf8>>,
        Attrs,
        []
    ).

-spec circle(list(lustre@internals@vdom:attribute(QXD))) -> lustre@internals@vdom:element(QXD).
circle(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"circle"/utf8>>,
        Attrs,
        []
    ).

-spec ellipse(list(lustre@internals@vdom:attribute(QXH))) -> lustre@internals@vdom:element(QXH).
ellipse(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"ellipse"/utf8>>,
        Attrs,
        []
    ).

-spec line(list(lustre@internals@vdom:attribute(QXL))) -> lustre@internals@vdom:element(QXL).
line(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"line"/utf8>>,
        Attrs,
        []
    ).

-spec polygon(list(lustre@internals@vdom:attribute(QXP))) -> lustre@internals@vdom:element(QXP).
polygon(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"polygon"/utf8>>,
        Attrs,
        []
    ).

-spec polyline(list(lustre@internals@vdom:attribute(QXT))) -> lustre@internals@vdom:element(QXT).
polyline(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"polyline"/utf8>>,
        Attrs,
        []
    ).

-spec rect(list(lustre@internals@vdom:attribute(QXX))) -> lustre@internals@vdom:element(QXX).
rect(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"rect"/utf8>>,
        Attrs,
        []
    ).

-spec a(
    list(lustre@internals@vdom:attribute(QYB)),
    list(lustre@internals@vdom:element(QYB))
) -> lustre@internals@vdom:element(QYB).
a(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"a"/utf8>>,
        Attrs,
        Children
    ).

-spec defs(
    list(lustre@internals@vdom:attribute(QYH)),
    list(lustre@internals@vdom:element(QYH))
) -> lustre@internals@vdom:element(QYH).
defs(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"defs"/utf8>>,
        Attrs,
        Children
    ).

-spec g(
    list(lustre@internals@vdom:attribute(QYN)),
    list(lustre@internals@vdom:element(QYN))
) -> lustre@internals@vdom:element(QYN).
g(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"g"/utf8>>,
        Attrs,
        Children
    ).

-spec marker(
    list(lustre@internals@vdom:attribute(QYT)),
    list(lustre@internals@vdom:element(QYT))
) -> lustre@internals@vdom:element(QYT).
marker(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"marker"/utf8>>,
        Attrs,
        Children
    ).

-spec mask(
    list(lustre@internals@vdom:attribute(QYZ)),
    list(lustre@internals@vdom:element(QYZ))
) -> lustre@internals@vdom:element(QYZ).
mask(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"mask"/utf8>>,
        Attrs,
        Children
    ).

-spec missing_glyph(
    list(lustre@internals@vdom:attribute(QZF)),
    list(lustre@internals@vdom:element(QZF))
) -> lustre@internals@vdom:element(QZF).
missing_glyph(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"missing-glyph"/utf8>>,
        Attrs,
        Children
    ).

-spec pattern(
    list(lustre@internals@vdom:attribute(QZL)),
    list(lustre@internals@vdom:element(QZL))
) -> lustre@internals@vdom:element(QZL).
pattern(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"pattern"/utf8>>,
        Attrs,
        Children
    ).

-spec svg(
    list(lustre@internals@vdom:attribute(QZR)),
    list(lustre@internals@vdom:element(QZR))
) -> lustre@internals@vdom:element(QZR).
svg(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"svg"/utf8>>,
        Attrs,
        Children
    ).

-spec switch(
    list(lustre@internals@vdom:attribute(QZX)),
    list(lustre@internals@vdom:element(QZX))
) -> lustre@internals@vdom:element(QZX).
switch(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"switch"/utf8>>,
        Attrs,
        Children
    ).

-spec symbol(
    list(lustre@internals@vdom:attribute(RAD)),
    list(lustre@internals@vdom:element(RAD))
) -> lustre@internals@vdom:element(RAD).
symbol(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"symbol"/utf8>>,
        Attrs,
        Children
    ).

-spec desc(
    list(lustre@internals@vdom:attribute(RAJ)),
    list(lustre@internals@vdom:element(RAJ))
) -> lustre@internals@vdom:element(RAJ).
desc(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"desc"/utf8>>,
        Attrs,
        Children
    ).

-spec metadata(
    list(lustre@internals@vdom:attribute(RAP)),
    list(lustre@internals@vdom:element(RAP))
) -> lustre@internals@vdom:element(RAP).
metadata(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"metadata"/utf8>>,
        Attrs,
        Children
    ).

-spec title(
    list(lustre@internals@vdom:attribute(RAV)),
    list(lustre@internals@vdom:element(RAV))
) -> lustre@internals@vdom:element(RAV).
title(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"title"/utf8>>,
        Attrs,
        Children
    ).

-spec fe_blend(list(lustre@internals@vdom:attribute(RBB))) -> lustre@internals@vdom:element(RBB).
fe_blend(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feBlend"/utf8>>,
        Attrs,
        []
    ).

-spec fe_color_matrix(list(lustre@internals@vdom:attribute(RBF))) -> lustre@internals@vdom:element(RBF).
fe_color_matrix(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feColorMatrix"/utf8>>,
        Attrs,
        []
    ).

-spec fe_component_transfer(list(lustre@internals@vdom:attribute(RBJ))) -> lustre@internals@vdom:element(RBJ).
fe_component_transfer(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feComponentTransfer"/utf8>>,
        Attrs,
        []
    ).

-spec fe_composite(list(lustre@internals@vdom:attribute(RBN))) -> lustre@internals@vdom:element(RBN).
fe_composite(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feComposite"/utf8>>,
        Attrs,
        []
    ).

-spec fe_convolve_matrix(list(lustre@internals@vdom:attribute(RBR))) -> lustre@internals@vdom:element(RBR).
fe_convolve_matrix(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feConvolveMatrix"/utf8>>,
        Attrs,
        []
    ).

-spec fe_diffuse_lighting(
    list(lustre@internals@vdom:attribute(RBV)),
    list(lustre@internals@vdom:element(RBV))
) -> lustre@internals@vdom:element(RBV).
fe_diffuse_lighting(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDiffuseLighting"/utf8>>,
        Attrs,
        Children
    ).

-spec fe_displacement_map(list(lustre@internals@vdom:attribute(RCB))) -> lustre@internals@vdom:element(RCB).
fe_displacement_map(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDisplacementMap"/utf8>>,
        Attrs,
        []
    ).

-spec fe_drop_shadow(list(lustre@internals@vdom:attribute(RCF))) -> lustre@internals@vdom:element(RCF).
fe_drop_shadow(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDropShadow"/utf8>>,
        Attrs,
        []
    ).

-spec fe_flood(list(lustre@internals@vdom:attribute(RCJ))) -> lustre@internals@vdom:element(RCJ).
fe_flood(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFlood"/utf8>>,
        Attrs,
        []
    ).

-spec fe_func_a(list(lustre@internals@vdom:attribute(RCN))) -> lustre@internals@vdom:element(RCN).
fe_func_a(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncA"/utf8>>,
        Attrs,
        []
    ).

-spec fe_func_b(list(lustre@internals@vdom:attribute(RCR))) -> lustre@internals@vdom:element(RCR).
fe_func_b(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncB"/utf8>>,
        Attrs,
        []
    ).

-spec fe_func_g(list(lustre@internals@vdom:attribute(RCV))) -> lustre@internals@vdom:element(RCV).
fe_func_g(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncG"/utf8>>,
        Attrs,
        []
    ).

-spec fe_func_r(list(lustre@internals@vdom:attribute(RCZ))) -> lustre@internals@vdom:element(RCZ).
fe_func_r(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feFuncR"/utf8>>,
        Attrs,
        []
    ).

-spec fe_gaussian_blur(list(lustre@internals@vdom:attribute(RDD))) -> lustre@internals@vdom:element(RDD).
fe_gaussian_blur(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feGaussianBlur"/utf8>>,
        Attrs,
        []
    ).

-spec fe_image(list(lustre@internals@vdom:attribute(RDH))) -> lustre@internals@vdom:element(RDH).
fe_image(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feImage"/utf8>>,
        Attrs,
        []
    ).

-spec fe_merge(
    list(lustre@internals@vdom:attribute(RDL)),
    list(lustre@internals@vdom:element(RDL))
) -> lustre@internals@vdom:element(RDL).
fe_merge(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMerge"/utf8>>,
        Attrs,
        Children
    ).

-spec fe_merge_node(list(lustre@internals@vdom:attribute(RDR))) -> lustre@internals@vdom:element(RDR).
fe_merge_node(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMergeNode"/utf8>>,
        Attrs,
        []
    ).

-spec fe_morphology(list(lustre@internals@vdom:attribute(RDV))) -> lustre@internals@vdom:element(RDV).
fe_morphology(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feMorphology"/utf8>>,
        Attrs,
        []
    ).

-spec fe_offset(list(lustre@internals@vdom:attribute(RDZ))) -> lustre@internals@vdom:element(RDZ).
fe_offset(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feOffset"/utf8>>,
        Attrs,
        []
    ).

-spec fe_specular_lighting(
    list(lustre@internals@vdom:attribute(RED)),
    list(lustre@internals@vdom:element(RED))
) -> lustre@internals@vdom:element(RED).
fe_specular_lighting(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feSpecularLighting"/utf8>>,
        Attrs,
        Children
    ).

-spec fe_tile(
    list(lustre@internals@vdom:attribute(REJ)),
    list(lustre@internals@vdom:element(REJ))
) -> lustre@internals@vdom:element(REJ).
fe_tile(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feTile"/utf8>>,
        Attrs,
        Children
    ).

-spec fe_turbulence(list(lustre@internals@vdom:attribute(REP))) -> lustre@internals@vdom:element(REP).
fe_turbulence(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feTurbulence"/utf8>>,
        Attrs,
        []
    ).

-spec linear_gradient(
    list(lustre@internals@vdom:attribute(RET)),
    list(lustre@internals@vdom:element(RET))
) -> lustre@internals@vdom:element(RET).
linear_gradient(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"linearGradient"/utf8>>,
        Attrs,
        Children
    ).

-spec radial_gradient(
    list(lustre@internals@vdom:attribute(REZ)),
    list(lustre@internals@vdom:element(REZ))
) -> lustre@internals@vdom:element(REZ).
radial_gradient(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"radialGradient"/utf8>>,
        Attrs,
        Children
    ).

-spec stop(list(lustre@internals@vdom:attribute(RFF))) -> lustre@internals@vdom:element(RFF).
stop(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"stop"/utf8>>,
        Attrs,
        []
    ).

-spec image(list(lustre@internals@vdom:attribute(RFJ))) -> lustre@internals@vdom:element(RFJ).
image(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"image"/utf8>>,
        Attrs,
        []
    ).

-spec path(list(lustre@internals@vdom:attribute(RFN))) -> lustre@internals@vdom:element(RFN).
path(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"path"/utf8>>,
        Attrs,
        []
    ).

-spec text(list(lustre@internals@vdom:attribute(RFR)), binary()) -> lustre@internals@vdom:element(RFR).
text(Attrs, Content) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"text"/utf8>>,
        Attrs,
        [lustre@element:text(Content)]
    ).

-spec use_(list(lustre@internals@vdom:attribute(RFV))) -> lustre@internals@vdom:element(RFV).
use_(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"use"/utf8>>,
        Attrs,
        []
    ).

-spec fe_distant_light(list(lustre@internals@vdom:attribute(RFZ))) -> lustre@internals@vdom:element(RFZ).
fe_distant_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feDistantLight"/utf8>>,
        Attrs,
        []
    ).

-spec fe_point_light(list(lustre@internals@vdom:attribute(RGD))) -> lustre@internals@vdom:element(RGD).
fe_point_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"fePointLight"/utf8>>,
        Attrs,
        []
    ).

-spec fe_spot_light(list(lustre@internals@vdom:attribute(RGH))) -> lustre@internals@vdom:element(RGH).
fe_spot_light(Attrs) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"feSpotLight"/utf8>>,
        Attrs,
        []
    ).

-spec clip_path(
    list(lustre@internals@vdom:attribute(RGL)),
    list(lustre@internals@vdom:element(RGL))
) -> lustre@internals@vdom:element(RGL).
clip_path(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"clipPath"/utf8>>,
        Attrs,
        Children
    ).

-spec script(list(lustre@internals@vdom:attribute(RGR)), binary()) -> lustre@internals@vdom:element(RGR).
script(Attrs, Js) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"script"/utf8>>,
        Attrs,
        [lustre@element:text(Js)]
    ).

-spec style(list(lustre@internals@vdom:attribute(RGV)), binary()) -> lustre@internals@vdom:element(RGV).
style(Attrs, Css) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"style"/utf8>>,
        Attrs,
        [lustre@element:text(Css)]
    ).

-spec foreign_object(
    list(lustre@internals@vdom:attribute(RGZ)),
    list(lustre@internals@vdom:element(RGZ))
) -> lustre@internals@vdom:element(RGZ).
foreign_object(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"foreignObject"/utf8>>,
        Attrs,
        Children
    ).

-spec text_path(
    list(lustre@internals@vdom:attribute(RHF)),
    list(lustre@internals@vdom:element(RHF))
) -> lustre@internals@vdom:element(RHF).
text_path(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"textPath"/utf8>>,
        Attrs,
        Children
    ).

-spec tspan(
    list(lustre@internals@vdom:attribute(RHL)),
    list(lustre@internals@vdom:element(RHL))
) -> lustre@internals@vdom:element(RHL).
tspan(Attrs, Children) ->
    lustre@element:namespaced(
        <<"http://www.w3.org/2000/svg"/utf8>>,
        <<"tspan"/utf8>>,
        Attrs,
        Children
    ).
