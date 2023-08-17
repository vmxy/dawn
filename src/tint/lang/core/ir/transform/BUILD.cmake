# Copyright 2023 The Tint Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

################################################################################
# File generated by tools/src/cmd/gen
# using the template:
#   tools/src/cmd/gen/build/BUILD.cmake.tmpl
#
# Do not modify this file directly
################################################################################

if(TINT_BUILD_IR)
tint_add_target("lang/core/ir/transform"
  lang/core/ir/transform/add_empty_entry_point.cc
  lang/core/ir/transform/add_empty_entry_point.h
  lang/core/ir/transform/bgra8unorm_polyfill.cc
  lang/core/ir/transform/bgra8unorm_polyfill.h
  lang/core/ir/transform/binding_remapper.cc
  lang/core/ir/transform/binding_remapper.h
  lang/core/ir/transform/block_decorated_structs.cc
  lang/core/ir/transform/block_decorated_structs.h
  lang/core/ir/transform/builtin_polyfill.cc
  lang/core/ir/transform/builtin_polyfill.h
  lang/core/ir/transform/demote_to_helper.cc
  lang/core/ir/transform/demote_to_helper.h
  lang/core/ir/transform/multiplanar_external_texture.cc
  lang/core/ir/transform/multiplanar_external_texture.h
  lang/core/ir/transform/shader_io.cc
  lang/core/ir/transform/shader_io.h
  lang/core/ir/transform/std140.cc
  lang/core/ir/transform/std140.h
)

tint_target_add_dependencies("lang/core/ir/transform"
  "api/common"
  "api/options"
  "lang/core"
  "lang/core/constant"
  "lang/core/type"
  "utils/containers"
  "utils/diagnostic"
  "utils/ice"
  "utils/id"
  "utils/macros"
  "utils/math"
  "utils/memory"
  "utils/reflection"
  "utils/result"
  "utils/rtti"
  "utils/symbol"
  "utils/text"
  "utils/traits"
)

if (TINT_BUILD_IR)
  tint_target_add_dependencies("lang/core/ir/transform"
    "lang/core/ir"
  )
endif(TINT_BUILD_IR)

endif(TINT_BUILD_IR)
if(TINT_BUILD_IR)
tint_add_target("lang/core/ir/transform:test"
  lang/core/ir/transform/add_empty_entry_point_test.cc
  lang/core/ir/transform/bgra8unorm_polyfill_test.cc
  lang/core/ir/transform/binding_remapper_test.cc
  lang/core/ir/transform/block_decorated_structs_test.cc
  lang/core/ir/transform/builtin_polyfill_test.cc
  lang/core/ir/transform/demote_to_helper_test.cc
  lang/core/ir/transform/helper_test.h
  lang/core/ir/transform/multiplanar_external_texture_test.cc
  lang/core/ir/transform/std140_test.cc
)

tint_target_add_dependencies("lang/core/ir/transform:test"
  "api/common"
  "api/options"
  "lang/core"
  "lang/core/constant"
  "lang/core/type"
  "utils/containers"
  "utils/diagnostic"
  "utils/ice"
  "utils/id"
  "utils/macros"
  "utils/math"
  "utils/memory"
  "utils/reflection"
  "utils/result"
  "utils/rtti"
  "utils/symbol"
  "utils/text"
  "utils/traits"
)

tint_target_add_external_dependencies("lang/core/ir/transform:test"
  "gtest"
)

if (TINT_BUILD_IR)
  tint_target_add_dependencies("lang/core/ir/transform:test"
    "lang/core/ir"
    "lang/core/ir/transform"
  )
endif(TINT_BUILD_IR)

endif(TINT_BUILD_IR)