SKIP: FAILED

float4 fwidthCoarse_4e4fc4() {
  float4 arg_0 = (1.0f).xxxx;
  float4 res = fwidth(arg_0);
  return res;
}

void fragment_main() {
  prevent_dce = fwidthCoarse_4e4fc4();
}

