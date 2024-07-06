import { CustomType as $CustomType } from "../gleam.mjs";
import {
  type_of,
  get_symbol,
  dereference,
  set_reference,
  make_reference,
  reference_equal,
} from "../gleam_javascript_ffi.mjs";

export {
  dereference,
  get_symbol,
  make_reference,
  reference_equal,
  set_reference,
  type_of,
};

export class UndefinedType extends $CustomType {}

export class ObjectType extends $CustomType {}

export class BooleanType extends $CustomType {}

export class NumberType extends $CustomType {}

export class BigIntType extends $CustomType {}

export class StringType extends $CustomType {}

export class SymbolType extends $CustomType {}

export class FunctionType extends $CustomType {}

export function update_reference(ref, f) {
  let value = dereference(ref);
  set_reference(ref, f(value));
  return value;
}
