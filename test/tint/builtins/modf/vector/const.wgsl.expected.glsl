#version 310 es

struct modf_result_vec2 {
  vec2 fract;
  vec2 whole;
};


void tint_symbol() {
  modf_result_vec2 res = modf_result_vec2(vec2(0.230000019f, 0.450000048f), vec2(1.0f, 3.0f));
  vec2 tint_symbol_2 = res.fract;
  vec2 whole = res.whole;
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  tint_symbol();
  return;
}
