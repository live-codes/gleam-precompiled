import * as $array from "../../../gleam_javascript/gleam/javascript/array.mjs";
import {
  querySelector as query_selector,
  querySelectorAll as query_selector_all,
  addEventListener as add_event_listener,
  createElement as create_element,
  createTextNode as create_text_node,
  body,
} from "../../document_ffi.mjs";
import * as $element from "../../plinth/browser/element.mjs";
import * as $event from "../../plinth/browser/event.mjs";

export {
  add_event_listener,
  body,
  create_element,
  create_text_node,
  query_selector,
  query_selector_all,
};
