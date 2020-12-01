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

#include "src/ast/identifier_expression.h"

#include "src/ast/clone_context.h"
#include "src/ast/module.h"

namespace tint {
namespace ast {

IdentifierExpression::IdentifierExpression(const std::string& name)
    : Base(), name_(name) {}

IdentifierExpression::IdentifierExpression(const Source& source,
                                           const std::string& name)
    : Base(source), name_(name) {}

IdentifierExpression::IdentifierExpression(IdentifierExpression&&) = default;

IdentifierExpression::~IdentifierExpression() = default;

IdentifierExpression* IdentifierExpression::Clone(CloneContext* ctx) const {
  return ctx->mod->create<IdentifierExpression>(ctx->Clone(source()), name_);
}

bool IdentifierExpression::IsValid() const {
  return !name_.empty();
}

void IdentifierExpression::to_str(std::ostream& out, size_t indent) const {
  make_indent(out, indent);
  out << "Identifier[" << result_type_str() << "]{" << name_ << "}"
      << std::endl;
}

}  // namespace ast
}  // namespace tint
