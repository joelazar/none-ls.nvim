local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "mojo",
    meta = {
        url = "https://www.modular.com/mojo",
        description = "Mojo's default formatter",
    },
    method = FORMATTING,
    filetypes = { "mojo" },
    generator_opts = {
        command = "mojo",
        args = { "format", "$FILENAME", "--quiet" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
