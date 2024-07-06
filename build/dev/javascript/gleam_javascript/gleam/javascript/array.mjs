import { toList as to_list } from "../../gleam.mjs";
import {
  toArray as from_list,
  length as size,
  map,
  reduce as fold,
  reduceRight as fold_right,
  index as get,
} from "../../gleam_javascript_ffi.mjs";

export { fold, fold_right, from_list, get, map, size, to_list };
