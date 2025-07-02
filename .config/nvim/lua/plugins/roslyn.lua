return {
  "seblyng/roslyn.nvim",
  ft = "cs",
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    -- your configuration comes here; leave empty for default settings
  },
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.roslyn.setup({
      settings = {
        ["csharp|inlay_hints"] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = true,
          csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = true,
        },
      },
    })
  end,
}
