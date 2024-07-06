import {
  encodeURI as encode_uri,
  decodeURI as decode_uri,
  decodeURIComponent as decode_uri_component,
  setTimeout as set_timeout,
  clearTimeout as clear_timeout,
} from "../../global_ffi.mjs";

export {
  clear_timeout,
  decode_uri,
  decode_uri_component,
  encode_uri,
  set_timeout,
};
