-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("telescope").load_extension("file_browser")
require("telescope").setup({
    extensions = {
        file_browser = {
            hijack_netrw = true,
        },
    },
})
require("render-markdown").enable()
vim.cmd("colorscheme kanagawa-dragon")

-- vim.api.nvim_create_autocmd("LspAttach", {
--     group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
--     callback = function(args)
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--         if client == nil then
--             return
--         end
--         if client.name == "ruff" then
--             -- Disable hover in favor of Pyright
--             client.server_capabilities.hoverProvider = false
--         end
--     end,
--     desc = "LSP: Disable hover capability from Ruff",
-- })
