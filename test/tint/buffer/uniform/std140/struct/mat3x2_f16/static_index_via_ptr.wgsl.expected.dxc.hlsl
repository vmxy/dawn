struct Inner {
  matrix<float16_t, 3, 2> m;
};
struct Outer {
  Inner a[4];
};

cbuffer cbuffer_a : register(b0) {
  uint4 a[64];
};

matrix<float16_t, 3, 2> a_load_4(uint offset) {
  const uint scalar_offset = ((offset + 0u)) / 4;
  uint ubo_load = a[scalar_offset / 4][scalar_offset % 4];
  const uint scalar_offset_1 = ((offset + 4u)) / 4;
  uint ubo_load_1 = a[scalar_offset_1 / 4][scalar_offset_1 % 4];
  const uint scalar_offset_2 = ((offset + 8u)) / 4;
  uint ubo_load_2 = a[scalar_offset_2 / 4][scalar_offset_2 % 4];
  return matrix<float16_t, 3, 2>(vector<float16_t, 2>(float16_t(f16tof32(ubo_load & 0xFFFF)), float16_t(f16tof32(ubo_load >> 16))), vector<float16_t, 2>(float16_t(f16tof32(ubo_load_1 & 0xFFFF)), float16_t(f16tof32(ubo_load_1 >> 16))), vector<float16_t, 2>(float16_t(f16tof32(ubo_load_2 & 0xFFFF)), float16_t(f16tof32(ubo_load_2 >> 16))));
}

Inner a_load_3(uint offset) {
  const Inner tint_symbol = {a_load_4((offset + 0u))};
  return tint_symbol;
}

typedef Inner a_load_2_ret[4];
a_load_2_ret a_load_2(uint offset) {
  Inner arr[4] = (Inner[4])0;
  {
    for(uint i = 0u; (i < 4u); i = (i + 1u)) {
      arr[i] = a_load_3((offset + (i * 64u)));
    }
  }
  return arr;
}

Outer a_load_1(uint offset) {
  const Outer tint_symbol_1 = {a_load_2((offset + 0u))};
  return tint_symbol_1;
}

typedef Outer a_load_ret[4];
a_load_ret a_load(uint offset) {
  Outer arr_1[4] = (Outer[4])0;
  {
    for(uint i_1 = 0u; (i_1 < 4u); i_1 = (i_1 + 1u)) {
      arr_1[i_1] = a_load_1((offset + (i_1 * 256u)));
    }
  }
  return arr_1;
}

[numthreads(1, 1, 1)]
void f() {
  const Outer l_a[4] = a_load(0u);
  const Outer l_a_3 = a_load_1(768u);
  const Inner l_a_3_a[4] = a_load_2(768u);
  const Inner l_a_3_a_2 = a_load_3(896u);
  const matrix<float16_t, 3, 2> l_a_3_a_2_m = a_load_4(896u);
  uint ubo_load_3 = a[56].y;
  const vector<float16_t, 2> l_a_3_a_2_m_1 = vector<float16_t, 2>(float16_t(f16tof32(ubo_load_3 & 0xFFFF)), float16_t(f16tof32(ubo_load_3 >> 16)));
  const float16_t l_a_3_a_2_m_1_0 = float16_t(f16tof32(((a[56].y) & 0xFFFF)));
  return;
}
