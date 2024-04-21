import {
  toArray as from_list,
  length as size,
  map,
  reduce as fold,
  reduceRight as fold_right,
  index as get,
} from "../../ffi.mjs";
import { toList as to_list } from "../../gleam.mjs";

export { fold, fold_right, from_list, get, map, size, to_list };
