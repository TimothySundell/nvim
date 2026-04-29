-- Load semlarn.settings first(!) as this contains stuff that needs to be loaded before semlarn.plugins.
require("semlarn.settings")
require("semlarn.keymaps")
require("semlarn.plugins")

-- Warn if node is missing on PATH
if vim.fn.executable("node") == 0 then
    vim.schedule(function()
        vim.notify(
            "node not found in PATH. Some LSP servers may fail to install. On Mac, run 'brew install node' to fix",
            vim.log.levels.WARN
        )
    end)
end
