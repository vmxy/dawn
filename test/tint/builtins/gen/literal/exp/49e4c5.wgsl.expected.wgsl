fn exp_49e4c5() {
  var res = exp(1.0);
}

@fragment
fn fragment_main() {
  exp_49e4c5();
}

@compute @workgroup_size(1)
fn compute_main() {
  exp_49e4c5();
}

struct VertexOutput {
  @builtin(position)
  pos : vec4<f32>,
}

@vertex
fn vertex_main() -> VertexOutput {
  var out : VertexOutput;
  out.pos = vec4<f32>();
  exp_49e4c5();
  return out;
}
