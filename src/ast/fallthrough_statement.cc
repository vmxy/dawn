// Copyright 2020 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/ast/fallthrough_statement.h"

#include "src/ast/clone_context.h"
#include "src/ast/module.h"

namespace tint {
namespace ast {

FallthroughStatement::FallthroughStatement() : Base() {}

FallthroughStatement::FallthroughStatement(const Source& source)
    : Base(source) {}

FallthroughStatement::FallthroughStatement(FallthroughStatement&&) = default;

FallthroughStatement::~FallthroughStatement() = default;

FallthroughStatement* FallthroughStatement::Clone(CloneContext* ctx) const {
  return ctx->mod->create<FallthroughStatement>(ctx->Clone(source()));
}

bool FallthroughStatement::IsValid() const {
  return true;
}

void FallthroughStatement::to_str(std::ostream& out, size_t indent) const {
  make_indent(out, indent);
  out << "Fallthrough{}" << std::endl;
}

}  // namespace ast
}  // namespace tint
