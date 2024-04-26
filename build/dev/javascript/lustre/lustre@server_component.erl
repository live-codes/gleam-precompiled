-module(lustre@server_component).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([component/1, script/0, route/1, data/1, include/1, subscribe/2, unsubscribe/1, emit/2, set_selector/1, decode_action/1, encode_patch/1]).

-spec component(list(lustre@internals@vdom:attribute(RRA))) -> lustre@internals@vdom:element(RRA).
component(Attrs) ->
    lustre@element:element(<<"lustre-server-component"/utf8>>, Attrs, []).

-spec script() -> lustre@internals@vdom:element(any()).
script() ->
    lustre@element:element(
        <<"script"/utf8>>,
        [lustre@attribute:attribute(<<"type"/utf8>>, <<"module"/utf8>>)],
        [lustre@element:text(
                <<"function w(t,e,i,r=!1){let n,a=[{prev:t,next:e,parent:t.parentNode}];for(;a.length;){let{prev:s,next:o,parent:l}=a.pop();if(o.subtree!==void 0&&(o=o.subtree()),o.content!==void 0)if(s)if(s.nodeType===Node.TEXT_NODE)s.textContent!==o.content&&(s.textContent=o.content),n??=s;else{let c=document.createTextNode(o.content);l.replaceChild(c,s),n??=c}else{let c=document.createTextNode(o.content);l.appendChild(c),n??=c}else if(o.tag!==void 0){let c=D({prev:s,next:o,dispatch:i,stack:a,isComponent:r});s?s!==c&&l.replaceChild(c,s):l.appendChild(c),n??=c}else o.elements!==void 0&&x(o,c=>{a.unshift({prev:s,next:c,parent:l}),s=s?.nextSibling})}return n}function J(t,e,i){let r=t.parentNode;for(let n of e[0]){let a=n[0].split(\"-\"),s=n[1],o=k(r,a),l;if(o!==null&&o!==r)l=w(o,s,i);else{let c=k(r,a.slice(0,-1)),u=document.createTextNode(\"\");c.appendChild(u),l=w(u,s,i)}a===\"0\"&&(t=l)}for(let n of e[1]){let a=n[0].split(\"-\");k(r,a).remove()}for(let n of e[2]){let a=n[0].split(\"-\"),s=n[1],o=k(r,a),l=N.get(o);for(let c of s[0]){let u=c[0],m=c[1];if(u.startsWith(\"data-lustre-on-\")){let b=u.slice(15),h=i(M);l.has(b)||el.addEventListener(b,y),l.set(b,h),el.setAttribute(u,m)}else o.setAttribute(u,m),o[u]=m}for(let c of s[1])if(c[0].startsWith(\"data-lustre-on-\")){let u=c[0].slice(15);o.removeEventListener(u,y),l.delete(u)}else o.removeAttribute(c[0])}return t}function D({prev:t,next:e,dispatch:i,stack:r}){let n=e.namespace||\"http://www.w3.org/1999/xhtml\",a=t&&t.nodeType===Node.ELEMENT_NODE&&t.localName===e.tag&&t.namespaceURI===(e.namespace||\"http://www.w3.org/1999/xhtml\"),s=a?t:n?document.createElementNS(n,e.tag):document.createElement(e.tag),o;if(N.has(s))o=N.get(s);else{let d=new Map;N.set(s,d),o=d}let l=a?new Set(o.keys()):null,c=a?new Set(Array.from(t.attributes,d=>d.name)):null,u=null,m=null,b=null;for(let d of e.attrs){let f=d[0],p=d[1];if(d.as_property)s[f]=p;else if(f.startsWith(\"on\")){let g=f.slice(2),v=i(p);o.has(g)||s.addEventListener(g,y),o.set(g,v),a&&l.delete(g)}else if(f.startsWith(\"data-lustre-on-\")){let g=f.slice(15),v=i(M);o.has(g)||s.addEventListener(g,y),o.set(g,v),s.setAttribute(f,p)}else f===\"class\"?u=u===null?p:u+\" \"+p:f===\"style\"?m=m===null?p:m+p:f===\"dangerous-unescaped-html\"?b=p:(typeof p==\"string\"&&s.setAttribute(f,p),(f===\"value\"||f===\"selected\")&&(s[f]=p),a&&c.delete(f))}if(u!==null&&(s.setAttribute(\"class\",u),a&&c.delete(\"class\")),m!==null&&(s.setAttribute(\"style\",m),a&&c.delete(\"style\")),a){for(let d of c)s.removeAttribute(d);for(let d of l)o.delete(d),s.removeEventListener(d,y)}if(e.key!==void 0&&e.key!==\"\")s.setAttribute(\"data-lustre-key\",e.key);else if(b!==null)return s.innerHTML=b,s;let h=s.firstChild,E=null,C=null,T=null,A=e.children[Symbol.iterator]().next().value;a&&A!==void 0&&A.key!==void 0&&A.key!==\"\"&&(E=new Set,C=L(t),T=L(e));for(let d of e.children)x(d,f=>{f.key!==void 0&&E!==null?h=W(h,f,s,r,T,C,E):(r.unshift({prev:h,next:f,parent:s}),h=h?.nextSibling)});for(;h;){let d=h.nextSibling;s.removeChild(h),h=d}return s}var N=new WeakMap;function y(t){let e=t.currentTarget;if(!N.has(e)){e.removeEventListener(t.type,y);return}let i=N.get(e);if(!i.has(t.type)){e.removeEventListener(t.type,y);return}i.get(t.type)(t)}function M(t){let e=t.target,i=e.getAttribute(`data-lustre-on-${t.type}`),r=JSON.parse(e.getAttribute(\"data-lustre-data\")||\"{}\"),n=JSON.parse(e.getAttribute(\"data-lustre-include\")||\"[]\");switch(t.type){case\"input\":case\"change\":n.push(\"target.value\");break}return{tag:i,data:n.reduce((a,s)=>{let o=s.split(\".\");for(let l=0,c=a,u=t;l<o.length;l++)l===o.length-1?c[o[l]]=u[o[l]]:(c[o[l]]??={},u=u[o[l]],c=c[o[l]]);return a},{data:r})}}function L(t){let e=new Map;if(t)for(let i of t.children)x(i,r=>{let n=r?.key||r?.getAttribute?.(\"data-lustre-key\");n&&e.set(n,r)});return e}function k(t,e){let i,r,n=t;for(;[i,...r]=e,i!==void 0;)console.log({n:i,rest:r,child:n,path:e}),n=n.childNodes.item(i),e=r;return n}function W(t,e,i,r,n,a,s){for(;t&&!n.has(t.getAttribute(\"data-lustre-key\"));){let l=t.nextSibling;i.removeChild(t),t=l}if(a.size===0)return x(e,l=>{r.unshift({prev:t,next:l,parent:i}),t=t?.nextSibling}),t;if(s.has(e.key))return console.warn(`Duplicate key found in Lustre vnode: ${e.key}`),r.unshift({prev:null,next:e,parent:i}),t;s.add(e.key);let o=a.get(e.key);if(!o&&!t)return r.unshift({prev:null,next:e,parent:i}),t;if(!o&&t!==null){let l=document.createTextNode(\"\");return i.insertBefore(l,t),r.unshift({prev:l,next:e,parent:i}),t}return!o||o===t?(r.unshift({prev:t,next:e,parent:i}),t=t?.nextSibling,t):(i.insertBefore(o,t),r.unshift({prev:o,next:e,parent:i}),t)}function x(t,e){if(t.elements!==void 0)for(let i of t.elements)e(i);else e(t)}var O=class extends HTMLElement{static get observedAttributes(){return[\"route\"]}#n=null;#t=null;#e=null;constructor(){super(),this.#n=new MutationObserver(e=>{let i=[];for(let r of e)if(r.type===\"attributes\"){let{attributeName:n,oldValue:a}=r,s=this.getAttribute(n);if(a!==s)try{i.push([n,JSON.parse(s)])}catch{i.push([n,s])}}i.length&&this.#e?.send(JSON.stringify([5,i]))})}connectedCallback(){this.#t=document.createElement(\"div\"),this.appendChild(this.#t)}attributeChangedCallback(e,i,r){switch(e){case\"route\":if(!r)this.#e?.close(),this.#e=null;else if(i!==r){let n=this.getAttribute(\"id\"),a=r+(n?`?id=${n}`:\"\");this.#e?.close(),this.#e=new WebSocket(`ws://${window.location.host}${a}`),this.#e.addEventListener(\"message\",s=>this.messageReceivedCallback(s))}}}messageReceivedCallback({data:e}){let[i,...r]=JSON.parse(e);switch(i){case 0:return this.diff(r);case 1:return this.emit(r);case 2:return this.init(r)}}init([e,i]){let r=[];for(let n of e)n in this?r.push([n,this[n]]):this.hasAttribute(n)&&r.push([n,this.getAttribute(n)]),Object.defineProperty(this,n,{get(){return this[`_${n}`]??this.getAttribute(n)},set(a){let s=this[n];typeof a==\"string\"?this.setAttribute(n,a):this[`_${n}`]=a,s!==a&&this.#e?.send(JSON.stringify([5,[[n,a]]]))}});this.#n.observe(this,{attributeFilter:e,attributeOldValue:!0,attributes:!0,characterData:!1,characterDataOldValue:!1,childList:!1,subtree:!1}),this.morph(i),r.length&&this.#e?.send(JSON.stringify([5,r]))}morph(e){this.#t=w(this.#t,e,i=>r=>{let n=i(r);this.#e?.send(JSON.stringify([4,n.tag,n.data]))})}diff([e]){this.#t=J(this.#t,e,i=>r=>{let n=i(r);this.#e?.send(JSON.stringify([4,n.tag,n.data]))})}emit([e,i]){this.dispatchEvent(new CustomEvent(e,{detail:i}))}disconnectedCallback(){this.#e?.close()}};window.customElements.define(\"lustre-server-component\",O);export{O as LustreServerComponent};"/utf8>>
            )]
    ).

