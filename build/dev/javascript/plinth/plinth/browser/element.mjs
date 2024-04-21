import * as $promise from "../../../gleam_javascript/gleam/javascript/promise.mjs";
import {
  getAttribute as get_attribute,
  setAttribute as set_attribute,
  setInnerHTML as set_inner_html,
  innerText as inner_text,
  closest,
  requestFullscreen as request_fullscreen,
  scrollIntoView as scroll_into_view,
  appendChild as append_child,
  value,
  focus,
  selectionStart as selection_start,
  setSelectionRange as set_selection_range,
} from "../../element_ffi.mjs";

export {
  append_child,
  closest,
  focus,
  get_attribute,
  inner_text,
  request_fullscreen,
  scroll_into_view,
  selection_start,
  set_attribute,
  set_inner_html,
  set_selection_range,
  value,
};
