@compute @workgroup_size(1)
fn main() {
    const in = vec2(1.23, 3.45);
    const res = modf(in);
    let fract : vec2<f32> = res.fract;
    let whole : vec2<f32> = res.whole;
}
