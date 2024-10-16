; Keywords
[
  "begin"
  "end"
  (module_keyword)
  "endmodule"
  "program"
  "endprogram"
  "package"
  "endpackage"
  "checker"
  "endchecker"
  "pure"
  "virtual"
  "extends"
  "implements"
  "super"
  (class_item_qualifier)
  "parameter"
  "localparam"
  "defparam"
  "assign"
  "modport"
  "fork"
  "join"
  "join_none"
  "join_any"
  "default"
  "break"
  "assert"
  "tagged"
  "extern"
  (unique_priority)
] @keyword

[
  "class"
  "endclass"
  "interface"
  "endinterface"
  "enum"
  "struct"
  "union"
  "typedef"
] @keyword.type

[
  "function"
  "endfunction"
  "task"
  "endtask"
] @keyword.function

"return" @keyword.return

[
  (always_keyword)
  "generate"
  "for"
  "foreach"
  "repeat"
  "forever"
  "initial"
  "while"
] @keyword.repeat

[
  "if"
  "else"
  (case_keyword)
  "endcase"
] @keyword.conditional

(comment) @comment @spell

(include_compiler_directive) @constant.macro

(package_import_declaration
  "import" @keyword.import)

(package_import_declaration
  (package_import_item
    (package_identifier
      (simple_identifier) @constant)))

(text_macro_identifier
  (simple_identifier) @constant.macro)

(package_scope
  (package_identifier
    (simple_identifier) @constant))

(package_declaration
  (package_identifier
    (simple_identifier) @constant))

[
  "="
  "-"
  "+"
  "/"
  "*"
  "^"
  "&"
  "|"
  "&&"
  "||"
  "<="
  "@"
  "@*"
  "=="
  "!="
  "==="
  "!=="
  "-:"
  "<"
  ">"
  ">="
  "%"
  ">>"
  "<<"
  "|="
  (unary_operator)
  (inc_or_dec_operator)
  "#"
] @operator

(parameter_port_list
  "#" @constructor)

[
  "or"
  "and"
] @keyword.operator

(cast
  [
    "'"
    "("
    ")"
  ] @operator)

(edge_identifier) @attribute

(port_direction) @keyword.modifier

(port_identifier
  (simple_identifier) @variable)

[
  (net_type)
  (integer_vector_type)
  (integer_atom_type)
] @type.builtin

[
  "signed"
  "unsigned"
  "input"
  "output"
] @keyword.modifier

(data_type
  (simple_identifier) @type)

(method_call_body
  (method_identifier) @variable.member)

(interface_identifier
  (simple_identifier) @type)

(modport_identifier
  (modport_identifier
    (simple_identifier) @variable.member))

(net_port_type1
  (simple_identifier) @type)

[
  (double_quoted_string)
  (string_literal)
] @string

[
  (default_nettype_compiler_directive)
  (timescale_compiler_directive)
] @keyword.directive

(include_compiler_directive) @keyword.import

; begin/end label
(seq_block
  (simple_identifier) @comment)

[
  ";"
  "::"
  ":"
  ","
  "."
] @punctuation.delimiter

(conditional_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

(default_nettype_compiler_directive
  (default_nettype_value) @string)

(text_macro_identifier
  (simple_identifier) @constant)

(module_declaration
  (module_header
    (simple_identifier) @constructor))

(class_constructor_declaration
  "new" @constructor)

(parameter_identifier
  (simple_identifier) @variable.parameter)

[
  (integral_number)
  (unsigned_number)
  (unbased_unsized_literal)
] @number

(time_unit) @type.builtin

(checker_instantiation
  (checker_identifier
    (simple_identifier) @constructor))

(module_instantiation
  (simple_identifier) @constructor)

(name_of_instance
  (instance_identifier
    (simple_identifier) @variable))

(interface_port_declaration
  (interface_identifier
    (simple_identifier) @type))

(net_declaration
  (simple_identifier) @type)

(lifetime) @keyword.modifier

(function_identifier
  (function_identifier
    (simple_identifier) @function))

(function_subroutine_call
  (subroutine_call
    (tf_call
      (simple_identifier) @function)))

(function_subroutine_call
  (subroutine_call
    (system_tf_call
      (system_tf_identifier) @function.builtin)))

(task_identifier
  (task_identifier
    (simple_identifier) @function.method))

;TODO: fixme
;(assignment_pattern_expression
;(assignment_pattern
;(parameter_identifier) @variable.member))
(type_declaration
  (data_type
    "packed" @keyword.modifier))

(enum_name_declaration
  (enum_identifier
    (simple_identifier) @constant))

(type_declaration
  (simple_identifier) @type)

[
  (integer_atom_type)
  (non_integer_type)
  "genvar"
] @type.builtin

(struct_union_member
  (list_of_variable_decl_assignments
    (variable_decl_assignment
      (simple_identifier) @variable.member)))

(member_identifier
  (simple_identifier) @variable.member)

(struct_union_member
  (data_type_or_void
    (data_type
      (simple_identifier) @type)))

(type_declaration
  (simple_identifier) @type)

(generate_block_identifier) @comment

[
  "["
  "]"
  "("
  ")"
  "{"
  "}"
  "'{"
] @punctuation.bracket
