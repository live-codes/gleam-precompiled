import * as $promise from "../../../gleam_javascript/gleam/javascript/promise.mjs";
import * as $json from "../../../gleam_json/gleam/json.mjs";
import * as $dynamic from "../../../gleam_stdlib/gleam/dynamic.mjs";
import * as $event from "../../plinth/browser/event.mjs";
import {
  self,
  alert,
  addEventListener as add_event_listener,
  requestWakeLock as request_wake_lock,
  location,
  locationOf as location_of,
  setLocation as set_location,
  reload,
  reloadOf as reload_of,
  focus,
  getHash as get_hash,
  getSearch as get_search,
  innerHeight as inner_height,
  innerWidth as inner_width,
  outerHeight as outer_height,
  outerWidth as outer_width,
  screenX as screen_x,
  screenY as screen_y,
  screenTop as screen_top,
  screenLeft as screen_left,
  scrollX as scroll_x,
  scrollY as scroll_y,
  open,
  close,
  closed,
  queueMicrotask as queue_microtask,
  requestAnimationFrame as request_animation_frame,
  cancelAnimationFrame as cancel_animation_frame,
  eval_ as eval$,
  import_,
} from "../../window_ffi.mjs";
import { onMessage as on_message } from "../../worker_ffi.mjs";

export {
  add_event_listener,
  alert,
  cancel_animation_frame,
  close,
  closed,
  eval$,
  focus,
  get_hash,
  get_search,
  import_,
  inner_height,
  inner_width,
  location,
  location_of,
  on_message,
  open,
  outer_height,
  outer_width,
  queue_microtask,
  reload,
  reload_of,
  request_animation_frame,
  request_wake_lock,
  screen_left,
  screen_top,
  screen_x,
  screen_y,
  scroll_x,
  scroll_y,
  self,
  set_location,
};
