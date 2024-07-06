-module(lustre@server_component).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([component/1, script/0, route/1, data/1, include/1, subscribe/2, unsubscribe/1, emit/2, set_selector/1, decode_action/1, encode_patch/1]).

-spec component(list(lustre@internals@vdom:attribute(RVS))) -> lustre@internals@vdom:element(RVS).
component(Attrs) ->
    lustre@element:element(<<"lustre-server-component"/utf8>>, Attrs, []).

-spec script() -> lustre@internals@vdom:element(any()).
script() ->
    lustre@element:element(
        <<"script"/utf8>>,
        [lustre@attribute:attribute(<<"type"/utf8>>, <<"module"/utf8>>)],
        [lustre@element:text(
                <<"function S(e,t,s,r=!1){let i,o=[{prev:e,next:t,parent:e.parentNode}];for(;o.length;){let{prev:n,next:a,parent:l}=o.pop();if(a.subtree!==void 0&&(a=a.subtree()),a.content!==void 0)if(n)if(n.nodeType===Node.TEXT_NODE)n.textContent!==a.content&&(n.textContent=a.content),i??=n;else{let c=document.createTextNode(a.content);l.replaceChild(c,n),i??=c}else{let c=document.createTextNode(a.content);l.appendChild(c),i??=c}else if(a.tag!==void 0){let c=W({prev:n,next:a,dispatch:s,stack:o,isComponent:r});n?n!==c&&l.replaceChild(c,n):l.appendChild(c),i??=c}else a.elements!==void 0?A(a,c=>{o.unshift({prev:n,next:c,parent:l}),n=n?.nextSibling}):a.subtree!==void 0&&o.push({prev:n,next:a,parent:l})}return i}function J(e,t,s,r=0){let i=e.parentNode;for(let o of t[0]){let n=o[0].split(\"-\"),a=o[1],l=k(i,n,r),c;if(l!==null&&l!==i)c=S(l,a,s);else{let u=k(i,n.slice(0,-1),r),f=document.createTextNode(\"\");u.appendChild(f),c=S(f,a,s)}n===\"0\"&&(e=c)}for(let o of t[1]){let n=o[0].split(\"-\");k(i,n,r).remove()}for(let o of t[2]){let n=o[0].split(\"-\"),a=o[1],l=k(i,n,r),c=N.get(l);for(let u of a[0]){let f=u[0],b=u[1];if(f.startsWith(\"data-lustre-on-\")){let p=f.slice(15),w=s(M);c.has(p)||el.addEventListener(p,y),c.set(p,w),el.setAttribute(f,b)}else l.setAttribute(f,b),l[f]=b}for(let u of a[1])if(u[0].startsWith(\"data-lustre-on-\")){let f=u[0].slice(15);l.removeEventListener(f,y),c.delete(f)}else l.removeAttribute(u[0])}return e}function W({prev:e,next:t,dispatch:s,stack:r}){let i=t.namespace||\"http://www.w3.org/1999/xhtml\",o=e&&e.nodeType===Node.ELEMENT_NODE&&e.localName===t.tag&&e.namespaceURI===(t.namespace||\"http://www.w3.org/1999/xhtml\"),n=o?e:i?document.createElementNS(i,t.tag):document.createElement(t.tag),a;if(N.has(n))a=N.get(n);else{let h=new Map;N.set(n,h),a=h}let l=o?new Set(a.keys()):null,c=o?new Set(Array.from(e.attributes,h=>h.name)):null,u=null,f=null,b=null;for(let h of t.attrs){let d=h[0],m=h[1];if(h.as_property)n[d]!==m&&(n[d]=m),o&&c.delete(d);else if(d.startsWith(\"on\")){let g=d.slice(2),E=s(m);a.has(g)||n.addEventListener(g,y),a.set(g,E),o&&l.delete(g)}else if(d.startsWith(\"data-lustre-on-\")){let g=d.slice(15),E=s(M);a.has(g)||n.addEventListener(g,y),a.set(g,E),n.setAttribute(d,m)}else d===\"class\"?u=u===null?m:u+\" \"+m:d===\"style\"?f=f===null?m:f+m:d===\"dangerous-unescaped-html\"?b=m:(n.getAttribute(d)!==m&&n.setAttribute(d,m),(d===\"value\"||d===\"selected\")&&(n[d]=m),o&&c.delete(d))}if(u!==null&&(n.setAttribute(\"class\",u),o&&c.delete(\"class\")),f!==null&&(n.setAttribute(\"style\",f),o&&c.delete(\"style\")),o){for(let h of c)n.removeAttribute(h);for(let h of l)a.delete(h),n.removeEventListener(h,y)}if(t.key!==void 0&&t.key!==\"\")n.setAttribute(\"data-lustre-key\",t.key);else if(b!==null)return n.innerHTML=b,n;let p=n.firstChild,w=null,C=null,T=null,x=t.children[Symbol.iterator]().next().value;o&&x!==void 0&&x.key!==void 0&&x.key!==\"\"&&(w=new Set,C=L(e),T=L(t));for(let h of t.children)A(h,d=>{d.key!==void 0&&w!==null?p=F(p,d,n,r,T,C,w):(r.unshift({prev:p,next:d,parent:n}),p=p?.nextSibling)});for(;p;){let h=p.nextSibling;n.removeChild(p),p=h}return n}var N=new WeakMap;function y(e){let t=e.currentTarget;if(!N.has(t)){t.removeEventListener(e.type,y);return}let s=N.get(t);if(!s.has(e.type)){t.removeEventListener(e.type,y);return}s.get(e.type)(e)}function M(e){let t=e.currentTarget,s=t.getAttribute(`data-lustre-on-${e.type}`),r=JSON.parse(t.getAttribute(\"data-lustre-data\")||\"{}\"),i=JSON.parse(t.getAttribute(\"data-lustre-include\")||\"[]\");switch(e.type){case\"input\":case\"change\":i.push(\"target.value\");break}return{tag:s,data:i.reduce((o,n)=>{let a=n.split(\".\");for(let l=0,c=o,u=e;l<a.length;l++)l===a.length-1?c[a[l]]=u[a[l]]:(c[a[l]]??={},u=u[a[l]],c=c[a[l]]);return o},{data:r})}}function L(e){let t=new Map;if(e)for(let s of e.children)A(s,r=>{let i=r?.key||r?.getAttribute?.(\"data-lustre-key\");i&&t.set(i,r)});return t}function k(e,t,s){let r,i,o=e,n=!0;for(;[r,...i]=t,r!==void 0;)o=o.childNodes.item(n?r+s:r),n=!1,t=i;return o}function F(e,t,s,r,i,o,n){for(;e&&!i.has(e.getAttribute(\"data-lustre-key\"));){let l=e.nextSibling;s.removeChild(e),e=l}if(o.size===0)return A(t,l=>{r.unshift({prev:e,next:l,parent:s}),e=e?.nextSibling}),e;if(n.has(t.key))return console.warn(`Duplicate key found in Lustre vnode: ${t.key}`),r.unshift({prev:null,next:t,parent:s}),e;n.add(t.key);let a=o.get(t.key);if(!a&&!e)return r.unshift({prev:null,next:t,parent:s}),e;if(!a&&e!==null){let l=document.createTextNode(\"\");return s.insertBefore(l,e),r.unshift({prev:l,next:t,parent:s}),e}return!a||a===e?(r.unshift({prev:e,next:t,parent:s}),e=e?.nextSibling,e):(s.insertBefore(a,e),r.unshift({prev:a,next:t,parent:s}),e)}function A(e,t){if(e.elements!==void 0)for(let s of e.elements)t(s);else t(e)}var O=class extends HTMLElement{static get observedAttributes(){return[\"route\"]}#i=null;#e=null;#t=null;#n=null;#s=0;constructor(){super(),this.#n=this.attachShadow({mode:\"closed\"}),this.#i=new MutationObserver(t=>{let s=[];for(let r of t)if(r.type===\"attributes\"){let{attributeName:i,oldValue:o}=r,n=this.getAttribute(i);if(o!==n)try{s.push([i,JSON.parse(n)])}catch{s.push([i,n])}}s.length&&this.#t?.send(JSON.stringify([5,s]))})}connectedCallback(){for(let t of document.querySelectorAll(\"link\"))t.rel===\"stylesheet\"&&(this.#n.appendChild(t.cloneNode(!0)),this.#s++);for(let t of document.querySelectorAll(\"style\"))this.#n.appendChild(t.cloneNode(!0)),this.#s++;this.#e=document.createElement(\"div\"),this.#n.appendChild(this.#e)}attributeChangedCallback(t,s,r){switch(t){case\"route\":if(!r)this.#t?.close(),this.#t=null;else if(s!==r){let i=this.getAttribute(\"id\"),o=r+(i?`?id=${i}`:\"\"),n=window.location.protocol===\"https:\"?\"wss\":\"ws\";this.#t?.close(),this.#t=new WebSocket(`${n}://${window.location.host}${o}`),this.#t.addEventListener(\"message\",a=>this.messageReceivedCallback(a))}}}messageReceivedCallback({data:t}){let[s,...r]=JSON.parse(t);switch(s){case 0:return this.diff(r);case 1:return this.emit(r);case 2:return this.init(r)}}init([t,s]){let r=[];for(let i of t)i in this?r.push([i,this[i]]):this.hasAttribute(i)&&r.push([i,this.getAttribute(i)]),Object.defineProperty(this,i,{get(){return this[`_${i}`]??this.getAttribute(i)},set(o){let n=this[i];typeof o==\"string\"?this.setAttribute(i,o):this[`_${i}`]=o,n!==o&&this.#t?.send(JSON.stringify([5,[[i,o]]]))}});this.#i.observe(this,{attributeFilter:t,attributeOldValue:!0,attributes:!0,characterData:!1,characterDataOldValue:!1,childList:!1,subtree:!1}),this.morph(s),r.length&&this.#t?.send(JSON.stringify([5,r]))}morph(t){this.#e=S(this.#e,t,s=>r=>{let i=JSON.parse(this.getAttribute(\"data-lustre-data\")||\"{}\"),o=s(r);o.data=$(i,o.data),this.#t?.send(JSON.stringify([4,o.tag,o.data]))})}diff([t]){this.#e=J(this.#e,t,s=>r=>{let i=s(r);this.#t?.send(JSON.stringify([4,i.tag,i.data]))},this.#s)}emit([t,s]){this.dispatchEvent(new CustomEvent(t,{detail:s}))}disconnectedCallback(){this.#t?.close()}get adoptedStyleSheets(){return this.#n.adoptedStyleSheets}set adoptedStyleSheets(t){this.#n.adoptedStyleSheets=t}};window.customElements.define(\"lustre-server-component\",O);function $(e,t){for(let s in t)t[s]instanceof Object&&Object.assign(t[s],$(e[s],t[s]));return Object.assign(e||{},t),e}export{O as LustreServerComponent};"/utf8>>
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

-spec subscribe(binary(), fun((lustre@internals@patch:patch(RWF)) -> nil)) -> lustre@internals@runtime:action(RWF, lustre:server_component()).
subscribe(Id, Renderer) ->
    {subscribe, Id, Renderer}.

-spec unsubscribe(binary()) -> lustre@internals@runtime:action(any(), lustre:server_component()).
unsubscribe(Id) ->
    {unsubscribe, Id}.

-spec emit(binary(), gleam@json:json()) -> lustre@effect:effect(any()).
emit(Event, Data) ->
    lustre@effect:event(Event, Data).

-spec do_set_selector(
    gleam@erlang@process:selector(lustre@internals@runtime:action(any(), RWV))
) -> lustre@effect:effect(RWV).
do_set_selector(Sel) ->
    lustre@effect:from(
        fun(_) ->
            Self = gleam@erlang@process:new_subject(),
            gleam@erlang@process:send(Self, {set_selector, Sel})
        end
    ).

-spec set_selector(
    gleam@erlang@process:selector(lustre@internals@runtime:action(any(), RWP))
) -> lustre@effect:effect(RWP).
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
