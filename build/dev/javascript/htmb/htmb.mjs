import * as $list from "../gleam_stdlib/gleam/list.mjs";
import * as $string from "../gleam_stdlib/gleam/string.mjs";
import * as $string_builder from "../gleam_stdlib/gleam/string_builder.mjs";
import { identity as dangerous_unescaped_fragment, identity as render } from "./htmb_ffi.mjs";

export { dangerous_unescaped_fragment, render };

function do_escape(loop$escaped, loop$content) {
  while (true) {
    let escaped = loop$escaped;
    let content = loop$content;
    let $ = $string.pop_grapheme(content);
    if ($.isOk() && $[0][0] === "<") {
      let xs = $[0][1];
      loop$escaped = escaped + "&lt;";
      loop$content = xs;
    } else if ($.isOk() && $[0][0] === ">") {
      let xs = $[0][1];
      loop$escaped = escaped + "&gt;";
      loop$content = xs;
    } else if ($.isOk() && $[0][0] === "&") {
      let xs = $[0][1];
      loop$escaped = escaped + "&amp;";
      loop$content = xs;
    } else if ($.isOk()) {
      let x = $[0][0];
      let xs = $[0][1];
      loop$escaped = escaped + x;
      loop$content = xs;
    } else {
      return escaped + content;
    }
  }
}

export function escape(content) {
  return do_escape("", content);
}

function attribute(content, attribute) {
  return ((((content + " ") + attribute[0]) + "=\"") + attribute[1]) + "\"";
}

export function text(content) {
  let _pipe = content;
  let _pipe$1 = ((_capture) => { return do_escape("", _capture); })(_pipe);
  let _pipe$2 = $string_builder.from_string(_pipe$1);
  return dangerous_unescaped_fragment(_pipe$2);
}

export function render_page(html) {
  let _pipe = render(html);
  return $string_builder.prepend(_pipe, "<!DOCTYPE html>");
}

function child(siblings, child) {
  return $string_builder.append_builder(siblings, render(child));
}

export function h(tag, attributes, children) {
  let opening = (() => {
    let _pipe = "<";
    let _pipe$1 = $string.append(_pipe, tag);
    let _pipe$2 = ((_capture) => {
      return $list.fold(attributes, _capture, attribute);
    })(_pipe$1);
    let _pipe$3 = $string.append(_pipe$2, ">");
    return $string_builder.from_string(_pipe$3);
  })();
  let _pipe = (() => {
    if (tag === "area") {
      return opening;
    } else if (tag === "base") {
      return opening;
    } else if (tag === "br") {
      return opening;
    } else if (tag === "col") {
      return opening;
    } else if (tag === "command") {
      return opening;
    } else if (tag === "embed") {
      return opening;
    } else if (tag === "hr") {
      return opening;
    } else if (tag === "img") {
      return opening;
    } else if (tag === "input") {
      return opening;
    } else if (tag === "keygen") {
      return opening;
    } else if (tag === "link") {
      return opening;
    } else if (tag === "meta") {
      return opening;
    } else if (tag === "param") {
      return opening;
    } else if (tag === "source") {
      return opening;
    } else if (tag === "track") {
      return opening;
    } else if (tag === "wbr") {
      return opening;
    } else {
      let _pipe = opening;
      let _pipe$1 = ((_capture) => {
        return $list.fold(children, _capture, child);
      })(_pipe);
      return $string_builder.append(_pipe$1, ("</" + tag) + ">");
    }
  })();
  return dangerous_unescaped_fragment(_pipe);
}