-spec route(binary()) -> lustre@internals@vdom:attribute(any()).
route(Path) ->
    lustre@attribute:attribute(<<"route"/utf8>>, Path).

-spec data(gleam@json:json()) -> lustre@internals@vdom:attribute(any()).
data(Json) ->
    _pipe = Json,
    _pipe@1 = gleam@json:to_string(_pipe),
    lustre@attribute:attribute(<<"data-lustre-data"/utf8>>, _pipe@1).

-spec include(list(binary())) -> lustre@internals@vdom:attribute(any()).
include(Properties) ->
    _pipe = Properties,
    _pipe@1 = gleam@json:array(_pipe, fun gleam@json:string/1),
    _pipe@2 = gleam@json:to_string(_pipe@1),
    lustre@attribute:attribute(<<"data-lustre-include"/utf8>>, _pipe@2).

-spec subscribe(binary(), fun((lustre@internals@patch:patch(RRN)) -> nil)) -> lustre@internals@runtime:action(RRN, lustre:server_component()).
subscribe(Id, Renderer) ->
    {subscribe, Id, Renderer}.

-spec unsubscribe(binary()) -> lustre@internals@runtime:action(any(), lustre:server_component()).
unsubscribe(Id) ->
    {unsubscribe, Id}.

-spec emit(binary(), gleam@json:json()) -> lustre@effect:effect(any()).
emit(Event, Data) ->
    lustre@effect:event(Event, Data).

