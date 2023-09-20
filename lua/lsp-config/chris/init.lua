local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local lspconfig = require('lspconfig')
local on_attach = function(client)
    require('completion').on_attach(client)
end
lspconfig.pwsh.setup({
    on_attach = on_attach
})

}

require "lsp-config.mason"
require("lsp-config.handlers").setup()
require "lsp-config.null-ls"

