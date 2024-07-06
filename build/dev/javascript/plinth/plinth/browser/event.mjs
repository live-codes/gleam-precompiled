import * as $dynamic from "../../../gleam_stdlib/gleam/dynamic.mjs";
import {
  target,
  key,
  keyCode as key_code,
  preventDefault as prevent_default,
  stopPropagation as stop_propagation,
} from "../../event_ffi.mjs";

export { key, key_code, prevent_default, stop_propagation, target };
