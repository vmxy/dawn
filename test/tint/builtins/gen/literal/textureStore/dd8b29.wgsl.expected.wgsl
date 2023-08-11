enable chromium_experimental_read_write_storage_texture;

@group(1) @binding(0) var arg_0 : texture_storage_2d_array<rgba8uint, read_write>;

fn textureStore_dd8b29() {
  textureStore(arg_0, vec2<i32>(1i), 1i, vec4<u32>(1u));
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureStore_dd8b29();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureStore_dd8b29();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureStore_dd8b29();
}