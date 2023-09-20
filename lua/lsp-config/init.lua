local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end


require "lsp-config.mason"
require("lsp-config.handlers").setup()
-- require "lsp-config.null-ls"

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['powershell_es'].setup{
	bundle_path = vim.fn.stdpath("data").."/mason/packages/powershell-editor-services/",
    capabilities = capabilities
}

-- require'lspconfig'.lua_ls.setup {
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = {'vim'},
--       },
--     },
--   },
-- }

require('lspconfig').yamlls.setup{
    
    capabilities = capabilities,
    settings = { 
        yaml = { 
            schemas = {
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.0/all.json"] = "*.yaml",
                -- ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
                -- ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
                -- ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
                -- ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
                -- ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
                -- ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
                -- ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
                -- ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
                ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
                -- ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
            }
        }
    }
}

