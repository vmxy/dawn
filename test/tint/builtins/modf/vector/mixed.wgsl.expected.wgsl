@compute @workgroup_size(1)
fn main() {
  const const_in = vec2(1.23, 3.45);
  let runtime_in = vec2(1.23, 3.45);
  var res = modf(const_in);
  res = modf(runtime_in);
  res = modf(const_in);
  let fract : vec2<f32> = res.fract;
  let whole : vec2<f32> = res.whole;
}