-spec do_set_selector(
    gleam@erlang@process:selector(lustre@internals@runtime:action(any(), RSD))
) -> lustre@effect:effect(RSD).
do_set_selector(Sel) ->
    lustre@effect:from(
        fun(_) ->
            Self = gleam@erlang@process:new_subject(),
            gleam@erlang@process:send(Self, {set_selector, Sel})
        end
    ).

-spec set_selector(
    gleam@erlang@process:selector(lustre@internals@runtime:action(any(), RRX))
) -> lustre@effect:effect(RRX).
set_selector(Sel) ->
    do_set_selector(Sel).

-spec decode_event(gleam@dynamic:dynamic_()) -> {ok,
        lustre@internals@runtime:action(any(), any())} |
    {error, list(gleam@dynamic:decode_error())}.
decode_event(Dyn) ->
    gleam@result:'try'(
        (gleam@dynamic:tuple3(
            fun gleam@dynamic:int/1,
            fun gleam@dynamic:dynamic/1,
            fun gleam@dynamic:dynamic/1
        ))(Dyn),
        fun(_use0) ->
            {Kind, Name, Data} = _use0,
            gleam@bool:guard(
                Kind /= 4,
                {error,
                    [{decode_error,
                            gleam@int:to_string(4),
                            gleam@int:to_string(Kind),
                            [<<"0"/utf8>>]}]},
                fun() ->
                    gleam@result:'try'(
                        gleam@dynamic:string(Name),
                        fun(Name@1) -> {ok, {event, Name@1, Data}} end
                    )
                end
            )
        end
    ).

-spec decode_attr(gleam@dynamic:dynamic_()) -> {ok,
        {binary(), gleam@dynamic:dynamic_()}} |
    {error, list(gleam@dynamic:decode_error())}.
decode_attr(Dyn) ->
    (gleam@dynamic:tuple2(
        fun gleam@dynamic:string/1,
        fun gleam@dynamic:dynamic/1
    ))(Dyn).

-spec decode_attrs(gleam@dynamic:dynamic_()) -> {ok,
        lustre@internals@runtime:action(any(), any())} |
    {error, list(gleam@dynamic:decode_error())}.
decode_attrs(Dyn) ->
    gleam@result:'try'(
        (gleam@dynamic:tuple2(
            fun gleam@dynamic:int/1,
            fun gleam@dynamic:dynamic/1
        ))(Dyn),
        fun(_use0) ->
            {Kind, Attrs} = _use0,
            gleam@bool:guard(
                Kind /= 5,
                {error,
                    [{decode_error,
                            gleam@int:to_string(5),
                            gleam@int:to_string(Kind),
                            [<<"0"/utf8>>]}]},
                fun() ->
                    gleam@result:'try'(
                        (gleam@dynamic:list(fun decode_attr/1))(Attrs),
                        fun(Attrs@1) -> {ok, {attrs, Attrs@1}} end
                    )
                end
            )
        end
    ).

-spec decode_action(gleam@dynamic:dynamic_()) -> {ok,
        lustre@internals@runtime:action(any(), lustre:server_component())} |
    {error, list(gleam@dynamic:decode_error())}.
decode_action(Dyn) ->
    (gleam@dynamic:any([fun decode_event/1, fun decode_attrs/1]))(Dyn).

-spec encode_patch(lustre@internals@patch:patch(any())) -> gleam@json:json().
encode_patch(Patch) ->
    lustre@internals@patch:patch_to_json(Patch).
