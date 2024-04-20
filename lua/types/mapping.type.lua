---@meta

---@class mapping.options
---@field desc string? Description of the mapping
---@field buffer integer|boolean? Create buffer-local mapping, `0` or `true` for current buffer
---@field silent boolean? Make the mapping which will not be echoed on the command line
---@field nowait boolean? Do not wait for other, longer mappings
---@field remap boolean? Make the mapping recursive
---@field callback function? Lua function to be called when the mapping is executed
---@field script boolean? Define a new mapping or abbreviation, the mapping will only remap characters in the {rhs} using mappings that were defined local to a script, starting with "<SID>"
---@field unique boolean? Define a new mapping or abbreviation, the command will fail if the mapping or abbreviation already exists
---@field expr boolean? Define a new mapping or abbreviation, the argument is an expression. The expression is evaluated to obtain the {rhs} that is used
---@field replace_keycodes boolean? When "expr" is true, replace keycodes in the resulting string (see nvim_replace_termcodes()). Returning nil from the Lua "callback" is equivalent to returning an empty string

---@class mapping.configs
---@field [1] string Left-hand size of the mapping
---@field [2] string|function Right-hand size of the mapping
---@field [3] string? Description of the mapping
---@field buffer integer|boolean? Create buffer-local mapping, `0` or `true` for current buffer
---@field silent boolean? Make the mapping which will not be echoed on the command line
---@field nowait boolean? Do not wait for other, longer mappings
---@field remap boolean? Make the mapping recursive
---@field callback function? Lua function to be called when the mapping is executed
---@field script boolean? Define a new mapping or abbreviation, the mapping will only remap characters in the {rhs} using mappings that were defined local to a script, starting with "<SID>"
---@field unique boolean? Define a new mapping or abbreviation, the command will fail if the mapping or abbreviation already exists
---@field expr boolean? Define a new mapping or abbreviation, the argument is an expression. The expression is evaluated to obtain the {rhs} that is used
---@field replace_keycodes boolean? When "expr" is true, replace keycodes in the resulting string (see nvim_replace_termcodes()). Returning nil from the Lua "callback" is equivalent to returning an empty string
