SKIP: FAILED

#version 310 es

layout(rgba16i) uniform highp iimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  ivec4 inner;
} prevent_dce;

void textureLoad_fc6d36() {
  ivec2 arg_1 = ivec2(1);
  int arg_2 = 1;
  ivec4 res = texelFetch(arg_0, ivec3(arg_1, arg_2));
  prevent_dce.inner = res;
}

vec4 vertex_main() {
  textureLoad_fc6d36();
  return vec4(0.0f);
}

void main() {
  gl_PointSize = 1.0;
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
Error parsing GLSL shader:
ERROR: 0:3: 'rgba16i' : format requires readonly or writeonly memory qualifier 
ERROR: 1 compilation errors.  No code generated.



#version 310 es
precision highp float;

layout(rgba16i) uniform highp iimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  ivec4 inner;
} prevent_dce;

void textureLoad_fc6d36() {
  ivec2 arg_1 = ivec2(1);
  int arg_2 = 1;
  ivec4 res = texelFetch(arg_0, ivec3(arg_1, arg_2));
  prevent_dce.inner = res;
}

void fragment_main() {
  textureLoad_fc6d36();
}

void main() {
  fragment_main();
  return;
}
Error parsing GLSL shader:
ERROR: 0:4: 'rgba16i' : format requires readonly or writeonly memory qualifier 
ERROR: 1 compilation errors.  No code generated.



#version 310 es

layout(rgba16i) uniform highp iimage2DArray arg_0;
layout(binding = 0, std430) buffer prevent_dce_block_ssbo {
  ivec4 inner;
} prevent_dce;

void textureLoad_fc6d36() {
  ivec2 arg_1 = ivec2(1);
  int arg_2 = 1;
  ivec4 res = texelFetch(arg_0, ivec3(arg_1, arg_2));
  prevent_dce.inner = res;
}

void compute_main() {
  textureLoad_fc6d36();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
Error parsing GLSL shader:
ERROR: 0:3: 'rgba16i' : format requires readonly or writeonly memory qualifier 
ERROR: 1 compilation errors.  No code generated.


