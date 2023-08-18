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

################################################################################
# Target:    tint_utils_file
# Kind:      lib
################################################################################
tint_add_target(tint_utils_file lib
  utils/file/tmpfile.h
)

tint_target_add_dependencies(tint_utils_file lib
  tint_utils_ice
  tint_utils_macros
  tint_utils_text
)

if((NOT IS_LINUX) AND (NOT IS_MAC) AND (NOT IS_WIN))
  tint_target_add_sources(tint_utils_file lib
    "utils/file/tmpfile_other.cc"
  )
endif((NOT IS_LINUX) AND (NOT IS_MAC) AND (NOT IS_WIN))

if(IS_LINUX OR IS_MAC)
  tint_target_add_sources(tint_utils_file lib
    "utils/file/tmpfile_posix.cc"
  )
endif(IS_LINUX OR IS_MAC)

if(IS_WIN)
  tint_target_add_sources(tint_utils_file lib
    "utils/file/tmpfile_windows.cc"
  )
endif(IS_WIN)

################################################################################
# Target:    tint_utils_file_test
# Kind:      test
################################################################################
tint_add_target(tint_utils_file_test test
  utils/file/tmpfile_test.cc
)

tint_target_add_dependencies(tint_utils_file_test test
  tint_utils_file
  tint_utils_text
)

tint_target_add_external_dependencies(tint_utils_file_test test
  "gtest"
)
